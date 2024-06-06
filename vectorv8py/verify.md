## Verify plv8-plpython3u-pgvector docker

    docker stop test
    docker rm test 
    docker run -d --name test -e POSTGRES_PASSWORD=password -p 6432:5432 p15  # or p16, p17
    psql postgresql://postgres:password@localhost:6432/postgres < test.sql
    psql postgresql://postgres:password@localhost:6432/postgres -c "select pycap('hello world');"
    psql postgresql://postgres:password@localhost:6432/postgres -c "select jscap('hello world  again');"
