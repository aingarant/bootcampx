CREATE TABLE
    students (
        id INT NOT NULL PRIMARY KEY,
        cohort_id INT REFERENCES cohorts(id),
        name TEXT,
        email TEXT,
        phone TEXT,
        github VARCHAR,
        start_date DATE,
        end_date DATE
    );

    INSERT INTO
    students (
        id,
        name,
        email,
        phone,
        github,
        start_date,
        end_date,
        cohort_id
    )