# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

Ruby 3.0.3

* System dependencies

* Configuration

* Database creation and initialization
# Linux
Para que o banco de dados MongoDB rode normalmente em sua máquina, recomendo que use o docker.
Para instalar o docker em sua máquina siga a documentação oficial: documentation

Feito isso, siga com o seguinte comando em seu terminal:

# Caso não tenha a imagem mongo:latest em seu docker, ele irá baixar a imagem do DockerHub.
$ sudo docker run --name mongo_db -p 27017:27017 -d mongo:latest

* How to run the application

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
