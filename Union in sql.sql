-- UNION in SQL 
-- Awais Manzoor 
-- Data Analyst

-- The UNION operator is used to combine the result sets of two or more SELECT queries.
-- It removes duplicate records by default.
-- If you want to keep duplicates, use UNION ALL.

CREATE DATABASE SalesDB;
USE SalesDB;

-- sales_2023
CREATE TABLE sales_2023 (
    id INT PRIMARY KEY,
    product VARCHAR(50),
    revenue INT
);


INSERT INTO sales_2023 (id, product, revenue) VALUES
(1, 'Laptop', 5000),
(2, 'Phone', 3000),
(3, 'Tablet', 2000);

-- sales_2024
CREATE TABLE sales_2024 (
    id INT PRIMARY KEY,
    product VARCHAR(50),
    revenue INT
);

INSERT INTO sales_2024 (id, product, revenue) VALUES
(4, 'Laptop', 5500),
(5, 'Phone', 3200),
(6, 'Smartwatch', 1800);

-- Using UNION 
SELECT * FROM sales_2023
UNION
SELECT * FROM sales_2024;

-- Using UNION ALL to include duplicate records
SELECT * FROM sales_2023
UNION ALL
SELECT * FROM sales_2024;
