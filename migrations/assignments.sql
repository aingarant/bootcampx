CREATE TABLE
    assignments (
        id INT NOT NULL PRIMARY KEY,
        name TEXT,
        content TEXT,
        day INT,
        chapter INT,
        duration INT
    );

CREATE TABLE
    assignment_submissions (
        id INT NOT NULL PRIMARY KEY,
        student_id INT REFERENCES students(id),
        assignment_id INT REFERENCES assignments (id),
        duration INT,
        submission_date DATE
    );