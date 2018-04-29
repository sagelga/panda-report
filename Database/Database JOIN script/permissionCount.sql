SELECT *,
permissions,
count(permissions)
FROM role

GROUP BY role.permissions