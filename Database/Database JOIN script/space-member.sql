SELECT
  body AS topic,
  dates, period AS "time period",
  status,
  full_name AS "room Name",
  concat(first_name,' ', last_name) AS "full Name"
FROM request

JOIN space
  ON request.space_id = space.id

JOIN member m2
  ON request.client_id = m2.id