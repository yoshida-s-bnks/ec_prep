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



# mysql
mysql -u root -p -h localhost -P 3306 --protocol=tcp



## 課題
- ユーザー退会時にaddressを全て消す
- validates phone_numがうまくいかない
- ログインユーザー以外のアドレスを変更出来ないようにする
- 都道府県のリスト表示
