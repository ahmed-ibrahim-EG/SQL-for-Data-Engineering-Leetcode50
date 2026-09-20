/*
  ============================================================
  LeetCode - 1076. Project Employees II
  ============================================================
  
  Table Schema:
  Project Table:
  +-------------+---------+
  | Column Name | Type    |
  +-------------+---------+
  | project_id  | int     |
  | employee_id | int     |
  +-------------+---------+
  (project_id, employee_id) is the primary key of this table.
  employee_id is a foreign key to Employee table.
  
  Employee Table:
  +------------------+---------+
  | Column Name      | Type    |
  +------------------+---------+
  | employee_id      | int     |
  | name             | varchar |
  | experience_years | int     |
  +------------------+---------+
  employee_id is the primary key of this table.
  experience_years is not NULL.
  
  Description:
  - Project table indicates which employees are working on each project.
  - Employee table contains information about each employee.
  
  Problem Statement:
  Write an SQL query that reports the average experience years
  of all the employees for each project.
  Average years should be rounded to 2 digits.
  
  Logic:
  - Use INNER JOIN between Project and Employee using employee_id.
  - Group by project_id to calculate the average for each project.
  - Use AVG to calculate the average experience years.
  - Use CAST to ensure decimal division in SQL Server.
  - Use ROUND to limit the output to 2 decimal places.
  ============================================================
*/

SELECT 
    p.project_id,
    ROUND(AVG(CAST(e.experience_years AS FLOAT)), 2) AS average_years
FROM Project p
INNER JOIN Employee e 
    ON p.employee_id = e.employee_id
GROUP BY p.project_id;
