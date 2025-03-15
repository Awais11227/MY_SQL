-- MY_SQL , RDBMS, CREATE DATABASE, SELECT AND WHERE CONDITION USE 
-- By Awais Manzoor | Data Analyst 



-- **************************
--        MySQL Overview
-- **************************
-- MySQL is an open-source  (RDBMS).
-- It is developed by Oracle Corporation.
-- Released in 1995.

-- **************************
--        What is RDBMS?
-- **************************
-- RDBMS stands for Relational Database Management System.
-- It maintains relational databases using structured tables.
-- RDBMS is the foundation of MySQL, SQL Server, Oracle, and MS Access.
-- It perform CRUD operations: Create, Read, Update, Delete.

-- ***************************************
--   Some of The Most Important SQL Commands
-- ***************************************
-- SELECT        - Extracts data from a database.
-- UPDATE        - Updates existing data in a database.
-- DELETE        - Deletes data from a database.
-- INSERT INTO   - Inserts new data into a database.
-- CREATE DATABASE - Creates a new database.
-- ALTER DATABASE  - Modifies an existing database.
-- CREATE TABLE  - Creates a new table.
-- ALTER TABLE   - Modifies the structure of an existing table.
-- DROP TABLE    - Deletes an entire table.
-- CREATE INDEX  - Creates an index to optimize searches.
-- DROP INDEX    - Deletes an existing index.

-- **************************
--       Create Database
-- **************************
CREATE DATABASE CollegeDB;  
USE CollegeDB;  

-- **************************
--       Create Table
-- **************************
CREATE TABLE Student (
    RollNo INT PRIMARY KEY,  
    Name VARCHAR(50) NOT NULL,  
    City VARCHAR(50) NOT NULL  
);  

-- **************************
--      Insert Records
-- **************************
INSERT INTO Student (RollNo, Name, City) VALUES  
(1, 'Muhammad Ali', 'Karachi'),
(2, 'Ayesha Khan', 'Lahore'),
(3, 'Omar Farooq', 'Islamabad'),
(4, 'Fatima Zahra', 'Rawalpindi'),
(5, 'Hassan Raza', 'Faisalabad'),
(6, 'Zainab Bibi', 'Multan'),
(7, 'Abdullah Ahmed', 'Peshawar'),
(8, 'Maryam Noor', 'Quetta'),
(9, 'Bilal Hussain', 'Hyderabad'),
(10, 'Sami Ullah', 'Sialkot');

-- **************************
--   SQL Query Execution Order
-- **************************
-- 1. SELECT column_name  
-- 2. FROM table_name  
-- 3. WHERE condition  
-- 4. GROUP BY column_name  
-- 5. HAVING condition  
-- 6. ORDER BY column_name ASC|DESC;

-- **************************
--      SELECT Queries
-- **************************
-- Select all records from Student table
SELECT * FROM Student;

-- Select specific columns
SELECT Name, City FROM Student;

-- Select students from a specific city
SELECT * 
FROM Student 
WHERE City = 'Lahore';

-- name in ascending order
SELECT * 
FROM Student
 ORDER BY Name ASC;

-- Count students in each city
SELECT City, COUNT(*)
 FROM Student 
 GROUP BY City;

-- Select students where RollNo is greater than 5
SELECT * 
FROM Student 
WHERE RollNo > 5;



