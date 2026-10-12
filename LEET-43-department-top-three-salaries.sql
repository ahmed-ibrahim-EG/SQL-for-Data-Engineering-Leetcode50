
/*
===============================================================================
Task: LeetCode #185 - Department Top Three Salaries
Dialect: Microsoft SQL Server (T-SQL)
Category: Window Functions & Ranking
Difficulty: Hard
URL: https://leetcode.com/problems/department-top-three-salaries/

Problem Statement:
  Write a solution to find employees who earn salaries in the top three
  unique salaries within each department.
  Return the result table in any order.

Schema:
  Employee table:
  +--------------+---------+
  | Column Name  | Type    |
  +--------------+---------+
  | id           | int     |
  | name         | varchar |
  | salary       | int     |
  | departmentId | int     |
  +--------------+---------+

  Department table:
  +-------------+---------+
  | Column Name | Type    |
  +-------------+---------+
  | id          | int     |
  | name        | varchar |
  +-------------+---------+
===============================================================================
*/

-- Verified Solution Query:
WITH RankedEmployees AS (
    SELECT
        id,
        name,
        salary,
        departmentId,
        DENSE_RANK() OVER (
            PARTITION BY departmentId
            ORDER BY salary DESC
        ) AS salary_rank
    FROM
        Employee
)
SELECT
    d.name AS Department,
    r.name AS Employee,
    r.salary AS Salary
FROM
    RankedEmployees AS r
INNER JOIN
    Department AS d
    ON r.departmentId = d.id
WHERE
    r.salary_rank <= 3;
