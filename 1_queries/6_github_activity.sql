SELECT name, id, cohort_id, end_date FROM students WHERE github IS NULL AND end_date IS NOT NULL;