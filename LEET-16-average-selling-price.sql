/*
  ============================================================
  LeetCode - 1251. Average Selling Price
  ============================================================
  
  Table Schema:
  Prices Table:
  +---------------+---------+
  | Column Name   | Type    |
  +---------------+---------+
  | product_id    | int     |
  | start_date    | date    |
  | end_date      | date    |
  | price         | int     |
  +---------------+---------+
  
  UnitsSold Table:
  +---------------+---------+
  | Column Name   | Type    |
  +---------------+---------+
  | product_id    | int     |
  | purchase_date | date    |
  | units         | int     |
  +---------------+---------+
  
  Description:
  - Prices table indicates the price of the product_id in the period from start_date to end_date. No overlapping periods for the same product_id.
  - UnitsSold table indicates the date, units, and product_id of each product sold (may contain duplicate rows).
  
  Problem Statement:
  Write a solution to find the average selling price for each product. 
  Average_price should be rounded to 2 decimal places. 
  If a product does not have any sold units, its average selling price is assumed to be 0.
  
  Logic:
  - Use LEFT JOIN between Prices and UnitsSold to ensure all products (even those with no sales) are included.
  - Match purchase_date within the period using BETWEEN (start_date and end_date).
  - Group by product_id to calculate totals per product.
  - Calculate total revenue (price * units) divided by total units sold.
  - Use NULLIF to prevent division by zero errors for unsold products.
  - Use ISNULL to replace NULL average prices with 0.
  - Use ROUND to limit the output to 2 decimal places.
  ============================================================
*/

SELECT 
    p.product_id,
    ISNULL(ROUND(CAST(SUM(CAST(p.price AS FLOAT) * u.units) AS FLOAT) / NULLIF(SUM(u.units), 0), 2), 0) AS average_price
FROM Prices p
LEFT JOIN UnitsSold u 
    ON p.product_id = u.product_id 
    AND u.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY p.product_id;
