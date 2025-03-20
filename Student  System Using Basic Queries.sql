-- 🎓 where , group by , order by, limit 
-- 🖊️ By Awais Manzoor | Data Analyst  

CREATE DATABASE Student_Management;

USE Student_Management;

CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,  -- Unique Student ID
    name VARCHAR(50) NOT NULL,                 -- Student Name 
    age INT CHECK (age >= 5 AND age <= 25),     -- Age 
    gender ENUM('Male', 'Female') NOT NULL,    -- Gender 
    course VARCHAR(50),                        -- Student's Course
    marks INT CHECK (marks BETWEEN 0 AND 100), -- Marks
    city VARCHAR(50) DEFAULT 'Lahore'          -- Default city
);

INSERT INTO students (name, age, gender, course, marks, city) VALUES
('Awais Manzoor', 20, 'Male', 'Computer Science', 85, 'Lahore'),
('Anas Ahmad', 18, 'Male', 'Mathematics', 75, 'Karachi'),
('Muhammad Ali', 22, 'Male', 'Physics', 90, 'Islamabad'),
('Zain ul Abideen', 19, 'Male', 'Engineering', 80, 'Rawalpindi'),
('Hassan Raza', 21, 'Male', 'Biology', 78, 'Peshawar'),
('Bilal Tariq', 23, 'Male', 'Accounting', 70, 'Multan'),
('Usman Khalid', 20, 'Male', 'Computer Science', 82, 'Lahore'),
('Hamza Sheikh', 18, 'Male', 'Economics', 88, 'Karachi'),
('Saad Ibrahim', 17, 'Male', 'Medicine', 65, 'Quetta'),
('Imran Qureshi', 24, 'Male', 'Law', 95, 'Faisalabad'),
('Jawad Aslam', 19, 'Male', 'Software Engineering', 78, 'Lahore'),
('Farhan Anwar', 22, 'Male', 'Business Administration', 80, 'Karachi'),
('Tariq Jameel', 23, 'Male', 'Islamic Studies', 92, 'Rawalpindi'),
('Faisal Nadeem', 21, 'Male', 'Political Science', 76, 'Islamabad'),
('Rizwan Shah', 20, 'Male', 'Chemistry', 88, 'Peshawar'),
('Salman Haider', 19, 'Male', 'Statistics', 85, 'Multan'),
('Naveed Akram', 18, 'Male', 'Physics', 74, 'Quetta'),
('Hammad Noor', 22, 'Male', 'Artificial Intelligence', 93, 'Lahore'),
('Kashif Latif', 21, 'Male', 'Robotics', 79, 'Karachi'),
('Arsalan Mir', 20, 'Male', 'Data Science', 90, 'Islamabad'),
('Waleed Khan', 23, 'Male', 'Graphic Designing', 72, 'Rawalpindi'),
('Haroon Rasheed', 17, 'Male', 'Web Development', 68, 'Peshawar'),
('Danish Iqbal', 18, 'Male', 'Digital Marketing', 77, 'Multan'),
('Shahzad Ali', 19, 'Male', 'Ethical Hacking', 84, 'Quetta'),
('Yasir Mehmood', 22, 'Male', 'Cyber Security', 81, 'Lahore'),
('Zubair Khan', 24, 'Male', 'Networking', 88, 'Karachi'),
('Abdullah Saeed', 21, 'Male', 'Cloud Computing', 79, 'Islamabad'),
('Irfan Malik', 20, 'Male', 'Software Development', 87, 'Rawalpindi'),
('Shafiq Ur Rehman', 18, 'Male', 'Mechanical Engineering', 75, 'Peshawar'),
('Mazhar Abbas', 22, 'Male', 'Aerospace Engineering', 82, 'Multan'),
('Tauqeer Ahmed', 19, 'Male', 'Artificial Intelligence', 94, 'Quetta'),
('Abdul Basit', 21, 'Male', 'Machine Learning', 83, 'Lahore'),
('Mujahid Farooq', 20, 'Male', 'Biomedical Engineering', 78, 'Karachi'),
('Fahad Rehman', 23, 'Male', 'Architecture', 92, 'Islamabad'),
('Zeeshan Haider', 18, 'Male', 'Automotive Engineering', 71, 'Rawalpindi'),
('Asad Ullah', 21, 'Male', 'Fashion Designing', 85, 'Peshawar'),
('Raheel Aftab', 22, 'Male', 'Film & Media', 90, 'Multan'),
('Shayan Siddiqui', 19, 'Male', 'Psychology', 88, 'Quetta'),
('Owais Raza', 20, 'Male', 'Linguistics', 84, 'Lahore');

-- 🔍  Queries Using Operators

-- Fetch Students Who Scored More Than 80
SELECT name, marks FROM students WHERE marks > 80;

-- Fetch Students Who Are Between 18 and 22 Years Old
SELECT * FROM students WHERE age BETWEEN 18 AND 22;

-- Fetch Students Who Are From "Lahore" or "Karachi"
SELECT name, city FROM students WHERE city IN ('Lahore', 'Karachi');
SELECT * FROM students WHERE city IN ('Lahore', 'Karachi');

-- Fetch Students Who Are NOT From "Islamabad"
SELECT * FROM students WHERE city NOT IN ('Islamabad');


--  Fetch Students Who Scored 75 or More AND Are From "Lahore"
SELECT name, marks, city FROM students WHERE marks >= 75 AND city = 'Lahore';


-- 📌 Sorting & Limiting Results

-- Fetch Top 5 Students With Highest Marks
SELECT name, marks FROM students ORDER BY marks DESC LIMIT 5;
-- Fetch Students With ascending oreder 
SELECT name FROM students ORDER BY name ASC;

SELECT last_name, salary 
FROM   students
WHERE	last_name IN ('a_%');






