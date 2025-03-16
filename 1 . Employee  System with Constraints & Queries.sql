-- 🎓 SQL Project: Advanced Employee Management System  
-- 🖊️ By Awais Manzoor | Data Analyst  

-- Step 1: Create a  database  

CREATE DATABASE Employee_Management;  
USE Employee_Management;  

-- Step 2: Create the Departments Table  
CREATE TABLE departments (  
    department_id INT PRIMARY KEY AUTO_INCREMENT,   -- Unique department ID  
    department_name VARCHAR(50) NOT NULL UNIQUE     -- Department name  
);  

-- Step 3: Insert Data 
INSERT INTO departments (department_name) VALUES  
('IT'), ('HR'), ('Finance'), ('Marketing'), ('Operations'), ('Sales');  

-- Step 4: Create the Employees Table
CREATE TABLE employees (  
    employee_id INT PRIMARY KEY AUTO_INCREMENT,    -- Unique employee ID  
    name VARCHAR(50) NOT NULL,                    -- Employee name 
    salary INT CHECK (salary > 20000),            -- Salary  
    hire_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP, --  Sets current date and time by default  
    email VARCHAR(100) UNIQUE,                    -- Email   
    phone_number VARCHAR(15) UNIQUE,              -- Phone number 
    department_id INT,                             -- Foreign key referencing department  
    CONSTRAINT fk_department FOREIGN KEY (department_id) REFERENCES departments(department_id) ON DELETE SET NULL  
);  


-- Step 5: Insert Employees 
INSERT INTO employees (name, salary, email, phone_number, department_id) VALUES  
('Awais Manzoor', 55000, 'awais@example.com', '03001234567', 1),  
('Anas Ahmad', 48000, 'anas@example.com', '03011234568', 2),  
('Muhammad Ali', 62000, 'ali@example.com', '03021234569', 3),  
('Zain ul Abideen', 50000, 'zain@example.com', '03031234570', 1),  
('Hassan Raza', 53000, 'hassan@example.com', '03041234571', 4),  
('Bilal Tariq', 42000, 'bilal@example.com', '03051234572', 2),  
('Usman Khalid', 60000, 'usman@example.com', '03061234573', 3),  
('Hamza Sheikh', 57000, 'hamza@example.com', '03071234574', 1),  
('Saad Ibrahim', 59000, 'saad@example.com', '03081234575', 5),  
('Imran Qureshi', 47000, 'imran@example.com', '03091234576', 6),  
('Jawad Aslam', 53000, 'jawad@example.com', '03101234577', 1),  
('Farhan Anwar', 55000, 'farhan@example.com', '03111234578', 4),  
('Tariq Jameel', 51000, 'tariq@example.com', '03121234579', 2),  
('Faisal Nadeem', 48000, 'faisal@example.com', '03131234580', 3),  
('Rizwan Shah', 70000, 'rizwan@example.com', '03141234581', 1),  
('Salman Haider', 68000, 'salman@example.com', '03151234582', 5),  
('Naveed Akram', 43000, 'naveed@example.com', '03161234583', 6),  
('Hammad Noor', 52000, 'hammad@example.com', '03171234584', 2),  
('Kashif Latif', 49000, 'kashif@example.com', '03181234585', 3),  
('Arsalan Mir', 51000, 'arsalan@example.com', '03191234586', 4),  
('Waleed Khan', 55000, 'waleed@example.com', '03201234587', 5),  
('Haroon Rasheed', 60000, 'haroon@example.com', '03211234588', 6),  
('Danish Iqbal', 45000, 'danish@example.com', '03221234589', 1),  
('Shahzad Ali', 53000, 'shahzad@example.com', '03231234590', 2),  
('Yasir Mehmood', 57000, 'yasir@example.com', '03241234591', 3),  
('Zubair Khan', 59000, 'zubair@example.com', '03251234592', 4),  
('Abdullah Saeed', 61000, 'abdullah@example.com', '03261234593', 5),  
('Irfan Malik', 50000, 'irfan@example.com', '03271234594', 6),  
('Shafiq Ur Rehman', 53000, 'shafiq@example.com', '03281234595', 1),  
('Mazhar Abbas', 46000, 'mazhar@example.com', '03291234596', 2),  
('Tauqeer Ahmed', 52000, 'tauqeer@example.com', '03301234597', 3),  
('Abdul Basit', 49000, 'basit@example.com', '03311234598', 4),  
('Mujahid Farooq', 58000, 'mujahid@example.com', '03321234599', 5),  
('Fahad Rehman', 54000, 'fahad@example.com', '03331234600', 6),  
('Zeeshan Haider', 53000, 'zeeshan@example.com', '03341234601', 1),  
('Asad Ullah', 60000, 'asad@example.com', '03351234602', 2),  
('Raheel Aftab', 61000, 'raheel@example.com', '03361234603', 3),  
('Shayan Siddiqui', 57000, 'shayan@example.com', '03371234604', 4),  
('Owais Raza', 62000, 'owais@example.com', '03381234605', 5);  

-- Step 6: All Employees  
SELECT * FROM employees;  

-- Step 7: Retrieve Employees with Salary Greater than 50,000  
SELECT * FROM employees WHERE salary > 50000;  

-- Step 8: Retrieve Employees Ordered by Salary Descending  
SELECT * FROM employees ORDER BY salary DESC;  

 

-- Step 9: Update Salary for IT Employees by 10%  
UPDATE employees SET salary = salary * 1.10 WHERE department_id = 1;  




