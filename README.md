# QUIBBLER README

Quibbler is a digital bookshelf. Keep a log of the books you own, would like to own, are currently reading, and have already read!

## How to run it
* ```docker-compose build``` will build the app.
* ```docker-compose up``` will run the app.
* ```docker-compose exec --user $(id -u):$(id -g) app /bin/bash``` will let you do whatever you need to do in the bash once your docker container is up and running.
* NB: If you run into ownership problems, run ```docker exec -u root -t -i <CONTAINERID> /bin/bash```

### What comes with it?
* Automated database seeding thanks to the Faker gem. Run ```rake db:seed``` from the container's bash before you check out the app locally via http://localhost:3000

* Hot reloading - useful for developing

* Oauth
https://auth0.com/

* Emails via MJML... to preview one, simply login, add a new book and visit:
http://localhost:3000/rails/mailers/user_mailer/new_book_email.html?locale=en

* CI via Travis
https://travis-ci.org/asyi/quibbler

* Deployment via Kubernetes (WIP 🤷‍♀️)... see it try to (but note quite) connect to Postgres here:
http://35.227.53.153:3000/

* Bonus: beautiful designs in progress!