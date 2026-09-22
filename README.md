<div align="center">

# ⚡ SQL for Data Engineering Lab

### *Bridging Analytical Query Patterns & Production Engineering*

<p align="center">
  <a href="#-repository-overview">Overview</a> •
  <a href="#-learning-scope--core-concepts">Learning Scope</a> •
  <a href="#-repository-structure">Structure</a> •
  <a href="#-progress-tracker">Progress</a> •
  <a href="#-tech-stack--environment">Tech Stack</a>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/SQL%20Server-T--SQL-CC2927?style=for-the-badge&logo=microsoftsqlserver&logoColor=white" alt="SQL Server">
  <img src="https://img.shields.io/badge/LeetCode%2050-19%20%2F%2050-FFA116?style=for-the-badge&logo=leetcode&logoColor=white" alt="LeetCode Progress">
  <img src="https://img.shields.io/badge/Progress-38%25-0ea5e9?style=for-the-badge" alt="Progress">
  <img src="https://img.shields.io/badge/Status-Active-22c55e?style=for-the-badge" alt="Status">
</p>

</div>

---

## 📌 Repository Overview

**SQL for Data Engineering Lab** is a hands-on repository focused on strengthening **SQL and T-SQL skills for Data Engineering**.

The repository combines **LeetCode SQL 50 problems** with practical SQL patterns used in data workflows, including:

* JOINs
* Subqueries
* CTEs
* Window Functions
* Aggregations
* NULL Handling
* Data Transformation
* Data Validation
* Query Optimization

The goal is not only to solve SQL problems, but to understand **why each query works and how the same patterns are applied in real Data Engineering scenarios**.

---

## 🎯 Learning Scope & Core Concepts

### 🔎 Query Logic

* Filtering
* Sorting
* Aggregations
* `GROUP BY`
* `HAVING`
* JOINs
* Self JOINs
* Subqueries
* Correlated Subqueries
* CTEs
* Set Operations

### 📊 Analytical SQL

* `ROW_NUMBER()`
* `RANK()`
* `DENSE_RANK()`
* `LEAD()`
* `LAG()`
* Window Functions
* Partitioning
* Ranking & Top-N Analysis

### 🧹 Data Engineering Patterns

* NULL Handling
* `ISNULL()`
* `COALESCE()`
* Data Validation
* Data Transformation
* Deduplication
* Conditional Logic
* Date & String Manipulation

### ⚙️ SQL Quality & Performance

* SARGability
* Index Awareness
* Query Readability
* Logical Query Processing
* Edge Cases
* Defensive SQL

---

## 📂 Repository Structure

```text
SQL-for-Data-Engineering-Lab/
│
├── README.md
│
├── LEET-01-recyclable-and-low-fat-products.sql
├── LEET-02-find-customer-referee.sql
├── LEET-03-big-countries.sql
├── ...
├── LEET-16-average-selling-price.sql
├── LEET-17-project-employees-i.sql
├── LEET-18-percentage-of-users-attended-a-contest.sql
└── LEET-19-queries-quality-and-percentage.sql
```

### 🏷️ Naming Convention

```text
LEET-XX-problem-name.sql
```

Each LeetCode problem is stored as an independent SQL file.

---

## 📊 Progress Tracker

### Current Progress

**19 / 50 Problems Completed — 38%**

`███████████████████░░░░░░░░░░░░░░░`

