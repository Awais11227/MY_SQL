-- ***********************************************************
--           Student Database with ALTER Commands
--           By Awais Manzoor (Data Analyst)
-- ***********************************************************

-- Create Database
CREATE DATABASE StudentDB;
USE StudentDB;

-- Create Student Table
CREATE TABLE Student (
    id INT PRIMARY KEY AUTO_INCREMENT,  
    name VARCHAR(100) NOT NULL,         
    age INT,                           
    city VARCHAR(100),                   
    enrollment_date DATE                
);

-- Insert
INSERT INTO Student (name, age, city, enrollment_date) VALUES
('Ali Khan', 20, 'Lahore', '2024-03-01'),
('Ayesha Noor', 22, 'Karachi', '2023-09-15'),
('Bilal Raza', 21, 'Islamabad', '2024-01-10'),
('Zainab Fatima', 19, 'Multan', '2024-02-20');

-- **************************
--  ALTER COMMANDS
-- **************************

-- Add a new column (Gender)
ALTER TABLE Student 
ADD COLUMN gender VARCHAR(10);

-- Modify the 'age' column 
ALTER TABLE Student 
MODIFY COLUMN age INT NOT NULL;

-- Rename the column 'city' to 'hometown'
ALTER TABLE Student 
CHANGE COLUMN city hometown VARCHAR(100);

-- Delete the 'enrollment_date' column
ALTER TABLE Student 
DROP COLUMN enrollment_date;

-- View Updated 
DESCRIBE Student;

-- Select All 
SELECT * FROM Student;

TRUNCATE TABLE Student;
