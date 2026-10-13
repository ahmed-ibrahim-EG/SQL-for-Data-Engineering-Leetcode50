```sql
/*
===============================================================================
Task: LeetCode #1517 - Find Users With Valid E-Mails
Dialect: Microsoft SQL Server (T-SQL)
Category: String Matching & Pattern Matching
Difficulty: Easy
URL: https://leetcode.com/problems/find-users-with-valid-e-mails/

Problem Statement:
  Find users with valid email addresses.

  A valid email must satisfy these conditions:
  - The prefix starts with an English letter (A-Z or a-z).
  - The remaining prefix contains only English letters, digits,
    underscores (_), periods (.), and dashes (-).
  - The domain is exactly '@leetcode.com' in lowercase.

Schema:
  Users table:
  +-------------+---------+
  | Column Name | Type    |
  +-------------+---------+
  | user_id     | int     |
  | name        | varchar |
  | mail        | varchar |
  +-------------+---------+

  user_id is the primary key.
===============================================================================
*/

-- Verified Solution Query:
SELECT
    user_id,
    name,
    mail
FROM Users
WHERE mail COLLATE Latin1_General_BIN LIKE '[A-Za-z]%'
  AND mail COLLATE Latin1_General_BIN NOT LIKE '%[^A-Za-z0-9_.-]@leetcode.com'
  AND mail COLLATE Latin1_General_BIN LIKE '%@leetcode.com'
  AND LEFT(mail, LEN(mail) - LEN('@leetcode.com'))
      COLLATE Latin1_General_BIN NOT LIKE '%[^A-Za-z0-9_.-]%'
  AND LEFT(mail, 1) COLLATE Latin1_General_BIN LIKE '[A-Za-z]';
```
