# React-App

A repo for practicing reactJS, nodeJS app development and containerazation.

## Steps to setup a new react project

1. `npm create vite@4.1.0` (Vite creates boiler plate react templates for setting up your project)
2. `npm i` (Initiallize VITE and download dependencies)

## Steps to build react project

1. `npm run dev` (runs local dev instance of app) `Navigate to` [localhost:5173](http://localhost:5173)
2. `npm run build` (builds package for production, no need to run this if deploying with container.)

## Steps to Build docker container

1. `docker-compose up -d` (Builds container stack , includes `npm run build` , serves in NGINX web server )
2. `Navigate to` [localhost:8081](http://localhost:8081)
