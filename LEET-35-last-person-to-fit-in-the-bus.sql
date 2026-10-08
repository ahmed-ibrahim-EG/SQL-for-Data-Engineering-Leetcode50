/*
===============================================================================
Task: LeetCode #1204 - Last Person to Fit in the Bus
File: LEET-35-last-person-to-fit-in-the-bus.sql
Dialect: Microsoft SQL Server (T-SQL)
Category: Window Functions
Difficulty: Medium
===============================================================================

Problem Statement:
------------------
There is a queue of people waiting to board a bus.

The bus has a weight limit of 1000 kilograms, so there may be some people
who cannot board.

Find the person_name of the last person that can fit on the bus without
exceeding the weight limit.

People board the bus according to their turn.
Only one person can board the bus at any given turn.

The test cases guarantee that the first person does not exceed the
weight limit.

Schema:
-------
Queue
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| person_id   | int     |
| person_name | varchar |
| weight      | int     |
| turn        | int     |
+-------------+---------+

===============================================================================
*/

WITH QueueWeight AS (
    SELECT
        person_name,
        turn,
        SUM(weight) OVER (ORDER BY turn) AS total_weight
    FROM Queue
)
SELECT TOP 1
    person_name
FROM QueueWeight
WHERE total_weight <= 1000
ORDER BY turn DESC;
