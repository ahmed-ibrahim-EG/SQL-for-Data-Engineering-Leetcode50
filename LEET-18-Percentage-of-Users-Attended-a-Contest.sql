/*
=============================================================================
Problem: 1633. Percentage of Users Attended a Contest
Platform: LeetCode
Category: SQL / Database
File Name: LEET-04-Percentage-of-Users-Attended-a-Contest.sql
=============================================================================

[Table Schema]
Table: Users
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| user_id     | int     |
| user_name   | varchar |
+-------------+---------+
user_id is the primary key (column with unique values) for this table.

Table: Register
+-------------+-----+
| Column Name | Type|
+-------------+-----+
| contest_id  | int |
| user_id     | int |
+-------------+-----+
(contest_id, user_id) is the primary key for this table.
Each row represents a user registered for a contest.

[Problem Description]
Write a solution to find the percentage of users who registered in each contest.

The percentage should be calculated as:
(number of users registered in the contest / total number of users) * 100

Round the percentage to two decimal places.

Return the result table ordered by:
1. percentage in descending order
2. contest_id in ascending order

[Example]
Input:
Users table:
+---------+-----------+
| user_id | user_name |
+---------+-----------+
| 6       | Alice     |
| 2       | Bob       |
| 7       | Alex      |
+---------+-----------+

Register table:
+------------+---------+
| contest_id | user_id |
+------------+---------+
| 215        | 6       |
| 209        | 2       |
| 208        | 2       |
| 210        | 6       |
| 208        | 6       |
| 209        | 7       |
| 209        | 6       |
| 215        | 7       |
| 208        | 7       |
| 210        | 2       |
| 207        | 2       |
| 210        | 7       |
+------------+---------+

Output:
+------------+------------+
| contest_id | percentage |
+------------+------------+
| 208        | 100.00     |
| 209        | 100.00     |
| 210        | 100.00     |
| 215        | 66.67      |
| 207        | 33.33      |
+------------+------------+
=============================================================================
*/

-- Solution:
SELECT 
    contest_id,
    ROUND(
        COUNT(DISTINCT user_id) * 100.0 /
        (SELECT COUNT(*) FROM Users),
        2
    ) AS percentage
FROM 
    Register
GROUP BY 
    contest_id
ORDER BY 
    percentage DESC,
    contest_id ASC;
