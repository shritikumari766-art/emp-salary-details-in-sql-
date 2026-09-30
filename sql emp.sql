CREATE DATABASE employee;
USE employee;

CREATE TABLE employee (
    empid INT AUTO_INCREMENT PRIMARY KEY,
    empname VARCHAR(50),
    empage INT,
    empdepartment VARCHAR(50),
    empsalary DECIMAL(10,2),
    empcity VARCHAR(50),
    empexp INT,
    empjoiningdate DATETIME
);

INSERT INTO employee
(empname, empage, empdepartment, empsalary, empcity, empexp, empjoiningdate)
VALUES
('Amit Sharma', 28, 'IT', 60000, 'Delhi', 5, '2019-07-15'),
('Priya Singh', 32, 'HR', 55000, 'Mumbai', 7, '2017-06-10'),
('Rajesh Kumar', 29, 'Finance', 62000, 'Delhi', 6, '2018-08-22'),
('Anjali Verma', 26, 'Marketing', 50000, 'Bangalore', 3, '2021-01-12'),
('Suresh Mehta', 34, 'Sales', 65000, 'Pune', 9, '2015-03-25'),
('Neha Gupta', 27, 'IT', 58000, 'Hyderabad', 4, '2020-09-18'),
('Vikram Choudhary', 35, 'HR', 70000, 'Chennai', 10, '2014-07-05'),
('Manoj Tiwari', 30, 'Finance', 63000, 'Kolkata', 6, '2018-10-30'),
('Sunita Reddy', 25, 'Marketing', 51000, 'Bangalore', 2, '2022-02-17'),
('Arun Joshi', 40, 'Sales', 72000, 'Delhi', 12, '2010-05-28'),
('Deepak Malhotra', 31, 'IT', 62000, 'Mumbai', 6, '2018-11-09'),
('Pooja Thakur', 28, 'HR', 57000, 'Pune', 5, '2019-12-20'),
('Ravi Kapoor', 36, 'Finance', 70000, 'Hyderabad', 11, '2013-06-14'),
('Sneha Patil', 29, 'Marketing', 54000, 'Chennai', 4, '2020-08-19'),
('Tarun Goel', 33, 'Sales', 68000, 'Kolkata', 8, '2016-04-07'),
('Megha Nair', 27, 'IT', 60000, 'Delhi', 5, '2019-01-10'),
('Ashish Sinha', 31, 'HR', 65000, 'Bangalore', 7, '2017-09-25'),
('Ramesh Yadav', 38, 'Finance', 71000, 'Mumbai', 12, '2010-11-05'),
('Komal Jain', 26, 'Marketing', 53000, 'Pune', 3, '2021-05-03'),
('Sanjay Dutta', 39, 'Sales', 75000, 'Hyderabad', 14, '2009-07-12'),
('Asha Rao', 30, 'IT', 59000, 'Chennai', 6, '2018-12-21'),
('Vivek Das', 29, 'HR', 62000, 'Kolkata', 5, '2019-04-28'),
('Kiran Bhat', 41, 'Finance', 72000, 'Delhi', 15, '2008-10-10'),
('Divya Goyal', 24, 'Marketing', 52000, 'Bangalore', 2, '2022-07-16'),
('Naveen Chopra', 36, 'Sales', 73000, 'Mumbai', 10, '2012-03-05');
select*from employee;
INSERT INTO employee
(empname, empage, empdepartment, empsalary, empcity, empexp, empjoiningdate)
VALUES
('Swati Mishra', 27, 'IT', 61000, 'Pune', 4, '2020-06-15'),
('Harsh Vardhan', 37, 'HR', 69000, 'Hyderabad', 12, '2010-08-23'),
('Ankita Saxena', 28, 'Finance', 58000, 'Chennai', 5, '2019-10-01'),
('Ravi Taneja', 35, 'Marketing', 67000, 'Kolkata', 9, '2015-12-09'),
('Siddharth Menon', 42, 'Sales', 76000, 'Delhi', 16, '2007-11-28'),
('Bhavna Kapoor', 31, 'IT', 64000, 'Mumbai', 7, '2017-02-14');
# where clause question 
#Retrive  details of employee who are in the it department and earn more than 60,000?
select * from employee where empdepartment = "it"
 and empsalary <60000;
 #• Find all employees who are older than 30 years and work in Bangalore or Hyderabad. 
 SELECT *
FROM employee
WHERE empage > 30
  AND empcity IN ('Bangalore', 'Hyderabad');
#• Get the details of employees who joined before 2019 but have less than 5 years of experience. 
SELECT *
FROM employee
WHERE empjoiningdate < '2019-01-01'
  AND empexp < 5;
 # Retrieve employees from the Finance department whose salary is between 55,000 and 70,000.  
 SELECT *
