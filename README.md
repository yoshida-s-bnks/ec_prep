# README

# ec_prep

Setup Steps
1. `docker-compose build`
  build project. download images, etc.
2. `docker-compose run web rake db:create`
  create database
3. `docker-compose run web rake db:migrate`
  databse migration
4. `docker-compose up`
  bring up database server and web server
