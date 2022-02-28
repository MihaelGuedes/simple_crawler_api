<h1 align="center">
  Simple Crawler API REST
</h1>

<h3 align="center">
  A simple Crawler API that makes requests to a website to scrape quotes from famous people.
</h3>

<p align="center">
  <a href="#-about-the-project">About the project</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#-technologies">Technologies</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#-getting-started">Getting started</a>
</p>


## 💼 About the project

<p>
  This is a simple application made for a stage selection process in the company Inovamind, and follows the REST standard for structuring the project.

  To understand the API access the [DOC.](https://docs.google.com/document/d/1_jO-IsHB3OvX3H3Fgsla7PBchohmfTwAoVkLMFhWib4/edit?usp=sharing)
</p>

## 🛸 Technologies

Technologies that I used to develop this api

- [Ruby](https://www.ruby-lang.org/pt/)
- [Rails](https://rubyonrails.org/)
- [Devise Token Auth](https://github.com/lynndylanhurley/devise_token_auth)
- [Mongodb](https://docs.mongodb.com/mongoid/current/)
- [Rspec](https://rspec.info/)
- [Postman](https://www.postman.com/)


## 💻 Getting started

### Requirements

- [Ruby](https://www.ruby-lang.org/pt/)
- [Gem Rails](https://rubyonrails.org/)
- [Gem Bundler](https://bundler.io/)
- [Docker](https://docs.docker.com/engine/install/ubuntu/)
- [Postman](https://www.postman.com/)

**Clone the project and access the folder**

```bash
$ git clone https://github.com/MihaelGuedes/field_collection.git && cd field_collection
```

**Up the database container**
```bash
docker run --name mongo_database -p 27017:27017 -d mongo:latest
```

**Run the gems installation**
```bash
bundle install
```

**Run the API**
```bash
rails s
```

**Checking tests(optinal)**
```bash
$ bundle exec rspec
```

----------------------------------------------------------------------------------

Feito com 💙 por Mihael Guedes 👋 [Acesse meu linkedin](https://www.linkedin.com/in/mihael-guedes-9470b11ba/)