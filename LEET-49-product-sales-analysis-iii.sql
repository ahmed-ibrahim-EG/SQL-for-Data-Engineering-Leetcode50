```sql
/*
===============================================================================
Task: LeetCode #1322 - Product Sales Analysis III
Dialect: Microsoft SQL Server (T-SQL)
Category: JOIN & GROUP BY & HAVING
Difficulty: Easy
URL: https://leetcode.com/problems/product-sales-analysis-iii/

Problem Statement:
  Find the names of products that have at least 100 units ordered
  in February 2020, along with the total number of units ordered.

Schema:
  Products table:
  +------------------+---------+
  | Column Name      | Type    |
  +------------------+---------+
  | product_id       | int     |
  | product_name     | varchar |
  | product_category | varchar |
  +------------------+---------+

  Orders table:
  +-------------+------+
  | Column Name | Type |
  +-------------+------+
  | product_id  | int  |
  | order_date  | date |
  | unit        | int  |
  +-------------+------+

  product_id is the primary key in Products and a foreign key in Orders.
  Orders may contain duplicate rows.
===============================================================================
*/

-- Verified Solution Query:
SELECT
    p.product_name,
    SUM(o.unit) AS unit
FROM Products AS p
INNER JOIN Orders AS o
    ON p.product_id = o.product_id
WHERE o.order_date >= '2020-02-01'
  AND o.order_date < '2020-03-01'
GROUP BY
    p.product_id,
    p.product_name
HAVING SUM(o.unit) >= 100;
```
