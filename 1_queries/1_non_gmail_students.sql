SELECT id, name, email, cohort_id
FROM students
WHERE email NOT LIKE '%gmail%'
AND phone is NULL;