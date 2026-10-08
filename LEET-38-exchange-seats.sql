/*
===============================================================================
Task: LeetCode #626 - Exchange Seats
File: LEET-38-exchange-seats.sql
Dialect: Microsoft SQL Server (T-SQL)
Category: Window Functions / CASE
Difficulty: Medium
===============================================================================

Problem Statement:
------------------
Swap the seat id of every two consecutive students.

If the number of students is odd, the id of the last student is not swapped.

The result must be ordered by id in ascending order.

Schema:
-------
Seat
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| student     | varchar |
+-------------+---------+

id is the primary key.

===============================================================================
*/

SELECT
    id,
    CASE
        WHEN id % 2 = 1
             AND id < (SELECT MAX(id) FROM Seat)
            THEN LEAD(student) OVER (ORDER BY id)

        WHEN id % 2 = 0
            THEN LAG(student) OVER (ORDER BY id)

        ELSE student
    END AS student
FROM Seat
ORDER BY id;
