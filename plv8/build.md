# Build

Build steps:

    docker build -t p3.1.5 -f Dockerfile.plv8.latest
    docker stop pg
    docker rm pg
    docker run --name pg -e POSTGRES_PASSWORD=password -p 5434:5432 -d p3.1.5
    psql -U postgres -p 5434 -h localhost
    #create extension plv8;
    #create extension pglogical;
    #select * from pg_extension;

Tag and push:

    docker image ls
    docker tag image_id wensheng/plv8:latest
    docker push wensheng/plv8:latest

Test pulling:

    docker system prune --all
    docker pull wensheng/plv8
    docker stop pg
    docker rm pg
    docker run --name pg -e POSTGRES_PASSWORD=password -p 5434:5432 -d wensheng/plv8
    docker run --name pg -e POSTGRES_PASSWORD=password -p 5434:5432 -d wensheng/plv8:14-2.3.15
