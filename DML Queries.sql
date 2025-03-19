-- DML IN SQL

CREATE DATABASE Muslim;
USE Muslim;

-- Creating a table 
CREATE TABLE Members (
    MemberID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT,
    City VARCHAR(50)
);

-- Inserting data
INSERT INTO Members (FirstName, LastName, Age, City) VALUES
('Muhammad', 'Ali', 30, 'Lahore'),
('Ayesha', 'Khan', 25, 'Karachi'),
('Omar', 'Farooq', 35, 'Islamabad'),
('Fatima', 'Ahmed', 28, 'Rawalpindi'),
('Hassan', 'Raza', 40, 'Multan');

-- Inserting additional members
INSERT INTO Members (FirstName, LastName, Age, City) VALUES
('Zainab', 'Bukhari', 22, 'Faisalabad'),
('Yusuf', 'Hameed', 45, 'Quetta');

-- Selecting all data
SELECT * FROM Members;

SET SQL_SAFE_UPDATES = 0;


-- Updating age for a specific member
UPDATE Members SET Age = 32 WHERE FirstName = 'Fatima' AND LastName = 'Ahmed';

-- Deleting data (DELETE)
DELETE FROM Members WHERE FirstName = 'Hassan' AND LastName = 'Raza';

-- Deleting a member based on age
DELETE FROM Members WHERE Age > 40;