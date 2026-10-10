 <div align="center">

# ⚡ Data Engineering SQL Patterns

### *Practical SQL Patterns for Data Engineering, Analytics & Data Transformation*

<p align="center">
  <a href="#-overview">Overview</a> •
  <a href="#-objectives">Objectives</a> •
  <a href="#-sql-patterns">SQL Patterns</a> •
  <a href="#-repository-structure">Repository Structure</a> •
  <a href="#-progress">Progress</a>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/SQL%20Server-T--SQL-red?style=for-the-badge&logo=microsoftsqlserver" alt="SQL Server">
  <img src="https://img.shields.io/badge/LeetCode-40%20%2F%2050-orange?style=for-the-badge&logo=leetcode" alt="LeetCode Progress">
  <img src="https://img.shields.io/badge/Progress-80%25-brightgreen?style=for-the-badge" alt="Progress">
</p>

</div>

---

## 📌 Overview

This repository documents my journey through **50 selected SQL problems** focused on developing practical SQL skills for Data Engineering.

The goal is not just to solve problems, but to understand reusable SQL patterns used in:

- Data transformation
- Data cleaning
- Analytical queries
- Relational data processing
- Reporting and aggregation
- Data quality checks

All solutions are written using **Microsoft SQL Server (T-SQL)**.

## 🎯 Objectives

- Strengthen SQL problem-solving skills.
- Practice common SQL patterns used in Data Engineering.
- Improve understanding of joins, aggregations, subqueries, CTEs, and window functions.
- Build practical experience with analytical SQL.
- Maintain a structured collection of self-contained SQL solutions.
- Prepare for SQL technical interviews for entry-level Data Engineering roles.

## 🧠 SQL Patterns

The repository covers the following concepts:

| Category | Concepts |
|---|---|
| Filtering & Sorting | `WHERE`, `ORDER BY`, `DISTINCT`, `TOP` |
| Aggregation | `GROUP BY`, `HAVING`, `COUNT`, `SUM`, `AVG` |
| Joins | `INNER JOIN`, `LEFT JOIN`, self-joins |
| Subqueries | Scalar subqueries, multi-row subqueries, correlated subqueries |
| CTEs | Common Table Expressions |
| Window Functions | `ROW_NUMBER`, `RANK`, `LAG`, `PARTITION BY` |
| Conditional Logic | `CASE WHEN` |
| Date Operations | Date filtering, date-based grouping |
| Set Operations | `UNION ALL` |
| Existence Checks | `EXISTS`, `NOT EXISTS` |
| Data Transformation | Conditional transformations and derived values |

## 📁 Repository Structure

```text
SQL-for-Data-Engineering-Lab/
│
├── LEET-01-recyclable-and-low-fat-products.sql
├── LEET-02-find-customer-referee.sql
├── LEET-03-big-countries.sql
├── ...
├── LEET-34-product-price-at-a-given-date.sql
├── LEET-35-last-person-to-fit-in-the-bus.sql
├── LEET-36-count-salary-categories.sql
├── LEET-37-employees-whose-manager-left-the-company.sql
├── LEET-38-exchange-seats.sql
├── LEET-39-movie-rating.sql
└── LEET-40-friend-requests-ii-who-has-the-most-friends.sql
```

Each SQL file contains:
- Problem title and LeetCode reference
- Problem statement
- Table schema
- SQL solution

The solutions are written independently so that each file can be reviewed and practiced on its own.

## 📊 Progress

**40 / 50 problems completed — 80%**

```text
Progress: █████████████████████████████████████████░░░░░░░░░░ 80%
```

### Problem Tracking

