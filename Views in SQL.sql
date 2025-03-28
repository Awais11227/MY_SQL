-- Views in SQL 
-- Awais Manzoor || Data Analyst

-- A VIEW is a virtual table based on the result of a SELECT query.
-- It does not store data itself but retrieves data from underlying tables.
-- Useful for security, simplifying complex queries, and abstraction.


CREATE DATABASE SchoolDB;
USE SchoolDB;

CREATE TABLE student (
    rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT
);


INSERT INTO student (rollno, name, marks) VALUES
(101, 'anil', 78),
(102, 'bhumika', 93),
(103, 'chetan', 85),
(104, 'dhruv', 96),
(105, 'emanuel', 92),
(106, 'farah', 82);

-- Creating a View 
CREATE VIEW HighScorers AS
SELECT name, marks
FROM student
WHERE marks > (SELECT AVG(marks) FROM student);

-- Selecting data 
SELECT * FROM HighScorers;

-- Dropping the View if needed
DROP VIEW HighScorers;
