# Solution Explanation

Simple 3 tier application that displays first name and last names of authors from mysql database.

Frontend - ReactJS
Backend - NodeJS(Express)
Database - MySQL

## Task A

1. Dockerfile for frontend  -  client/Dockerfile
2. Dockerfile for backend - Dockerfile
3. Database - MySQL public image
4. To build and push docker images

```bash
$ docker login -u <user> -p <password>
$ docker build -t <user>/front-one:latest client/
$ docker push <user>/front-one:latest
$ docker build -t <user>/back-one:latest .
$ docker push <user>/back-one:latest
```
## Task B

1. Kubernetes configuration in `manifests.yaml` file.
2. Minikube - kubernetes orchestrator in local
3. To run

```bash
$ minikube start --service-cluster-ip-range 10.96.0.0/12
$ kubectl create namespace web-app
$ kubectl apply -f manifests.yaml -n web-app
```

4. To test

```bash
$ minikube tunnel
```

Get IP address of frontend-service service and access that in the browser to view the webapp.
