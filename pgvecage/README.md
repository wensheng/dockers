# pgvecage

Docker image for Postgresql server with 
[pgvector](https://github.com/pgvector/pgvector) & [pgvectorscale](https://github.com/timescale/pgvectorscale)
[Apache AGE](https://age.apache.org/)

To use:

    docker run -d --name pg17 -e POSTGRES_PASSWORD=password -p 5434:5432 wensheng/pgvecage

Replace pg17 and 5434 with your own name and port.

Connect to the database:

    psql postgresql://postgres:password@localhost:5434/postgres

To enable these extensions:

    create extension if not exists vector;
    create extension if not exists vectorscale;
    create extension if not exists age;
    select * from pg_available_extensions;

[Docker Hub](https://hub.docker.com/r/wensheng/pgvecage)

