
/*
===============================================================================
Task: LeetCode #1484 - Group Sold Products By The Date
Dialect: Microsoft SQL Server (T-SQL)
Category: GROUP BY & DISTINCT & String Aggregation
Difficulty: Easy
URL: https://leetcode.com/problems/group-sold-products-by-the-date/

Problem Statement:
  For each sell_date, find the number of distinct products sold and their names.
  Sort product names lexicographically and separate them with commas.
  Return the result ordered by sell_date.

Schema:
  Activities table:
  +-------------+---------+
  | Column Name | Type    |
  +-------------+---------+
  | sell_date   | date    |
  | product     | varchar |
  +-------------+---------+
  The table may contain duplicate rows.
===============================================================================
*/

-- Verified Solution Query:
WITH DistinctProducts AS (
    SELECT DISTINCT
        sell_date,
        product
    FROM Activities
)
SELECT
    sell_date,
    COUNT(*) AS num_sold,
    STRING_AGG(product, ',') WITHIN GROUP (
        ORDER BY product
    ) AS products
FROM DistinctProducts
GROUP BY sell_date
ORDER BY sell_date;
