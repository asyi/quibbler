# QUIBBLER README

Quibbler is a digital bookshelf built using `Ruby 2.5.1` and `Rails 5.2.1`. It let you keep track of the books: you own; would like to own; are currently reading; and have already read!

## How to run it
* `docker-compose build` will build the app.
* `docker-compose up` will run the app. Check it out at http://localhost:3000
* `docker-compose exec --user $(id -u):$(id -g) app /bin/bash` will let you do whatever you need to do in the bash once your docker container is up and running. For instance, this is the place to run rake tasks.
* run `rake db seed` from the container's bash to seed the database with fake data
* NB: If you run into ownership problems, run ```docker exec -u root -t -i <CONTAINERID> /bin/bash```

### What comes with it?
* Automated database seeding thanks to the Faker gem
https://github.com/stympy/faker

* Hot reloading - useful for developing

* Auto-runs tests during build

* Oauth
https://auth0.com/

* Emails via MJML... to preview one, simply login, add a new book and visit:
http://localhost:3000/rails/mailers/user_mailer/new_book_email.html?locale=en

* CI via Travis
https://travis-ci.org/asyi/quibbler

* Deployment via Kubernetes (WIP 🤷‍♀️)... see it attempt to (but note quite) connect to Postgres here:
http://35.227.53.153:3000/

## Some major known issues:
* There's a bug in the log-out redirection (ie. doesn't redirect properly after log-out)
* While emails can be previewed, if you add a `deliver.now!` when calling the `new_book_email` method from the books controller, you will get the following error: "Errno::EADDRNOTAVAIL in BooksController#create. Cannot assign requested address - connect(2) for "localhost" port 25"
* The Kubernetes deployment can't connect to Postgres due to an auth problem: "fe_sendauth: no password supplied"
* The front-end is hideous

## How to build and share the container image
* `docker build -t rails-quibbler .` builds the image
* `docker tag rails-quibbler gcr.io/rails-quibbler/rails-quibbler:<VERSIONNUMBER>` tags the image version
* `docker push gcr.io/rails-quibbler/rails-quibbler:<VERSIONNUMBER>` pushes it to GCP's Container Registry