# Embarca tech test

### How to setup your local environment?

After cloning this repository, install gem bundle
```
bundle install
```

Now you can run the DB constructor commands
```
rails db:create
rails db:migrate
rails db:seed
```

Than you can start the server
```
rails server
```
---
### OR
---

Run the container mount
```
docker-compose build
docker-compose run web db:create
docker-compose run web db:migrate
docker-compose run web db:seed
```

After this the project should be running at https://127.0.0.1:3000/cities

> Developed by **Jonathan Hermam**