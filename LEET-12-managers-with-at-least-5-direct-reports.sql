```sql
/*
===============================================================================
Task: LeetCode #570 - Managers with at Least 5 Direct Reports
Dialect: Microsoft SQL Server (T-SQL)
Category: SELF JOIN & Aggregation
Difficulty: Medium
URL: https://leetcode.com/problems/managers-with-at-least-5-direct-reports/

Problem Statement:
  Find the managers who have at least five direct reports.

  Return the result table in any order.

Schema:
  Employee table:
  +-------------+---------+
  | Column Name | Type    |
  +-------------+---------+
  | id          | int     |
  | name        | varchar |
  | department  | varchar |
  | managerId   | int     |
  +-------------+---------+

  id is the primary key for this table.

  Each row indicates the ID of an employee, their name,
  department, and the ID of their manager.

  If managerId is NULL, the employee does not have a manager.

===============================================================================
*/

-- Verified Solution Query:
-- SELF JOIN allows the Employee table to be used in two roles:
-- one role represents managers, and the other represents their employees.
-- The JOIN condition matches each manager's id with the employee's managerId.
-- GROUP BY creates one group for each manager.
-- COUNT(E.id) counts the manager's direct reports.
-- HAVING keeps only managers with at least 5 direct reports.

SELECT
    M.name
FROM Employee AS M
JOIN Employee AS E
    ON M.id = E.managerId
GROUP BY
    M.id,
    M.name
HAVING
    COUNT(E.id) >= 5;
```
