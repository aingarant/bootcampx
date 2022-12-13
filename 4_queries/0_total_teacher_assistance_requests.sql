-- Active: 1670863685890@@127.0.0.1@5432@bootcampx

SELECT
    COUNT(assistance_requests.*) AS total_assistances,
    teachers.name as name
FROM assistance_requests
    JOIN teachers ON teacher_id = teachers.id
WHERE
    teachers.name = 'Waylon Boehm'
GROUP BY teachers.name