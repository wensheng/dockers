# Postgres docker with plv8 (and pglogical)

[Docker Hub](https://hub.docker.com/r/wensheng/plv8)

plv8 versions available:

1. v3.1.5 (latest)
1. v3.0.0
1. v2.3.15

v3.0.0 and v2.3.15 are provided because they are the same versions as AWS RDS for PostgreSQL and Aurora PostgreSQL 14. see [doc](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraPostgreSQLReleaseNotes/AuroraPostgreSQL.Extensions.html)

pglogical is included to provide streaming replication.  Pglogical extension is availabe in AWS RDS PostgreSQL.

## Run plv8 container

To set up a Postgres with plv8 container:

    docker run --name container_name -e POSTGRES_PASSWORD=password -p 5432:5432 -d wensheng/plv8
    # or
    docker run --name container_name -e POSTGRES_PASSWORD=password -p 5432:5432 -d wensheng/plv8:14-3.0.0
    # or
    docker run --name container_name -e POSTGRES_PASSWORD=password -p 5432:5432 -d wensheng/plv8:14-2.3.15

## Use plv8

Use psql:

    psql -U postgres -h localhost                                                                        [master✗]  [04:57:10]
    # enter your password
    postgres=# create extension plv8;
    CREATE EXTENSION
    postgres=# DO $$ plv8.elog(NOTICE, `Hello world from plv8 ${plv8.version}!`); $$ LANGUAGE plv8;
    NOTICE:  Hello world from plv8 3.1.5!
    DO
    postgres=#

## Customize

Clone this, modify one of docker files, i.e. Dockerfile.plv8.v3.0.0, then build your own image:

    docker build -t mytag -f Dockerfile.plv8.v3.0.0 .

