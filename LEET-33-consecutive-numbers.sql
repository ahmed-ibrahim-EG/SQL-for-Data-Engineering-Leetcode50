/*
===============================================================================
Task: LeetCode #180 - Consecutive Numbers
Dialect: Microsoft SQL Server (T-SQL)
Category: Window Functions, LAG
Difficulty: Medium
URL: https://leetcode.com/problems/consecutive-numbers/

Problem Statement:
  Find all numbers that appear at least three times consecutively.

  Return the result table in any order.

Schema:
  Logs table:
  +-------------+---------+
  | Column Name | Type    |
  +-------------+---------+
  | id          | int     |
  | num         | varchar |
  +-------------+---------+

  Primary Key:
    id

===============================================================================
*/

-- Verified Solution Query:
WITH CTE AS (
    SELECT
        id,
        num,
        LAG(num, 1) OVER (ORDER BY id) AS prev_num,
        LAG(num, 2) OVER (ORDER BY id) AS prev_prev_num
    FROM Logs
)
SELECT DISTINCT
    num AS ConsecutiveNums
FROM CTE
WHERE num = prev_num
  AND num = prev_prev_num;
