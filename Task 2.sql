create database Employees;
use Employees;
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(40),
    department VARCHAR(20),
    city VARCHAR(20),
    job_title VARCHAR(30),
    salary INT,
    experience_years INT,
    rating INT
);

INSERT INTO employees VALUES
(1,  'Aarav Sharma',    'IT',        'Pune',   'Developer',         62000, 3, 4),
(2,  'Priya Nair',      'HR',        'Mumbai', 'HR Executive',      45000, 2, 3),
(3,  'Rohan Mehta',     'Finance',   'Mumbai', 'Accountant',        52000, 4, 4),
(4,  'Sneha Kulkarni',  'IT',        'Pune',   'Data Analyst',      58000, 2, 5),
(5,  'Vikram Singh',    'Sales',     'Delhi',  'Sales Manager',     78000, 8, 4),
(6,  'Anjali Desai',    'Marketing', 'Nashik', 'Marketer',          48000, 3, 3),
(7,  'Karan Patel',     'IT',        'Mumbai', 'Team Lead',         95000, 9, 5),
(8,  'Neha Joshi',      'Finance',   'Pune',   'Analyst',           56000, 5, 4),
(9,  'Rahul Verma',     'Sales',     'Delhi',  'Sales Executive',   40000, 1, 3),
(10, 'Pooja Iyer',      'HR',        'Pune',   'HR Manager',        72000, 7, 4),
(11, 'Amit Rao',        'IT',        'Nagpur', 'Developer',         60000, 4, 3),
(12, 'Divya Menon',     'Marketing', 'Mumbai', 'Marketing Manager', 76000, 8, 5),
(13, 'Suresh Reddy',    'Finance',   'Delhi',  'Finance Manager',   88000, 10, 4),
(14, 'Meera Shah',      'Sales',     'Mumbai', 'Sales Executive',   42000, 2, 2),
(15, 'Arjun Kapoor',    'IT',        'Delhi',  'Data Analyst',      64000, 3, 4),
(16, 'Ishita Gupta',    'Marketing', 'Pune',   'Designer',          50000, 3, 4),
(17, 'Manish Tiwari',   'HR',        'Nagpur', 'Recruiter',         38000, 1, 3),
(18, 'Kavya Pillai',    'Finance',   'Nagpur', 'Accountant',        47000, 2, 3),
(19, 'Tarun Bansal',    'Sales',     'Pune',   'Sales Executive',   44000, 2, 3),
(20, 'Riya Choudhary',  'IT',        'Nashik', 'Developer',         54000, 2, 4);

select * from employees;
-- 1
SELECT * FROM Employees
WHERE department = 'IT';
-- 2
SELECT * FROM Employees
WHERE city = 'Pune'
AND salary > 50000;
-- 3
SELECT * FROM Employees
WHERE department IN ('HR', 'Finance')
ORDER BY salary DESC;
-- 4
SELECT *
FROM Employees
WHERE experience >= 3 AND experience <= 5
ORDER BY name;
-- 5
SELECT *
FROM Employees
WHERE job_title LIKE '%Manager'
ORDER BY salary DESC;
-- 6
SELECT * FROM Employees
ORDER BY salary DESC
LIMIT 5;
-- 7
SELECT * FROM Employees
ORDER BY salary ASC
LIMIT 3;
-- 8
SELECT * FROM Employees
ORDER BY salary DESC
LIMIT 5 OFFSET 5;
-- 9
SELECT * FROM Employees
ORDER BY salary DESC
LIMIT 1 OFFSET 2;
-- 10
SELECT emp_id, emp_name, department
FROM employees
emp_name
limit 5 offset 10;
-- 11
SELECT department, COUNT(*) AS total_employees
FROM Employees
GROUP BY department;
-- 12
SELECT city, COUNT(*) AS total_employees
FROM Employees
GROUP BY city;
-- 13
SELECT department, AVG(salary) AS average_salary
FROM Employees
GROUP BY department
ORDER BY average_salary DESC;
-- 14
SELECT department, MAX(salary) AS max_salary
FROM employees
experience_years >=3 department;
-- 15
SELECT department, COUNT(*) AS total_employees
FROM Employees
GROUP BY department
HAVING COUNT(*) >= 4;
-- 16
SELECT city, AVG(salary) AS average_salary
FROM Employees
GROUP BY city
HAVING AVG(salary) > 55000;
-- 17
SELECT department, COUNT(*) AS total_employees
FROM Employees
WHERE rating >= 4
GROUP BY department
ORDER BY total_employees DESC;
-- 18
SELECT department, SUM(salary) AS total_salary
FROM Employees
GROUP BY department
ORDER BY total_salary DESC
LIMIT 1;
-- 19
SELECT city, department, COUNT(*) AS total_employees
FROM Employees
WHERE city IN ('Pune', 'Delhi')
GROUP BY city, department
HAVING COUNT(*) >= 2
ORDER BY city ASC;
-- 20
