CREATE TABLE
    students (
        id INT NOT NULL PRIMARY KEY,
        cohort_id INT REFERENCES cohorts(id),
        name TEXT,
        email TEXT,
        phone TEXT,
        github TEXT,
        start_date DATE,
        end_date DATE
    );

CREATE TABLE
    cohorts (
        id INT NOT NULL PRIMARY KEY,
        name TEXT,
        start_date DATE,
        end_date DATE,
    );