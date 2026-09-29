/*
=============================================================================
Problem: 550. Game Play Analysis IV
Platform: LeetCode
Category: SQL / Database
File Name: LEET-XX-Game-Play-Analysis-IV.sql
=============================================================================

[Table Schema]
Table: Activity
+--------------+---------+
| Column Name  | Type    |
+--------------+---------+
| player_id    | int     |
| device_id    | int     |
| event_date   | date    |
| games_played | int     |
+--------------+---------+
(player_id, event_date) is the primary key (combination of columns with
unique values) for this table.

Each row is a record of a player who logged in and played a number of games
(possibly 0) before logging out on some day using some device.

[Problem Description]
Report the fraction of players that logged in again on the day immediately
following the day they first logged in.

The fraction is calculated as:

Number of players who logged in the day after their first login
---------------------------------------------------------------
Total number of players

Round the result to 2 decimal places.

[Example]
Input:
Activity table:
+-----------+-----------+------------+--------------+
| player_id | device_id | event_date | games_played |
+-----------+-----------+------------+--------------+
| 1         | 2         | 2016-03-01 | 5            |
| 1         | 2         | 2016-03-02 | 6            |
| 2         | 3         | 2017-06-25 | 1            |
| 3         | 1         | 2016-03-02 | 0            |
| 3         | 4         | 2018-07-03 | 5            |
+-----------+-----------+------------+--------------+

Output:
+----------+
| fraction |
+----------+
| 0.33     |
+----------+

Explanation:
Only the player with id 1 logged back in on the day immediately following
their first login.

Therefore:

1 / 3 = 0.33
=============================================================================
*/

-- Solution:
WITH FirstLogin AS
(
    SELECT
        player_id,
        MIN(event_date) AS first_date
    FROM
        Activity
    GROUP BY
        player_id
),
ReturnedPlayers AS
(
    SELECT DISTINCT
        a.player_id
    FROM
        Activity a
    JOIN
        FirstLogin f
        ON a.player_id = f.player_id
    WHERE
        DATEDIFF(DAY, f.first_date, a.event_date) = 1
)
SELECT
    ROUND(
        CAST(COUNT(*) AS DECIMAL(10,2))
        / (SELECT COUNT(*) FROM FirstLogin),
        2
    ) AS fraction
FROM
    ReturnedPlayers;
