CREATE DATABASE islamic_db;
USE islamic_db;

CREATE TABLE muslims (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    country VARCHAR(50),
    income DECIMAL(10,2),
    birth_date DATE
);

INSERT INTO muslims (name, country, income, birth_date) VALUES
('Ali', 'Pakistan', 50000, '1985-06-15'),
('Omar', 'Saudi Arabia', 70000, '1990-08-20'),
('Fatima', 'Turkey', 65000, '1988-01-10'),
('Ayesha', 'UAE', 72000, '1992-07-05'),
('Hassan', 'Pakistan', 48000, '1995-03-22'),
('Zainab', 'Egypt', 60000, '1987-12-11');

-- Get the total income
SELECT SUM(income) AS total_income FROM muslims;

-- Get the average
SELECT AVG(income) AS average_income FROM muslims;

-- Get the total number 
SELECT COUNT(*) AS total_muslims FROM muslims;


-- Get the highest income 
SELECT MAX(income) AS highest_income FROM muslims;

-- Get the lowest income 
SELECT MIN(income) AS lowest_income FROM muslims;

-- Group data 
SELECT country, 
       COUNT(*) AS num_people,    
       SUM(income) AS total_income, 
       AVG(income) AS avg_income, 
       MAX(income) AS max_income, 
       MIN(income) AS min_income 
FROM muslims
GROUP BY country;



