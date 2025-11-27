## Verify pgvector AGE docker

    docker stop test
    docker rm test 
    docker run -d --name test -e POSTGRES_PASSWORD=password -p 6432:5432 pg17
    psql postgresql://postgres:password@localhost:6432/postgres < test.sql
