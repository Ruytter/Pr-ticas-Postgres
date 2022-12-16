SELECT users.name AS writer, COUNT("writerId")  AS testimonialCount
FROM testimonials
jOIN users ON testimonials."writerId" = users.id
WHERE "writerId" = 435
GROUP BY users.id;