/*
=============================================================================
Problem: 1211. Queries Quality and Percentage
Platform: LeetCode
Category: SQL / Database
File Name: LEET-05-Queries-Quality-and-Percentage.sql
=============================================================================

[Table Schema]
Table: Queries
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| query_name  | varchar |
| result      | varchar |
| position    | int     |
| rating      | int     |
+-------------+---------+

This table may have duplicate rows.
The position column has a value from 1 to 500.
The rating column has a value from 1 to 5.
A query with rating less than 3 is considered a poor query.

[Problem Description]
Write a solution to find each query_name, the quality and
poor_query_percentage.

The query quality is defined as:
The average of the ratio between query rating and its position.

The poor query percentage is defined as:
The percentage of all queries with rating less than 3.

Both quality and poor_query_percentage should be rounded
to two decimal places.

Return the result table in any order.

[Example]
Input:
Queries table:
+------------+-------------------+----------+--------+
| query_name | result            | position | rating |
+------------+-------------------+----------+--------+
| Dog        | Golden Retriever  | 1        | 5      |
| Dog        | German Shepherd   | 2        | 5      |
| Dog        | Mule              | 200      | 1      |
| Cat        | Shirazi           | 5        | 2      |
| Cat        | Siamese           | 3        | 3      |
| Cat        | Sphynx            | 7        | 4      |
+------------+-------------------+----------+--------+

Output:
+------------+---------+-----------------------+
| query_name | quality | poor_query_percentage |
+------------+---------+-----------------------+
| Dog        | 2.50    | 33.33                 |
| Cat        | 0.66    | 33.33                 |
+------------+---------+-----------------------+

Explanation:
Dog quality:
((5 / 1) + (5 / 2) + (1 / 200)) / 3 = 2.50

Dog poor query percentage:
(1 / 3) * 100 = 33.33

Cat quality:
((2 / 5) + (3 / 3) + (4 / 7)) / 3 = 0.66

Cat poor query percentage:
(1 / 3) * 100 = 33.33
=============================================================================
*/

-- Solution:
SELECT
    query_name,

    ROUND(
        AVG(
            CAST(rating AS DECIMAL(10, 2)) / position
        ),
        2
    ) AS quality,

    ROUND(
        100.0 * COUNT(
            CASE
                WHEN rating < 3 THEN 1
            END
        ) / COUNT(*),
        2
    ) AS poor_query_percentage

FROM
    Queries
GROUP BY
    query_name;
