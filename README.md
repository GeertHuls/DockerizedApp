# DockerizedApp

## Development Usage

Run the app in development:
> docker-compose up

This will spin up both the client and api in development listening on:
- client: http://localhost:4200
- api: http://localhost:5000/api/values

Changes made on the client will auto-refresh the browser. Changes made to the api will need a container restart.