|  # | Problem                                        | Core Concepts                                | Difficulty |                                                                       Solution |
| -: | ---------------------------------------------- | -------------------------------------------- | :--------: | -----------------------------------------------------------------------------: |
| 01 | **Recyclable and Low Fat Products**            | Filtering & Boolean Logic                    |   🟢 Easy  |                      [View SQL](./LEET-01-recyclable-and-low-fat-products.sql) |
| 02 | **Find Customer Referee**                      | `NULL` Handling & 3VL                        |   🟢 Easy  |                                [View SQL](./LEET-02-find-customer-referee.sql) |
| 03 | **Big Countries**                              | Compound Predicates                          |   🟢 Easy  |                                        [View SQL](./LEET-03-big-countries.sql) |
| 04 | **Article Views I**                            | `DISTINCT` & Filtering                       |   🟢 Easy  |                                      [View SQL](./LEET-04-article-views-i.sql) |
| 05 | **Invalid Tweets**                             | `LEN()` & String Functions                   |   🟢 Easy  |                                       [View SQL](./LEET-05-invalid-tweets.sql) |
| 06 | **Replace Employee ID With Unique Identifier** | `LEFT JOIN`                                  |   🟢 Easy  |           [View SQL](./LEET-06-replace-employee-id-with-unique-identifier.sql) |
| 07 | **Product Sales Analysis I**                   | Multi-table JOINs                            |   🟢 Easy  |                             [View SQL](./LEET-07-product-sales-analysis-i.sql) |
| 08 | **Customer Who Visited without Transactions**  | Anti-JOIN & `IS NULL`                        |   🟢 Easy  | [View SQL](./LEET-08-customer-who-visited-without-making-any-transactions.sql) |
| 09 | **Rising Temperature**                         | Self JOIN & `DATEDIFF()`                     |   🟢 Easy  |                                   [View SQL](./LEET-09-rising-temperature.sql) |
| 10 | **Average Time of Process per Machine**        | Aggregation & Grouping                       |  🟡 Medium |                  [View SQL](./LEET-10-average-time-of-process-per-machine.sql) |
| 11 | **Students and Examinations**                  | `CROSS JOIN` & `LEFT JOIN`                   |   🟢 Easy  |                            [View SQL](./LEET-11-students-and-examinations.sql) |
| 12 | **Managers with at Least 5 Direct Reports**    | Self JOIN & `HAVING`                         |  🟡 Medium |              [View SQL](./LEET-12-managers-with-at-least-5-direct-reports.sql) |
| 14 | **Confirmation Rate**                          | `CASE WHEN` & Conditional Aggregation        |  🟡 Medium |                                    [View SQL](./LEET-14-confirmation-rate.sql) |
| 15 | **Not Boring Movies**                          | Modulo & Sorting                             |   🟢 Easy  |                                    [View SQL](./LEET-15-not-boring-movies.sql) |
| 16 | **Average Selling Price**                      | JOINs, Date Ranges & NULL Handling           |   🟢 Easy  |                                [View SQL](./LEET-16-average-selling-price.sql) |
| 17 | **Project Employees I**                        | JOINs, Aggregation & `AVG()`                 |   🟢 Easy  |                                  [View SQL](./LEET-17-project-employees-i.sql) |
| 18 | **Percentage of Users Attended a Contest**     | Aggregation, Subquery & `ROUND()`            |   🟢 Easy  |               [View SQL](./LEET-18-percentage-of-users-attended-a-contest.sql) |
| 19 | **Queries Quality and Percentage**             | Conditional Aggregation, `AVG()` & `ROUND()` |   🟢 Easy  |                       [View SQL](./LEET-19-queries-quality-and-percentage.sql) |

> **19 / 50 • 38% Complete**

---

## 🧠 What This Repository Demonstrates

This repository demonstrates practical ability to:

* Break business problems into SQL operations.
* Select appropriate JOIN strategies.
* Work with multiple relational tables.
* Apply aggregation correctly.
* Handle NULL values safely.
* Use conditional logic.
* Apply analytical SQL patterns.
* Think about edge cases.
* Write readable and maintainable T-SQL.
* Connect SQL concepts to Data Engineering workflows.

---

## 🛠️ Tech Stack & Environment

| Technology                              | Usage                           |
| --------------------------------------- | ------------------------------- |
| **Microsoft SQL Server**                | Database Engine                 |
| **T-SQL**                               | Primary SQL Dialect             |
| **SQL Server Management Studio (SSMS)** | SQL Development                 |
| **LeetCode**                            | SQL Problem Practice            |
| **Git & GitHub**                        | Version Control & Documentation |

---

## 🚀 Learning Roadmap

### ✅ Completed

* [x] SQL Fundamentals
* [x] Filtering & Sorting
* [x] Aggregations
* [x] GROUP BY / HAVING
* [x] JOINs
* [x] Subqueries
* [x] CTEs
* [x] CASE WHEN
* [x] Variables
* [x] IF / ELSE
* [x] Window Functions
* [x] Stored Procedures
* [x] Correlated Subqueries
* [x] NULL Handling
* [x] T-SQL Fundamentals

### 🔄 In Progress

* [ ] Complete LeetCode SQL 50
* [ ] Advanced Window Functions
* [ ] Advanced Subqueries
* [ ] Query Optimization
* [ ] Data Quality Patterns
* [ ] SQL-based ETL Scenarios

### 🔜 Next

* [ ] Production-style SQL Projects
* [ ] Staging → Transformation → Warehouse Workflows
* [ ] Star Schema Implementation
* [ ] SQL + Python ETL Integration
* [ ] Data Validation Frameworks

---

## 📈 Learning Philosophy

> **Don't just solve the query. Understand why the query works.**

The purpose of this repository is to develop **SQL problem-solving ability**, not simply collect solved questions.

Every problem is an opportunity to understand:

**Problem → Data Relationships → SQL Logic → Query → Result**

This approach is designed to build SQL skills that can transfer directly into **Data Engineering workflows**.

---

<div align="center">

## ⚡ Building SQL Skills for Real Data Engineering Workflows

**19 / 50 • 38% Complete**

</div>
