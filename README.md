# FootballApi

## Setup
Run `docker build -t phoenix .`
Run `docker swarm init` to initialize a docker swarm
Run `docker stack deploy --compose-file=docker-compose.yml app` to deploy the app to the swarm
Access API on `127.0.0.1/api/v1/`

## HTTP API
All routes has prefix `/api/v1`

Fetch available season and division pairs 
GET `/results`

Fetch the results for a specific league and division pair
GET `/results/<season>/<div>` e.g. `/results/201617/SP1`

## Possible code improvements
* Seed data from csv to a DB and fetch results from DB instead of parsing the CSV file every request
* Use model when fetching from DB
* Integrate a logging container with docker and log to it from the API
* Unit-tests