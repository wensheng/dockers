CREATE FUNCTION capitalize(x text)
  RETURNS text
AS $$
  return ' '.join([a.capitalize() for a in x.split()])
$$ LANGUAGE plpython3u;
