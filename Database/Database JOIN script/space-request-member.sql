SELECT *
FROM request r

JOIN space s
ON r.space_id = s.id

JOIN member m
on r.client_id = m.id
