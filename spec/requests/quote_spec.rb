require 'rails_helper'

RSpec.describe "Quotes", type: :request do
  let(:user) { create :user }
  let(:valid_tag) { "love" }
  let(:invalid_tag) { "lorem" }
  let(:valid_headers) { user.create_new_auth_token }

  describe "GET /index" do
    it 'a successful response' do
      get "/quotes/#{valid_tag}", headers: valid_headers, as: :json
      
      expect(response).to be_successful
      expect(response).to have_http_status(:ok)
    end

    it 'user not logged in' do
      get "/quotes/#{valid_tag}", headers: {}, as: :json
      
      expect(response).to_not be_successful
      expect(response).to have_http_status(:unauthorized)
    end

    it 'request with tag that cannot be found' do
      get "/quotes/#{invalid_tag}", headers: valid_headers, as: :json

      expect(response).to_not be_successful
      expect(response).to have_http_status(:not_found)
      expect(response.parsed_body).to eq({ "message" => "No quotes found!"})
    end

    it 'valid quotes keys' do
      get "/quotes/#{valid_tag}", headers: valid_headers, as: :json
      json_response = response.parsed_body

      json_response["quotes"].each do |quote|
        expect(quote.keys).to eql(%w[author
                                     author_about
                                     quote
                                     tags])
      end
    end

    it 'valid quotes values' do
      get "/quotes/#{valid_tag}", headers: valid_headers, as: :json
      json_response = response.parsed_body
      quote = json_response["quotes"].first
      
      expect(quote["quote"].class).to eq(String)
      expect(quote["author"].class).to eq(String)
      expect(quote["author_about"].class).to eq(String)
      expect(quote["tags"].class).to eq(Array)
    end
  end
end
