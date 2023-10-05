# Node-red with private Catalogue

This project was created to learn:

- how to use verdaccio as a custom catalogue in node-red.
- how to preload verdaccio with pre-defined configurations and plugins.
- how to preload node-red with pre-defined configurations and nodes.

## Services

````bash
verdaccio           : http://localhost:4873
catalogue-builder   : http://localhost:8080/catalogue.json
node-red            : http://localhost:1880
````

## Requirements

- Docker >= 24.0.6
- Docker Compose >= v2.22.0


## Run

````bash
docker-compose up
````