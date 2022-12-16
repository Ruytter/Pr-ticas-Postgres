SELECT  schools.name AS school, courses.name AS course, COUNT("courseId") AS studentsCount
FROM educations
jOIN schools ON educations."schoolId" = schools.id
jOIN courses ON educations."courseId" = courses.id
WHERE educations.status = 'ongoing' OR educations.status = 'finished'
GROUP BY schools.id, courses.id
ORDER BY studentsCount DESC LIMIT 3;

SELECT schools.name AS school, courses.name AS course, COUNT("courseId") AS studentsCount
FROM educations
jOIN courses ON educations."courseId" = courses.id
jOIN schools ON educations."schoolId" = schools.id
WHERE (educations.status = 'ongoing' 
OR educations.status = 'finished') 
AND educations."courseId" = courses.id
AND educations."schoolId" = schools.id
GROUP BY schools.id, courses.id
ORDER BY studentsCount DESC LIMIT 3;

-- Infelizmente não deu