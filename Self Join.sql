-- Self Join in SQL
-- By Awais Manzoor
--  Data Analyst

-- A Self Join is a join where a table is joined with itself.
-- It is useful when we need to find relationships between rows in the same table.

-- Creating the database
CREATE DATABASE CompanyDB;
USE CompanyDB;

-- Creating the employee table
CREATE TABLE employee (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    manager_id INT
);

-- Inserting values 
INSERT INTO employee (id, name, manager_id) VALUES
(101, 'adam', 103),
(102, 'bob', 104),
(103, 'casey', NULL),
(104, 'donald', 103);

-- Self Join exampl
SELECT *
FROM employee AS a
JOIN employee AS b
ON a.id = b.manager_id;



SELECT a.name AS manager_name, b.name AS employee_name
FROM employee AS a
JOIN employee AS b
ON a.id = b.manager_id;
