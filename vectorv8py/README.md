# vectorv8py

Docker image for Postgresql server with pgvector, PLv8, and PL/Python3 included.

To use:

    docker run --name pg16 -e POSTGRES_PASSWORD=password -p 5434:5432 -d wensheng/vectorv8py

Replace pg16 and 5434 with your own name and port.

To enable these extensions:

    create extension if not exists plpython3u;
    create extension if not exists plv8;
    create extension if not exists vector;

[Docker Hub](https://hub.docker.com/r/wensheng/vectorv8py)

