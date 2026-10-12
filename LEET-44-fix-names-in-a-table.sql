```sql
/*
===============================================================================
Task: LeetCode #1667 - Fix Names in a Table
Dialect: Microsoft SQL Server (T-SQL)
Category: String Functions & Sorting
Difficulty: Easy
URL: https://leetcode.com/problems/fix-names-in-a-table/

Problem Statement:
  Write a solution to fix the names so that only the first character is
  uppercase and the remaining characters are lowercase.
  Return the result table ordered by user_id.

Schema:
  Users table:
  +-------------+---------+
  | Column Name | Type    |
  +-------------+---------+
  | user_id     | int     |
  | name        | varchar |
  +-------------+---------+
===============================================================================
*/

-- Verified Solution Query:
SELECT
    user_id,
    CONCAT(
        UPPER(SUBSTRING(name, 1, 1)),
        LOWER(SUBSTRING(name, 2, LEN(name)))
    ) AS name
FROM
    Users
ORDER BY
    user_id ASC;
```
