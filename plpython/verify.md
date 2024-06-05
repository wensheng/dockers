## Verify plpython3u docker

    docker build -t pg16-py3 .  
    docker stop test
    docker rm test 
    docker run -d --name test -e POSTGRES_PASSWORD=password -p 6432:5432 pg16-py3
    psql postgresql://postgres:password@localhost:6432/postgres -c "create extension if not exists plpython3u;"
    psql postgresql://postgres:password@localhost:6432/postgres < testpy.sql
    psql postgresql://postgres:password@localhost:6432/postgres -c "select capitalize('hello world');"