FROM employee
WHERE empdepartment = 'Finance'
AND salary BETWEEN 55000 AND 70000;
#• Find all employees except those from the HR department who have more than 8 years of experience.
SELECT *
FROM employee
WHERE empdepartment <> 'HR'
AND empexp > 8;
#• Retrieve all employees from the Sales department.
select * from employee
where empdepartment='hr';
#• Find employees who live in Mumbai and are older than 30 years.
select * from employee 
where empage>30
and empcity = "mumbai";
#• Retrieve employees who joined after 2020-01-01. 
select * from employee
where empjoiningdate > '2020-01-01';
#Find employees who have less than 5 years of experience.
select * from employee
where empexp>5;
#• Get all employees except those in the HR department. 
select * from employee
where empdepartment != 'hr';
#• Find employees with 'Kumar' in their name. 
SELECT *
FROM employee
WHERE empname LIKE '%Kumar%';
#4. GROUP BY & Aggregation Questions
#• Count the number of employees in each department.
select empdepartment ,count(*)
from employee
group by empdepartment;
# Find the average salary of employees in each city. 
SELECT empcity, AVG(empsalary)
FROM employee
GROUP BY empcity;
#• Identify the total number of employees who joined in each year.
select year(empjoiningdate),count(*)
from employee
group by year(empjoiningdate);
#• List the minimum and maximum salaries for each department. 
select empdepartment,min(empsalary),max(empsalary)
from employee
group by empdepartment;
#• Find the total salary expenditure for each department.
SELECT empdepartment, SUM(empsalary)
FROM employee
GROUP BY empdepartment;
#• Count how many employees live in each city. 
select empcity,count(*)
from employee
group by empcity;
#• Retrieve cities where there are more than 10 employees. 
select empcity,count(*)
from employee
group by empcity
having count(*)>10;
#• Find the total salary paid to employees in each department.
select empdepartment, sum(empsalary)
from employee
group by empdepartment;
#• List the youngest and oldest employees in each department. 
select empdepartment,min(empage),max(empage)
from employee
group by empdepartment;
# Find departments where the average experience is more than 7 years. 
select empdepartment ,avg(empexp)
from employee
group by empdepartment
having avg(empexp)>7;
#• Get the most common department in the company. 
SELECT empdepartment, COUNT(*) AS total_employees
FROM employee
GROUP BY empdepartment
ORDER BY total_employees DESC
LIMIT 1;
# Retrieve the department with the highest total salary expenditure. 
select empdepartment,sum(empsalary) as total_salary
from employee
group by empdepartment
order by total_salary desc
limit 1;
#5. HAVING & ORDER BY Questions 
#• Retrieve departments where the average salary is more than 60,000.
select empdepartment , avg(empsalary) as avg_salary
from employee
group by empdepartment
having avg(empsalary) >60000;
#• Find cities where the total number of employees is greater than 10, sorted in descending order.
select empcity, count(*) as total_salary
from employee
group by empcity
having count(*) > 10
order by total_salary desc;
#• Identify departments with more than 5 employees and order them by total experience in descending order.
SELECT empdepartment,
       COUNT(*) AS total_employees,
       SUM(empexp) AS total_experience
FROM employee
GROUP BY empdepartment
HAVING COUNT(*) > 5
ORDER BY total_experience DESC;
#• Get the top 5 highest-paid employees.
select *
from employee
order by empsalary desc
limit 5;
#• Find employees who have been working for more than 10 years, sorted by joining date.
select *
from employee
where empexp>10
order by empjoiningdate;
#Get all employees sorted by Salary in descending order.
 select *
from employee0
order by empsalary desc;
#• Count the number of employees who joined each year.
SELECT YEAR(empjoiningdate) AS joining_year,
       COUNT(*) AS employee_count
FROM employee
GROUP BY YEAR(empjoiningdate)
ORDER BY joining_year;
#• Find employees who earn more than the average salary of their department.
SELECT *
FROM employee e
WHERE empsalary > (
    SELECT AVG(empsalary)
    FROM employee
    WHERE empdepartment = e.empdepartment
);
#• Get the second highest salary in the company
SELECT MAX(empsalary) AS second_highest_salary
FROM employee
WHERE empsalary < (
    SELECT MAX(empsalary)
    FROM employee
);
#• Find employees who joined in the last 3 years using DATEDIFF.
select *
FROM employee
where datediff(curdate(),empjoiningdate )<=365;
#• Get the employee with the highest salary in each department. 
SELECT *
FROM employee e
WHERE empsalary = (
    SELECT MAX(empsalary)
    FROM employee
    WHERE empdepartment = e.empdepartment
);
#• Find employees whose experience is above the department’s average experience.
SELECT *
FROM employee e
WHERE empexp > (
    SELECT AVG(empexp)
    FROM employee
    WHERE empdepartment = e.empdepartment
);
#• Retrieve employees and show a new column: 
#•    - 'Senior' if Experience > 10 
#•    - 'Mid-Level' if Experience between 5-10 
#•    - 'Junior' if Experience < 5 
SELECT *,
       CASE
           WHEN empexp > 10 THEN 'Senior'
           WHEN empexp BETWEEN 5 AND 10 THEN 'Mid-Level'
           WHEN empexp < 5 THEN 'Junior'
       END AS experience_level
FROM employee;
#• Rank employees within their department based on salary.
SELECT *,
       RANK() OVER (
           PARTITION BY empdepartment
           ORDER BY empsalary asc
       ) AS salary_rank
FROM employee;
#• Retrieve employees who have the same salary as someone else in the company.
SELECT *
FROM employee
WHERE empsalary IN (
    SELECT empsalary
    FROM employee
    GROUP BY empsalary
    HAVING COUNT(*) > 1
);
#• Find the percentage of total salary each employee earns (salary / total_salary * 100).
SELECT empname,
       empsalary,
       (empsalary / (SELECT SUM(empsalary) FROM employee)) * 100
       AS salary_percentage
FROM employee;
#• Get employees whose salary is above the 75th percentile.
WITH salary_data AS (
    SELECT empsalary,
           PERCENT_RANK() OVER (ORDER BY empsalary) AS salary_percentile
    FROM employee
)
SELECT e.*
FROM employee e
JOIN salary_data s
ON e.empsalary = s.empsalary
WHERE s.salary_percentile > 0.75;