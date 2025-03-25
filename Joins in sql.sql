
-- Joins in SQL 
-- Awais Manzoor || Data Analys

-- Joins are used to combine rows from two or more tables based on a related column.

-- 1. INNER JOIN: Returns only the matching rows from both tables.
-- 2. LEFT JOIN: Returns all rows from the left table and matching rows from the right table.
-- 3. RIGHT JOIN: Returns all rows from the right table and matching rows from the left table.
-- 4. FULL JOIN: Returns all rows when there is a match in either table.
-- 5. CROSS JOIN: Returns the Cartesian product of both tables.

-- Creating the database
CREATE DATABASE School;
USE School;


CREATE TABLE student (
    student_id INT PRIMARY KEY,
    name VARCHAR(50)
);


INSERT INTO student (student_id, name) VALUES
(101, 'adam'),
(102, 'bob'),
(103, 'casey');


CREATE TABLE course (
    student_id INT,
    course VARCHAR(50)
);


INSERT INTO course (student_id, course) VALUES
(102, 'english'),
(105, 'math'),
(103, 'science'),
(107, 'computer science');

-- INNER JOIN example
SELECT *
FROM student
INNER JOIN course
ON student.student_id = course.student_id;

-- also write 
SELECT *
FROM student as s
INNER JOIN course as c
ON s.student_id = c.student_id;

-- left join 
SELECT *
FROM student as s
LEFT JOIN course as c
ON s.student_id = c.student_id;

-- Right join
SELECT *
FROM student as s
RIGHT JOIN course as c
ON s.student_id = c.student_id;

-- Full join
SELECT *
FROM student as s
LEFT JOIN course as c
ON s.student_id = c.student_id
UNION
SELECT *
FROM student as s
RIGHT JOIN course as c
ON s.student_id = c.student_id;

-- left exclusive join
SELECT *
FROM student as s
LEFT JOIN course as c
ON s.student_id = c.student_id
WHERE c.student_id IS NULL;

-- right exclusive join
SELECT *
FROM student as s
RIGHT JOIN course as c
ON s.student_id = c.student_id
WHERE s.student_id IS NULL;