# QUIBBLER README

Quibbler is a digital bookshelf. Keep a log of the books you own, would like to own, are currently reading, and have already read!

## How to run it
```docker-compose build``` will build the app.
```docker-compose up``` will run the app.

### What comes with it?
* Automated database seeding thanks to the Faker gem

* Hot reloading

* Oauth
https://auth0.com/

* Emails via MJML
http://localhost:3000/rails/mailers/user_mailer/new_book_email.html?locale=en

* CI via Travis
https://travis-ci.org/asyi/quibbler