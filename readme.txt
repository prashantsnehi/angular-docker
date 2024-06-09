# docker build command
docker build -f Dockerfile.dev -t psnehi/angular-docker:v2 . 

# login to docker repository
docker login --username <username> --password <password>

# docker push to repository
docker push psnehi/angular-docker:v2


# run docker file with local volume of app folder
docker run -d -v /app/node_modules -v $(pwd):/app -p 4200:4200 --name angular-app psnehi/angular-docker:v2