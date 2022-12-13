CREATE TABLE
    teachers(
        id INT NOT NULL PRIMARY KEY,
        name TEXT,
        start_date DATE,
        end_date DATE,
        is_active BOOLEAN
    );

CREATE TABLE
    assistance_requestS (
        id INT PRIMARY KEY NOT NULL,
        assignment_id INT REFERENCES assignments(id),
        student_id INT REFERENCES students(id),
        teacher_id INT REFERENCES teachers(id),
        created_at TIMESTAMP,
        started_at TIMESTAMP,
        completed_at TIMESTAMP,
        student_feedback TEXT,
        teacher_feedback TEXT
    );