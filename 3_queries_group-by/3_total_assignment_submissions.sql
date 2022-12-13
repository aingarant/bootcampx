-- Active: 1670863685890@@127.0.0.1@5432@bootcampx

-- SELECT

--     count(students.*) as total_students, cohorts.name AS cohort_name

-- FROM cohorts

--     JOIN students ON cohorts.id = cohort_id

-- GROUP BY cohort_name

-- HAVING count(students.*) >= 18

-- ORDER BY total_students;

SELECT
    cohorts.name AS cohort_name,
    COUNT(assignment_submissions.*) AS total_submissions
FROM assignment_submissions
    JOIN students ON students.id = assignment_submissions.student_id
    JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY cohort_name
ORDER BY total_submissions DESC