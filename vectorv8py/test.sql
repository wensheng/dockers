-- enable plpython3u, plv8, and vector extensions
create extension if not exists plpython3u;
create extension if not exists plv8;
create extension if not exists vector;

-- capitalize first letter of each word
CREATE FUNCTION pycap(x text)
  RETURNS text
AS $$
  return ' '.join([a.capitalize() for a in x.split()])
$$ LANGUAGE plpython3u;

-- capitalize first letter of each word
CREATE FUNCTION jscap(x text)
  RETURNS text
AS $$
  if (!x.trim()) return '';
  return x.split(/\s+/).map((a) => a[0].toUpperCase() + a.slice(1)).join(' ');
$$ LANGUAGE plv8 IMMUTABLE STRICT;
