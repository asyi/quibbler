# QUIBBLER README

Quibbler is a digital bookshelf. Keep a log of the books you own, would like to own, are currently reading, and have already read!

## How to run it
```docker-compose build``` will build the app.
```docker-compose up``` will run the app.
```docker-compose exec --user $(id -u):$(id -g) app /bin/bash``` will let you get you do whatever you need to do in the bash once your docker container is up and running.
If you run into ownership problems, run ```docke
r exec -u root -t -i <CONTAINERID> /bin/bash```

### What comes with it?
* Automated database seeding thanks to the Faker gem
Run ```rake db:seed``` from the container bash

* Hot reloading

* Oauth
https://auth0.com/

* Emails via MJML... preview one at:
http://localhost:3000/rails/mailers/user_mailer/new_book_email.html?locale=en

* CI via Travis
https://travis-ci.org/asyi/quibbler