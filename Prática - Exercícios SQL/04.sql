SELECT MAX(salary) AS maximumSalary, roles.name AS "role"
FROM jobs
jOIN roles ON jobs."roleId" = roles.id
WHERE jobs.active = true
GROUP BY roles.id
ORDER BY maximumSalary ASC;