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

  To understand the API, access the [DOC.](https://docs.google.com/document/d/1_jO-IsHB3OvX3H3Fgsla7PBchohmfTwAoVkLMFhWib4/edit?usp=sharing)
</p>

## 🛸 Technologies

Technologies that I used to develop this api

- [Ruby](https://www.ruby-lang.org/pt/)
- [Rails](https://rubyonrails.org/)
- [Devise Token Auth](https://github.com/lynndylanhurley/devise_token_auth)
- [Mongodb](https://docs.mongodb.com/mongoid/current/)
- [Rspec](https://rspec.info/)
- [Postman](https://www.postman.com/)

<table>
  <tr>
    <td>Ruby version</td>
    <td>
      3.0.3
    </td>
  </tr>
  <tr>
    <td>Rails version</td>
    <td>
      7.0.2
    </td>
  </tr>
  <tr>
    <td>Database</td>
    <td>
      MongoDB
    </td>
  </tr>
</table>


## 💻 Getting started

### Requirements

- [Ruby](https://www.ruby-lang.org/pt/)
- [Gem Rails](https://rubyonrails.org/)
- [Gem Bundler](https://bundler.io/)
- [Docker](https://docs.docker.com/engine/install/ubuntu/)
- [Postman](https://www.postman.com/)

You can follow this tutorial for installing Ruby, RoR and Bundle (remember to use the similar versions as in the project).
- [How to intall Ruby on Rails with Rbenv on Ubuntu](https://www.digitalocean.com/community/tutorials/how-to-install-ruby-on-rails-with-rbenv-on-ubuntu-18-04-pt)

**Clone the project and access the folder**

```bash
git clone https://github.com/MihaelGuedes/simple_crawler_api.git && cd field_collection
```

**Up the database container with docker**
```bash
sudo docker run --name mongo_database -p 27017:27017 -d mongo:latest
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
bundle exec rspec
```


### Testing the API with Postman

**1. Open your posman, and import the file "collection_request_api.postman_collection.json" at the root of this project.**

![importação](https://user-images.githubusercontent.com/61971675/155938815-6d1dbaa0-51ab-45c9-b6f0-54646f1bb112.gif)

**2. Access /auth by passing in the body of the order email, password and password confirmation, so your user will be created.**

![auth](https://user-images.githubusercontent.com/61971675/155938905-32060cb1-a16f-4bfb-be69-7c20be5d3af8.gif)

**3. With email and password, login to the route /auth/sign_in, you will receive in the request header, your access_token, your client and uid (by default it is your email). Save this information.**

![sign_in](https://user-images.githubusercontent.com/61971675/155938959-bacdbc87-4f1d-44f8-9ac5-fd1bb288bd74.gif)

**4. To verify that your token is valid go to the Validate Token request, passing the credentials received in step 2.**

![validate](https://user-images.githubusercontent.com/61971675/155938985-c9a5ba3e-e65c-461f-a70f-34379ee7d272.gif)

**5. Finally, to access the tag search, which in this case is the main function of the API, go to the Quotes request, passing the credentials received in step 2, and finally put in the url of the request the tag you want to search. For example: "/quotes/love".**

![Quotes](https://user-images.githubusercontent.com/61971675/155939018-cad90762-70fc-4f09-9f0e-9786bf960ade.gif)

**6. If you wish to sign out at any point from your account, go to the Sign Out request, passing the credentials you received in step 2.(optional)**

![sign_out](https://user-images.githubusercontent.com/61971675/155939058-8b2b47d9-fe09-4de7-b072-60c58f0a785d.gif)

----------------------------------------------------------------------------------

Feito com 💙 por Mihael Guedes 👋 [Acesse meu linkedin](https://www.linkedin.com/in/mihael-guedes-9470b11ba/)