# A start docker with Rails app using Postgres and PgAdmin4

- Ruby 3.2.2 
- Rails 7.0.5
- Postgres-14
- PgAdmin4

## Clone this
Open your app directory in terminal

Clone this repositore in your directory

```$ git clone https://github.com/igorcb/docker-compose-rails-7-postgres.git .```

## Build Dockerfile
```$ docker-compose build```

## Create rails app
```$ docker-compose run web rails new . --force --database=postgresql```


## Configure your database
Fisrt give write permition all application

```$ sudo chown -R $USER:$USER .```

Now update the database config/database.yml

```
default: &default
  adapter: postgresql
  encoding: unicode
  host: postgres
  username: postgres
  password: mypassword
```

## Create the databases
*first off your application*

```$ docker-compose down```

```$ docker-compose run web rails db:create```

## Up your application
```$ docker-compose up -d```

and view in your browser in http://localhost:3000/

