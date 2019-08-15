# DockerizedApp

## Development Usage

Build development image:
> docker build -f docker/ng-serve.dockerfile -t angular:serve .

Run app in development:
> docker run -v <yourpath\>\src\client:/home/app -p 4200:4200 -d angular:serve

Or better yet, use the docker compose file:
> docker-compose up

The dev environment will be ready at: http://localhost:4200.
