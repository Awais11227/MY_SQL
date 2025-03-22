-- Having Clause, General order ,Update , DELETE 
-- By  Awais  Manzoor | Data Analyst 

-- SQL Query General  Order:
-- SELECT column_name(s) 
-- FROM table_name 
-- WHERE condition 
-- GROUP BY column_name(s) 
-- HAVING condition 
-- ORDER BY column_name(s) ASC|DESC;

-- Create the College database
CREATE DATABASE CollegeDB;
USE CollegeDB;

-- Create the Student table
CREATE TABLE Student (
    RollNo INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    City VARCHAR(50) NOT NULL,
    marks INT NOT NULL
);

-- Insert sample
INSERT INTO Student (RollNo, Name, City,marks) VALUES
(1, 'Muhammad Ali', 'Karachi',90),
(2, 'Ayesha Khan', 'Lahore',80),
(3, 'Omar Farooq', 'Islamabad',70),
(4, 'Fatima Zahra', 'Rawalpindi',60),
(5, 'Hassan Raza', 'Faisalabad',90),
(6, 'Zainab Bibi', 'Multan',77),
(7, 'Abdullah Ahmed', 'Peshawar',99),
(8, 'Maryam Noor', 'Quetta',90),
(9, 'Bilal Hussain', 'Hyderabad',87),
(10, 'Sami Ullah', 'Sialkot',98);

SELECT city , count(RollNo)
FROM Student
GROUP BY city
HAVING MAX(marks) > 90;

SELECT City
FROM Student
WHERE RollNo = 1
ORDER BY City DESC;


SELECT city
FROM Student 
WHERE RollNo = 10
GROUP BY city
HAVING MAX(marks) >= 90
ORDER BY city DESC;


-- safe mode off
SET SQL_SAFE_UPDATES = 0;

-- if you want on it 
SET SQL_SAFE_UPDATES = 1;


-- update it 
UPDATE Student 
SET marks = 100
WHERE marks = 90;

-- check 
SELECT * FROM Student;


UPDATE  Student 
SET marks = marks - 1;

-- DELETE 
DELETE FROM Student 
WHERE RollNo = 1;



