# pgvecage

Docker image for Postgresql server with 
[pgvector](https://github.com/pgvector/pgvector) & [pgvectorscale](https://github.com/timescale/pgvectorscale)
[Apache AGE](https://age.apache.org/)

To use:

    docker run --name pg17 -e POSTGRES_PASSWORD=password -p 5434:5432 -d wensheng/pgvecage

Replace pg17 and 5434 with your own name and port.

To enable these extensions:

    create extension if not exists vector;
    create extension if not exists vectorscale;
    create extension if not exists age;

[Docker Hub](https://hub.docker.com/r/wensheng/pgvecage)

