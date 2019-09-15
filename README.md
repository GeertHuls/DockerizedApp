# DockerizedApp

## Development Usage

Run the app in development:
> docker-compose up

This will spin up both the client and api in development listening on:
- client: http://localhost:4200
- api: http://localhost:5000/api/values

Changes made on the client will auto-refresh the browser. Changes made to the api will need a container restart.

## Production

Likewise use the dedicated docker compose file to spin up a production environment.
In order to produce the proper images, first use the docker compose files to build the app:
> docker-compose -f docker-compose.prod.yml -f docker-compose.prod-build.yml build

Afterwards to run the stack, use the following command:
> docker-compose -f docker-compose.prod.yml up

This will spin up the angular client, a dotnet core api and a nginx webserver used as the reversed proxy.

In addition, when the api needs multiple instances, use for example:
- docker-compose -f docker-compose.prod.yml up --scale dotnetcoreapi=2

This will spin up 2 api containers, automatically load balanced using its domain name: http://dotnetcoreapi. Docker will round robin every incoming request to each of the containers.

Both usages will end up with the following endpoints:
- http://localhost
- http://localhost/api/values

### Cleanup

To quickly cleanup the production environment, use:
> docker-compose -f docker-compose.prod.yml down
