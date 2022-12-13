SELECT
    count(students.*) as total_students, cohorts.name AS cohort_name
FROM cohorts
    JOIN students ON cohorts.id = cohort_id
GROUP BY cohort_name
HAVING count(students.*) >= 18
ORDER BY total_students;