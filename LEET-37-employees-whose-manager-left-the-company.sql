/*
===============================================================================
Task: LeetCode #1978 - Employees Whose Manager Left the Company
File: LEET-37-employees-whose-manager-left-the-company.sql
Dialect: Microsoft SQL Server (T-SQL)
Category: Subqueries / NOT IN
Difficulty: Easy
===============================================================================

Problem Statement:
------------------
Find the IDs of employees whose salary is strictly less than 30000 and
whose manager left the company.

When a manager leaves the company, their information is deleted from the
Employees table, but the reports still have their manager_id set to the
manager that left.

Return the result ordered by employee_id.

Schema:
-------
Employees
+-------------+----------+
| Column Name | Type     |
+-------------+----------+
| employee_id | int      |
| name        | varchar  |
| manager_id  | int      |
| salary      | int      |
+-------------+----------+

employee_id is the primary key.

===============================================================================
*/

SELECT
    employee_id
FROM Employees
WHERE salary < 30000
  AND manager_id NOT IN (
      SELECT employee_id
      FROM Employees
  )
ORDER BY employee_id;
