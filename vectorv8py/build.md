# Build

Build steps:

    docker system prune -a
    docker build -t pg15 -f Dockerfile-15 .
    docker build -t pg16 -f Dockerfile-16 .

Tag and push:

    docker image ls
    docker login
    docker tag pg16 wensheng/vectorv8py:latest
    docker push wensheng/vectorv8py:latest
    docker tag pg15 wensheng/vectorv8py:pg15
    docker push wensheng/vectorv8py:pg15

Test pulling:

    docker system prune --all
    docker run --name pg16 -e POSTGRES_PASSWORD=password -p 5434:5432 -d wensheng/vectorv8py
    docker run --name pg15 -e POSTGRES_PASSWORD=password -p 5434:5432 -d wensheng/vectorv8py:pg15
