# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
* Assign/remove admin role to a user
- In the .env file assign to ADMIN_USER environment variable the  the id of the user you want to assign/remove the admin role. e.g ADMIN_USER = 1
- restart rails with "crlt+c"/"cmd+c" and "rails s"
- run the rake task "bundel exec rake set_admin" to assign the admin role or "rake remove_admin" to remove the admin role
