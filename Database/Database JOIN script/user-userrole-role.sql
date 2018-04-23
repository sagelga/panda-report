SELECT
username,
concat(first_name, ' ', last_name) AS "full name",
email,r.name AS "role name"
FROM member

JOIN member_role m2
ON member.id = m2.member_id

JOIN role r
ON m2.role_id = r.id

WHERE member.id IS NOT NULL;