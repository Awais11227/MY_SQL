-- ***********************************************************
--           School Database with Foreign Key Constraints
--                   By Awais Manzoor || Data Analyst
-- ***********************************************************

-- **************************
--  Step 1: Create Database
-- **************************
CREATE DATABASE SchoolDB;
USE SchoolDB;

-- **************************
--  Step 2: Create Department Table
-- **************************
CREATE TABLE dep (
    id INT PRIMARY KEY,     
    name VARCHAR(100)      
);


-- Insert Sample 
INSERT INTO dep VALUES
(101, 'English'),
(102, 'IT');

-- View
SELECT * FROM dep;

-- **************************
--  Step 3: Update Department IDs
-- **************************
UPDATE dep 
SET id = 103 
WHERE id = 101;


UPDATE dep 
SET id = 122
 WHERE id = 103;

-- **************************
--  Step 4: Create Teacher Table with Foreign Key
-- **************************
CREATE TABLE Teacher (
    id INT PRIMARY KEY,     
    name VARCHAR(100),      
    dep_id INT,             
    FOREIGN KEY (dep_id) REFERENCES dep(id) 
    ON UPDATE CASCADE      -- Auto-update
    ON DELETE CASCADE     
);

-- Insert
INSERT INTO Teacher VALUES
(101, 'Adan', 101),
(102, 'Muhammad', 102);

-- View Teacher Table Data
SELECT * FROM Teacher;

--                          ***********************
--                                End of Script 
--                           ***********************
