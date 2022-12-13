SELECT
    cohorts.name as name,
    avg(completed_at - started_at) as average_assistance_time
FROM assistance_requests
    JOIN students ON students.id = student_id
    JOIN cohorts ON cohorts.id = students.cohort_id
group by cohorts.name
ORDER by
    average_assistance_time DESC
LIMIT 1