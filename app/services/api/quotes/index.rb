require 'nokogiri'
require 'open-uri'

class Api::Quotes::Index
  prepend SimpleCommand

  def initialize(tag)
    @url = 'https://quotes.toscrape.com'
    @tag = tag
  end

  private

  def call
    response_cached = query_db

    return scraper if response_cached&.empty? ||
                      response_cached&.blank?

    response_cached
  end

  def scraper
    page = Nokogiri::HTML(
      URI.open("#{@url}/tag/#{@tag}/")
    )

    posts = page.css('div.container div.row div.col-md-8')

    posts.search('div.quote').each do |quotes|
      quote = quotes.css('span.text').text.delete("“”")
      author = quotes.css('span').css('small.author').text
      author_about = "#{@url}#{(quotes.css('span a').map { |link| link['href'] })[0]}"
      tags = []
      
      quotes.css('div.tags').css('a').each do |tag|
        tags << tag.text
      end

      Quote&.find_or_create_by(quote: quote, author: author,
                               author_about: author_about, tags: tags)
    end

    query_db
  end

  def query_db
    Quote&.where(tags: @tag)
         &.as_json(only: [:quote, :author, :author_about, :tags])
  end
end
