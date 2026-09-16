/*
  ============================================================
  LeetCode - Confirmation Rate
  ============================================================
  
  Table Schema:
  
  Table: Signups
  +----------------+----------+
  | Column Name    | Type     |
  +----------------+----------+
  | user_id        | int      |
  | time_stamp     | datetime |
  +----------------+----------+
  user_id is the column of unique values for this table.
  Each row contains information about the signup time for the user with ID user_id.

  Table: Confirmations
  +----------------+----------+
  | Column Name    | Type     |
  +----------------+----------+
  | user_id        | int      |
  | time_stamp     | datetime |
  | action         | ENUM     |
  +----------------+----------+
  (user_id, time_stamp) is the primary key for this table.
  user_id is a foreign key to the Signups table.
  action is an ENUM of the type ('confirmed', 'timeout').
  
  Problem Statement:
  Find the confirmation rate of each user.
  The confirmation rate is the number of 'confirmed' messages divided by the total 
  number of requested confirmation messages.
  The confirmation rate of a user that did not request any confirmation messages is 0.
  Round the confirmation rate to two decimal places.
  Return the result table in any order.
  
  Logic:
  - Approach 1 (Direct LEFT JOIN):
    * Perform a LEFT JOIN from Signups to Confirmations on user_id to retain all registered users.
    * Use CASE WHEN to map 'confirmed' to 1.0 and other cases to 0.0 (using decimals to avoid integer division).
    * Calculate the average confirmation rate per user using AVG() and round the result to 2 decimal places using ROUND().
    * Group by s.user_id.

  - Approach 2 (CTE with COALESCE):
    * Create a Common Table Expression (CTE) to pre-aggregate the confirmation rate for users present in Confirmations.
    * Join the Signups table to the CTE via LEFT JOIN to preserve users without confirmation requests.
    * Use COALESCE(rate, 0.00) to replace NULL values with 0.00 for users who made zero requests.
  ============================================================
*/

-- Solution 1: Direct LEFT JOIN with AVG & CASE WHEN
SELECT 
    s.user_id,
    ROUND(
        AVG(CASE WHEN c.action = 'confirmed' THEN 1.0 ELSE 0.0 END), 
        2
    ) AS confirmation_rate
FROM Signups s
LEFT JOIN Confirmations c 
    ON s.user_id = c.user_id
GROUP BY s.user_id;

-- Solution 2: Using CTE with COALESCE
WITH ConfirmationStats AS (
    SELECT 
        user_id,
        ROUND(
            AVG(CASE WHEN action = 'confirmed' THEN 1.0 ELSE 0.0 END), 
            2
        ) AS rate
    FROM Confirmations
    GROUP BY user_id
)
SELECT 
    s.user_id,
    COALESCE(cs.rate, 0.00) AS confirmation_rate
FROM Signups s
LEFT JOIN ConfirmationStats cs 
    ON s.user_id = cs.user_id;
