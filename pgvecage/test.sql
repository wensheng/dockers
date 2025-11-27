-- enable plpython3u, plv8, and vector extensions
create extension if not exists vector;
create extension if not exists vectorscale;
create extension if not exists age;

load 'age';
SELECT ag_catalog.create_graph('new_graph');
SELECT * FROM ag_catalog.cypher('new_graph', $$ CREATE (:Person {name: 'Daedalus'})-[:FATHER_OF]->(:Person {name: 'Icarus'}) $$) AS (a ag_catalog.agtype);
SELECT * from ag_catalog.cypher('new_graph', $$ match (p:Person) where p.name starts with 'I' return (p.name) $$) as (v ag_catalog.agtype);
SELECT ag_catalog.drop_graph('new_graph', true);
