-- Create a database
CREATE DATABASE CompanyDB;
USE CompanyDB;

-- Create a table for employees
CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT, 
    name VARCHAR(50) NOT NULL, 
    salary DECIMAL(10,2) NOT NULL,
    department VARCHAR(50), 
    hire_date DATE
);


INSERT INTO employees (name, salary, department, hire_date) VALUES
('Ahmed', 30000, 'IT', '2021-03-10'),
('Fatima', 32000, 'HR', '2022-07-05'),
('Hassan', 40000, 'Finance', '2019-06-15'),
('Zainab', 38000, 'Marketing', '2020-09-25'),
('Bilal', 45000, 'IT', '2018-11-10'),
('Ayesha', 29000, 'HR', '2021-02-18'),
('Umar', 42000, 'Finance', '2019-12-30'),
('Khadija', 35000, 'Marketing', '2022-04-20');

-- Retrieve all employee records
SELECT * FROM employees;

-- Add a new column for employee email
ALTER TABLE employees ADD email VARCHAR(100);

-- Modify the salary column to allow NULL values
ALTER TABLE employees MODIFY salary DECIMAL(10,2) NULL;

-- Change column name from 'department' to 'dept_name'
ALTER TABLE employees CHANGE department dept_name VARCHAR(50);

-- Delete the email column
ALTER TABLE employees DROP COLUMN email;

-- Delete the entire employees table
DROP TABLE employees;

-- Delete the entire CompanyDB database 
DROP DATABASE CompanyDB;

-- Remove all records 
TRUNCATE TABLE employees;
