-- Active: 1670863685890@@127.0.0.1@5432@bootcampx
SELECT COUNT (assistance_requests.*) AS total_assistances, students.name as name
FROM assistance_requests 
JOIN students ON student_id = students.id
WHERE students.name = 'Elliot Dickinson'
GROUP BY students.name