| # | Problem | Core Concepts | Difficulty | Solution |
|---:|---|---|---|---|
| 01 | Recyclable and Low Fat Products | Filtering | 🟢 Easy | [View SQL](./LEET-01-recyclable-and-low-fat-products.sql) |
| 02 | Find Customer Referee | NULL Handling, Filtering | 🟢 Easy | [View SQL](./LEET-02-find-customer-referee.sql) |
| 03 | Big Countries | Filtering, OR | 🟢 Easy | [View SQL](./LEET-03-big-countries.sql) |
| 04 | Article Views I | DISTINCT, Filtering | 🟢 Easy | [View SQL](./LEET-04-article-views-i.sql) |
| 05 | Invalid Tweets | String Functions, Filtering | 🟢 Easy | [View SQL](./LEET-05-invalid-tweets.sql) |
| 06 | Replace Employee ID With The Unique Identifier | LEFT JOIN | 🟢 Easy | [View SQL](./LEET-06-replace-employee-id-with-the-unique-identifier.sql) |
| 07 | Product Sales Analysis I | LEFT JOIN | 🟢 Easy | [View SQL](./LEET-07-product-sales-analysis-i.sql) |
| 08 | Customer Who Visited but Did Not Make Any Transactions | LEFT JOIN, Aggregation | 🟢 Easy | [View SQL](./LEET-08-customer-who-visited-but-did-not-make-any-transactions.sql) |
| 09 | Rising Temperature | Self-Join, Date Operations | 🟢 Easy | [View SQL](./LEET-09-rising-temperature.sql) |
| 10 | Average Time of Process per Machine | Aggregation, CASE | 🟢 Easy | [View SQL](./LEET-10-average-time-of-process-per-machine.sql) |
| 11 | Employee Bonus | LEFT JOIN, Filtering | 🟢 Easy | [View SQL](./LEET-11-employee-bonus.sql) |
| 12 | Students and Examinations | CROSS JOIN, LEFT JOIN, Aggregation | 🟢 Easy | [View SQL](./LEET-12-students-and-examinations.sql) |
| 14 | Not Boring Movies | Filtering, Modulo, Sorting | 🟢 Easy | [View SQL](./LEET-14-not-boring-movies.sql) |
| 15 | Average Selling Price | LEFT JOIN, Aggregation | 🟢 Easy | [View SQL](./LEET-15-average-selling-price.sql) |
| 16 | Project Employees I | INNER JOIN, Aggregation | 🟢 Easy | [View SQL](./LEET-16-project-employees-i.sql) |
| 17 | Percentage of Users Attended a Contest | Aggregation, Arithmetic | 🟢 Easy | [View SQL](./LEET-17-percentage-of-users-attended-a-contest.sql) |
| 18 | Queries Quality and Percentage | Aggregation, CASE | 🟢 Easy | [View SQL](./LEET-18-queries-quality-and-percentage.sql) |
| 19 | Monthly Transactions I | Aggregation, Date Functions | 🟡 Medium | [View SQL](./LEET-19-monthly-transactions-i.sql) |
| 20 | Immediate Food Delivery II | Subqueries, Aggregation | 🟡 Medium | [View SQL](./LEET-20-immediate-food-delivery-ii.sql) |
| 21 | Game Play Analysis IV | CTEs, Date Operations | 🟡 Medium | [View SQL](./LEET-21-game-play-analysis-iv.sql) |
| 22 | Number of Unique Subjects Taught by Each Teacher | Aggregation, DISTINCT | 🟢 Easy | [View SQL](./LEET-22-number-of-unique-subjects-taught-by-each-teacher.sql) |
| 23 | User Activity for the Past 30 Days I | Date Filtering, Aggregation | 🟢 Easy | [View SQL](./LEET-23-user-activity-for-the-past-30-days-i.sql) |
| 24 | Product Sales Analysis III | CTEs, Window Functions | 🟡 Medium | [View SQL](./LEET-24-product-sales-analysis-iii.sql) |
| 25 | Classes More Than 5 Students | GROUP BY, HAVING | 🟢 Easy | [View SQL](./LEET-25-classes-more-than-5-students.sql) |
| 26 | Find Followers Count | Aggregation | 🟢 Easy | [View SQL](./LEET-26-find-followers-count.sql) |
| 27 | Biggest Single Number | Aggregation, Subqueries | 🟢 Easy | [View SQL](./LEET-27-biggest-single-number.sql) |
| 28 | Customers Who Bought All Products | Aggregation, HAVING | 🟡 Medium | [View SQL](./LEET-28-customers-who-bought-all-products.sql) |
| 29 | The Number of Employees Which Report to Each Employee | Self-Join, Aggregation | 🟡 Medium | [View SQL](./LEET-29-the-number-of-employees-which-report-to-each-employee.sql) |
| 30 | Employees With Reports | Self-Join, Aggregation | 🟡 Medium | [View SQL](./LEET-30-employees-with-reports.sql) |
| 31 | Primary Department for Each Employee | Window Functions, Filtering | 🟡 Medium | [View SQL](./LEET-31-primary-department-for-each-employee.sql) |
| 32 | Triangle Judgement | CASE, Conditional Logic | 🟢 Easy | [View SQL](./LEET-32-triangle-judgement.sql) |
| 33 | Consecutive Available Seats | Self-Join, Filtering | 🟢 Easy | [View SQL](./LEET-33-consecutive-available-seats.sql) |
| 34 | Product Price at a Given Date | CTEs, Window Functions | 🟡 Medium | [View SQL](./LEET-34-product-price-at-a-given-date.sql) |
| 35 | Last Person to Fit in the Bus | Cumulative `SUM()` & Window Functions | 🟡 Medium | [View SQL](./LEET-35-last-person-to-fit-in-the-bus.sql) |
| 36 | Count Salary Categories | `CASE`, CTE, `LEFT JOIN` & `GROUP BY` | 🟢 Easy | [View SQL](./LEET-36-count-salary-categories.sql) |
| 37 | Employees Whose Manager Left the Company | Subquery & `NOT IN` | 🟢 Easy | [View SQL](./LEET-37-employees-whose-manager-left-the-company.sql) |
| 38 | Exchange Seats | CASE, Conditional Logic | 🟡 Medium | [View SQL](./LEET-38-exchange-seats.sql) |
| 39 | Movie Rating | CTEs, Aggregation, Date Filtering & UNION ALL | 🟡 Medium | [View SQL](./LEET-39-movie-rating.sql) |
| 40 | Friend Requests II: Who Has the Most Friends | UNION ALL, Aggregation, GROUP BY & MAX | 🟡 Medium | [View SQL](./LEET-40-friend-requests-ii-who-has-the-most-friends.sql) |

## 📝 Engineering Notes

- Each solution is stored in a separate SQL file.
- The repository uses SQL Server and T-SQL syntax.
- Solutions focus on the required problem logic and relevant SQL concepts.
- The problem list is intentionally selected rather than a complete copy of all LeetCode SQL problems.
- Problem numbering follows the repository's file naming convention; the missing number 13 is intentional.

## 🚀 Roadmap

- [x] Complete the first 40 selected SQL problems.
- [ ] Solve the remaining 10 selected problems.
- [ ] Review and consolidate recurring SQL patterns.
- [ ] Practice explaining the logic behind each solution.
- [ ] Continue applying SQL concepts to Data Engineering projects.

## 🛠️ Technologies

- Microsoft SQL Server
- T-SQL
- LeetCode SQL problems
- Git and GitHub

## 📌 Disclaimer

This repository is a personal learning project documenting practical SQL problem-solving. The solutions are intended to demonstrate SQL concepts and analytical thinking relevant to Data Engineering.

---

<div align="center">

**40 / 50 • 80% Complete**

*Building practical SQL foundations for Data Engineering, one problem at a time.*

</div>
