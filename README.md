<div align="center">

# ⚡ SQL for Data Engineering Lab

### Practical T-SQL Problem Solving & Query Patterns for Data Engineering

<p>
  <img src="https://img.shields.io/badge/Database-Microsoft_SQL_Server-CC2927?style=for-the-badge&logo=microsoftsqlserver&logoColor=white" alt="Microsoft SQL Server" />
  <img src="https://img.shields.io/badge/Language-T--SQL-0078D4?style=for-the-badge&logo=microsoft&logoColor=white" alt="T-SQL" />
  <img src="https://img.shields.io/badge/Platform-LeetCode-FFA116?style=for-the-badge&logo=leetcode&logoColor=white" alt="LeetCode Practice" />
  <img src="https://img.shields.io/badge/Solved-50%2F50_(100%25)-2EA043?style=for-the-badge" alt="Progress 50 of 50" />
</p>

<p>
  <strong>A structured repository of 50 T-SQL solutions focused on relational query logic, analytical SQL, data validation, and foundational Data Engineering patterns.</strong>
</p>

<p>
  <a href="#-repository-overview">Overview</a> •
  <a href="#-progress-dashboard">Progress</a> •
  <a href="#-sql-solutions">SQL Solutions</a> •
  <a href="#-sql-concepts-practiced">SQL Concepts</a> •
  <a href="#-tools-and-technologies">Tech Stack</a> •
  <a href="#-relevance-to-data-engineering">DE Relevance</a> •
  <a href="#-problem-solving-workflow">Workflow</a> •
  <a href="#-author-and-contact">Author</a>
</p>

</div>

---

## 📌 Repository Overview

**SQL for Data Engineering Lab** is a hands-on learning repository documenting 50 solved relational database problems implemented in **Microsoft SQL Server (T-SQL)**.

Rather than treating SQL challenges as isolated puzzles, this lab approaches each problem as a practical data transformation or validation task. The focus is on writing clear, maintainable T-SQL queries that accurately handle joins, aggregations, window functions, relational edge cases, and data-quality constraints.

### 🎯 Core Objectives

- **Master T-SQL Fundamentals:** Build fluency in writing clean, readable queries using Microsoft SQL Server syntax.
- **Solve Analytical Problems:** Apply multi-table joins, aggregations, subqueries, CTEs, and window functions to answer complex business questions.
- **Handle Real-World Edge Cases:** Account for `NULL` values, duplicate records, missing foreign-key relationships, and boundary conditions.
- **Develop ETL/ELT Query Logic:** Practice the core relational patterns used to extract, clean, deduplicate, and aggregate data in downstream pipelines.
- **Maintain a Documented Portfolio:** Track consistent problem-solving progress using structured Git version control.

---

## 📊 Progress Dashboard

