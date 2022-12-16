SELECT  schools.name AS school, courses.name AS course, COUNT("status") AS studentsCount
FROM educations
jOIN schools ON educations."schoolId" = schools.id
jOIN courses ON educations."courseId" = courses.id
jOIN users ON educations."userId" = users.id
WHERE educations.status = 'ongoing' OR educations.status = 'finished'
GROUP BY schools.id, courses.id, users.id
ORDER BY studentsCount DESC LIMIT 3;