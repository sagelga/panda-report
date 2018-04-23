SELECT
  full_english_name AS "Faculty Name", 
  count(full_english_name) AS "User(s) in faculty"
FROM member

JOIN member_role m2
ON member.id = m2.member_id

JOIN role r
ON m2.role_id = r.id

JOIN department d
ON r.department_id = d.id

GROUP BY full_english_name