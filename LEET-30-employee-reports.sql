/*
===============================================================================
Task: LeetCode #30 - Employees With Reports
Dialect: Microsoft SQL Server (T-SQL)
Category: Aggregation, CTE, Self Join
Difficulty: Easy
URL: https://leetcode.com/problems/employee-reports/

Problem Statement:
  Write a solution to report the ids and names of all managers,
  the number of employees who report directly to them,
  and the average age of the reports rounded to the nearest integer.

  Return the result table ordered by employee_id.

Schema:
  Employees table:
  +-------------+---------+
  | Column Name | Type    |
  +-------------+---------+
  | employee_id | int     |
  | name        | varchar |
  | reports_to  | int     |
  | age         | int     |
  +-------------+---------+

  employee_id is the column with unique values for this table.
  Some employees do not report to anyone (reports_to is null).
===============================================================================
*/

-- Verified Solution Query:

WITH ManagerStats AS (
    SELECT
        reports_to,
        COUNT(*) AS reports_count,
        AVG(age) AS average_age
    FROM Employees
    WHERE reports_to IS NOT NULL
    GROUP BY reports_to
)

SELECT
    e.employee_id,
    e.name,
    ms.reports_count,
    ROUND(ms.average_age, 0) AS average_age
FROM Employees AS e
JOIN ManagerStats AS ms
    ON e.employee_id = ms.reports_to
ORDER BY e.employee_id;