| Metric | Details |
| :--- | :--- |
| **Completed Problems** | `50 / 50` |
| **Completion Rate** | `100%` ![100%](https://geps.dev/progress/100) |
| **Difficulty Breakdown** | 32 Easy *(incl. 1 estimated)* · 16 Medium · 2 Hard |
| **Database Engine** | Microsoft SQL Server |
| **Query Dialect** | Transact-SQL (T-SQL) |
| **Practice Source** | LeetCode Database Problems |

---

## 🗂️ SQL Solutions

> **Note on Classifications:** Difficulty labels follow standard LeetCode classifications where directly mapped. Entry `#04` is marked `Easy (estimated)` where the local filename does not uniquely distinguish the original problem prompt.

| # | Problem Title | Difficulty | Solution File |
| :---: | :--- | :---: | :---: |
| 01 | Recyclable and Low Fat Products | Easy | [View SQL](./LEET-01-recyclable-and-low-fat-products.sql) |
| 02 | Find Customer Referee | Easy | [View SQL](./LEET-02-find-customer-referee.sql) |
| 03 | Big Countries | Easy | [View SQL](./LEET-03-Big%20-Countries.sql) |
| 04 | Find Customer Referee | Easy (estimated) | [View SQL](./LEET-04-find-customer-referee.sql) |
| 05 | Invalid Tweets | Easy | [View SQL](./LEET-05-invalid-tweets.sql) |
| 06 | Replace Employee ID With the Unique Identifier | Easy | [View SQL](./LEET-06-replace-employee-id-with-the-unique-identifier.sql) |
| 07 | Product Sales Analysis I | Easy | [View SQL](./LEET-07-product-sales-analysis-i.sql) |
| 08 | Customer Who Visited Without Making Any Transactions | Easy | [View SQL](./LEET-08-customer-who-visited-without-making-any-transactions.sql) |
| 09 | Rising Temperature | Easy | [View SQL](./LEET-09-rising-temperature.sql) |
| 10 | Average Time of Process per Machine | Easy | [View SQL](./LEET-10-average-time-of-process-per-machine.sql) |
| 11 | Employee Bonus | Easy | [View SQL](./LEET-11-employee-bonus.sql) |
| 12 | Managers With at Least 5 Direct Reports | Medium | [View SQL](./LEET-12-managers-with-at-least-5-direct-reports.sql) |
| 13 | Students and Examinations | Easy | [View SQL](./LEET-13-students-and-examinations.sql) |
| 14 | Confirmation Rate | Medium | [View SQL](./LEET-14-confirmation-rate.sql) |
| 15 | Not Boring Movies | Easy | [View SQL](./LEET-15-not-boring-movies.sql) |
| 16 | Average Selling Price | Easy | [View SQL](./LEET-16-average-selling-price.sql) |
| 17 | Project Employees I | Easy | [View SQL](./LEET-17-project-employees-i.sql) |
| 18 | Percentage of Users Attended a Contest | Easy | [View SQL](./LEET-18-Percentage-of-Users-Attended-a-Contest.sql) |
| 19 | Queries Quality and Percentage | Easy | [View SQL](./LEET-19-queries-quality-and-percentage.sql) |
| 20 | Monthly Transactions I | Medium | [View SQL](./LEET-20-Monthly-Transactions-I.sql) |
| 21 | Immediate Food Delivery II | Medium | [View SQL](./LEET-21-immediate-food-delivery-ii.sql) |
| 22 | Game Play Analysis IV | Medium | [View SQL](./LEET-22-game-play-analysis-iv.sql) |
| 23 | Number of Unique Subjects Taught by Each Teacher | Easy | [View SQL](./LEET-23-Number-of-Unique-Subjects-Taught-by-Each-Teacher.sql) |
| 24 | Daily Active User Count | Easy | [View SQL](./LEET-24-Daily-Active-User-Count.sql) |
| 25 | First Year Sales | Easy | [View SQL](./LEET-25-First-Year-Sales.sql) |
| 26 | Classes More Than 5 Students | Easy | [View SQL](./LEET-26-classes-more-than-5-students.sql) |
| 27 | Find Followers Count | Easy | [View SQL](./LEET-27-find-followers-count.sql) |
| 28 | Biggest Single Number | Easy | [View SQL](./LEET-28-biggest-single-number.sql) |
| 29 | Customers Who Bought All Products | Medium | [View SQL](./LEET-29-customers-who-bought-all-products.sql) |
| 30 | Employee Reports | Easy | [View SQL](./LEET-30-employee-reports.sql) |
| 31 | Primary Department for Each Employee | Medium | [View SQL](./LEET-31-primary-department-for-each-employee.sql) |
| 32 | Valid Triangle | Easy | [View SQL](./LEET-32-valid-triangle.sql) |
| 33 | Consecutive Numbers | Medium | [View SQL](./LEET-33-consecutive-numbers.sql) |
| 34 | Product Price at a Given Date | Medium | [View SQL](./LEET-34-product-price-at-a-given-date.sql) |
| 35 | Last Person to Fit in the Bus | Medium | [View SQL](./LEET-35-last-person-to-fit-in-the-bus.sql) |
| 36 | Count Salary Categories | Medium | [View SQL](./LEET-36-count-salary-categories.sql) |
| 37 | Employees Whose Manager Left the Company | Easy | [View SQL](./LEET-37-employees-whose-manager-left-the-company.sql) |
| 38 | Exchange Seats | Medium | [View SQL](./LEET-38-exchange-seats.sql) |
| 39 | Movie Rating | Medium | [View SQL](./LEET-39-movie-rating.sql) |
| 40 | Restaurant Growth | Hard | [View SQL](./LEET-40-restaurant-growth.sql) |
| 41 | Friend Requests II: Who Has the Most Friends | Medium | [View SQL](./LEET-41-friend-requests-ii-who-has-the-most-friends.sql) |
| 42 | Investments in 2016 | Medium | [View SQL](./LEET-42-investments-in-2016.sql) |
| 43 | Department Top Three Salaries | Hard | [View SQL](./LEET-43-department-top-three-salaries.sql) |
| 44 | Fix Names in a Table | Easy | [View SQL](./LEET-44-fix-names-in-a-table.sql) |
| 45 | Patients With a Condition | Easy | [View SQL](./LEET-45-patients-with-a-condition.sql) |
| 46 | Second Highest Salary | Medium | [View SQL](./LEET-46-second-highest-salary.sql) |
| 47 | Group Sold Products By The Date | Easy | [View SQL](./LEET-47-group-sold-products-by-the-date.sql) |
| 48 | Product Sales Analysis III | Easy | [View SQL](./LEET-48-product-sales-analysis-iii.sql) |
| 49 | Product Sales Analysis II | Easy | [View SQL](./LEET-49-product-sales-analysis-ii.sql) |
| 50 | Find Users With Valid E-Mails | Easy | [View SQL](./LEET-50-find-users-with-valid-e-mails.sql) |

---

## 🧠 SQL Concepts Practiced

The solutions in this repository cover core relational and analytical concepts organized into seven practical areas:

### 1. Query Fundamentals
- Core clauses: `SELECT`, `WHERE`, `ORDER BY`, `DISTINCT`, and `TOP`
- Column/table aliasing and result formatting
- Conditional branching and categorization using `CASE WHEN`

### 2. Joins and Relationships
- Combining related tables with `INNER JOIN` and `LEFT JOIN`
- Using self-joins for hierarchical and sequential comparisons (e.g., manager-employee relationships, day-over-day comparisons)
- Detecting orphaned or unmatched records via anti-join patterns (`LEFT JOIN ... WHERE key IS NULL`)

### 3. Aggregation and Grouping
- Standard aggregate functions: `COUNT()`, `SUM()`, `AVG()`, `MIN()`, and `MAX()`
- Grouping records with `GROUP BY` and filtering aggregated groups with `HAVING`
- Conditional aggregation (combining `SUM()` or `AVG()` with `CASE WHEN` for rate and percentage metrics)
- Concatenating grouped text values using `STRING_AGG()`

### 4. Subqueries and CTEs
- Scalar and multi-row subqueries in `SELECT`, `FROM`, and `WHERE` clauses
- Correlated subqueries for row-by-row contextual evaluation
- Modularizing multi-step transformations using Common Table Expressions (`WITH` / CTEs)
- Checking record existence efficiently with `EXISTS` and `NOT EXISTS`

### 5. Window Functions and Analytical SQL
- Partitioning and ordering datasets with `OVER (PARTITION BY ... ORDER BY ...)`
- Deduping and identifying top-N records per group with `ROW_NUMBER()`, `RANK()`, and `DENSE_RANK()`
- Accessing prior or subsequent rows for sequence and trend analysis using `LAG()`
- Calculating cumulative sums, moving averages, and running totals

### 6. Data Quality and Edge Cases
- Safe `NULL` handling in comparisons, joins, and arithmetic calculations
- Duplicate detection and primary/unique record isolation
- Identifying missing relationships (e.g., employees whose managers left the company)
- Evaluating consecutive sequences and relational division queries (*"all"*, *"only"*, *"at least"*, *"latest"*)

### 7. String Matching and Date Filtering
- Standardizing text capitalization and substrings (e.g., fixing name formatting, measuring tweet length)
- Validating structured text patterns such as email addresses and medical condition codes using `LIKE` and pattern matching
- Filtering and aggregating records across date boundaries, intervals, and monthly periods

---

## 🛠️ Tools and Technologies

| Category | Technology | Purpose |
| :--- | :--- | :--- |
| **Query Language** | T-SQL (Transact-SQL) | Writing relational queries, CTEs, and analytical logic |
| **Database Engine** | Microsoft SQL Server | Executing and validating SQL solutions |
| **Development IDE** | SQL Server Management Studio (SSMS) | Local query authoring, testing, and debugging |
| **Version Control** | Git & GitHub | Tracking solution history and maintaining documentation |
| **Practice Platform** | LeetCode | Source of relational database problem statements and test cases |

---

## 🏗️ Relevance to Data Engineering

Strong SQL proficiency is a foundational requirement for Data Engineering. While this repository focuses on problem-solving exercises, the patterns practiced directly support day-to-day engineering workflows:

- **Data Extraction & Filtering:** Writing precise predicates and join conditions to pull only the required records from operational source tables.
- **Data Transformation & Enrichment:** Reshaping raw tables into structured outputs through multi-step CTEs, conditional logic, and date/string standardization.
- **Deduplication & Grain Control:** Using window functions (`ROW_NUMBER()`, `DENSE_RANK()`) and grouping logic to enforce table grain and isolate the latest state of a record.
- **Data Quality & Validation:** Identifying broken foreign keys, handling `NULL` values explicitly, and verifying completeness rules before loading downstream tables.
- **ETL/ELT Pipeline Preparation:** Building the core SQL transformation logic used inside staging layers, dimensional models, and analytical views.

This lab is part of my broader preparation for a **Junior Data Engineer / Data Engineering Intern** role, alongside hands-on study in **Python**, **Data Pipelines**, **Data Warehousing**, and **Microsoft Azure**.

---

## 🔄 Problem-Solving Workflow

Every solution in this repository follows a structured engineering approach:

1. **Analyze Requirements:** Review the business question, expected output schema, and sorting rules.
2. **Inspect the Data Model:** Identify primary keys, foreign-key relationships, table grain, and potential one-to-many fan-out risks.
3. **Design the Query Plan:** Break the transformation into logical steps (filtering, joining, grouping, or windowing) before writing code.
4. **Account for Edge Cases:** Explicitly handle `NULL` values, ties in ranking, empty result sets, division-by-zero risks, and duplicate rows.
5. **Implement & Verify in T-SQL:** Write clean, readable T-SQL and validate results against boundary test cases.
6. **Document & Commit:** Save the verified script with consistent naming and track progress in GitHub.

---

## 👨‍💻 Author and Contact

**Ahmed Ibrahim**  
*Aspiring Data Engineer | DEPI Microsoft Data Engineer Trainee | Python · SQL · Azure | Alexandria University*

- **GitHub:** [@ahmed-ibrahim-EG](https://github.com/ahmed-ibrahim-EG)
- **LinkedIn:** [Ahmed Ibrahim](https://www.linkedin.com/)

---

<div align="center">

### 🏷️ Topics

`SQL` · `T-SQL` · `SQL-Server` · `LeetCode` · `Data-Engineering` · `Data-Analytics` · `Database` · `Query-Optimization` · `Problem-Solving` · `ETL` · `ELT` · `Data-Transformation` · `GitHub`

<br />

**50 / 50 Problems Completed (100%)**  
*Building a strong SQL foundation for Data Engineering through consistent, practical problem-solving.*

</div>
