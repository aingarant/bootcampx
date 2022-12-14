SELECT
    assignments.id as id,
    assignments.day as day,
    assignments.chapter as chapter,
    count(assistance_requests.*) AS total_requests
FROM assistance_requests
    JOIN assignments ON assignment_id = assignments.id
GROUP BY assignments.id
ORDER BY total_requests DESC