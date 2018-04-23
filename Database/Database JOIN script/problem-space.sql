SELECT
  title,
  body AS topic,
  s.full_name AS "room name", s.category
FROM problem

LEFT JOIN space s
  ON problem.space_id = s.id