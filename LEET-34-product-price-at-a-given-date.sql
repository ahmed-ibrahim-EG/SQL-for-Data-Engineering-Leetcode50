/*
===============================================================================
Task: LeetCode #1164 - Product Price at a Given Date
Dialect: Microsoft SQL Server (T-SQL)
Category: CTE, Aggregation, CASE WHEN
Difficulty: Medium
URL: https://leetcode.com/problems/product-price-at-a-given-date/

Problem Statement:
  Find the prices of all products on the date 2019-08-16.

  Initially, all products have price 10.

  If a product has a price change on or before 2019-08-16,
  return the price from its latest change.

  If a product has no price change on or before 2019-08-16,
  return price 10.

  Return the result table in any order.

Schema:
  Products table:
  +---------------+---------+
  | Column Name   | Type    |
  +---------------+---------+
  | product_id    | int     |
  | new_price     | int     |
  | change_date   | date    |
  +---------------+---------+

  Primary Key:
    (product_id, change_date)
===============================================================================
*/

-- Verified Solution Query:
WITH LatestChanges AS (
    SELECT
        product_id,
        MAX(change_date) AS latest_change_date
    FROM Products
    WHERE change_date <= '2019-08-16'
    GROUP BY product_id
)
SELECT
    products.product_id,
    CASE
        WHEN lc.latest_change_date IS NULL THEN 10
        ELSE p.new_price
    END AS price
FROM (
    SELECT DISTINCT product_id
    FROM Products
) products
LEFT JOIN LatestChanges lc
    ON products.product_id = lc.product_id
LEFT JOIN Products p
    ON p.product_id = lc.product_id
    AND p.change_date = lc.latest_change_date;
