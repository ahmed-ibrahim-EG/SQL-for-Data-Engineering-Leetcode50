<div align="center">

# ⚡ SQL for Data Engineering Lab

### *From Query Patterns to Data Engineering Thinking*

<p align="center">
  <a href="#-repository-overview">Overview</a> •
  <a href="#-learning-scope">Learning Scope</a> •
  <a href="#-repository-architecture">Architecture</a> •
  <a href="#-progress-tracker">Progress</a> •
  <a href="#-tech-stack--environment">Tech Stack</a>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/SQL%20Server-T--SQL-CC2927?style=for-the-badge&logo=microsoftsqlserver&logoColor=white" alt="SQL Server">
  <img src="https://img.shields.io/badge/LeetCode%2050-16%20%2F%2050-FFA116?style=for-the-badge&logo=leetcode&logoColor=white" alt="LeetCode Progress">
  <img src="https://img.shields.io/badge/Progress-32%25-0ea5e9?style=for-the-badge" alt="Progress">
  <img src="https://img.shields.io/badge/Status-Active-22c55e?style=for-the-badge" alt="Status">
</p>

</div>

---

## 📌 Repository Overview

**SQL for Data Engineering Lab** is a hands-on repository focused on building strong **SQL and T-SQL foundations for Data Engineering**.

The repository combines **LeetCode SQL 50 problems** with practical SQL patterns used in data workflows, including joins, subqueries, CTEs, window functions, data validation, NULL handling, transformation, and query optimization.

Each problem is maintained as an independent `.sql` file to keep the work **reproducible, organized, and easy to review**.

### 🎯 Main Goals

- Build strong SQL problem-solving and query logic.
- Practice writing clean and readable T-SQL.
- Understand how SQL patterns translate into Data Engineering workflows.
- Develop defensive querying habits around NULLs, duplicates, and edge cases.
- Build a structured SQL portfolio that documents continuous progress.

> **Engineering Note**
>
> Solutions are developed independently. AI tools may be used for documentation formatting, Markdown assistance, and code readability — not for generating the core problem-solving logic.

---

## 🎯 Learning Scope

The repository currently focuses on four major areas:

| 🔎 Query Logic | 📊 Analytics | 🧹 Data Engineering | ⚙️ SQL Quality |
|---|---|---|---|
| JOINs | Window Functions | Data Transformation | SARGability |
| Subqueries | `ROW_NUMBER()` | NULL Handling | Query Readability |
| CTEs | `RANK()` | Deduplication | Predicate Design |
| Set Operations | `LEAD()` / `LAG()` | Data Validation | Performance Awareness |
| Aggregations | Running Metrics | Staging Patterns | Edge Cases |

### Core Concepts

**Query & Retrieval**
- Multi-table JOINs
- Self JOINs
- Anti-JOIN patterns
- Subqueries
- CTEs
- Set operations
- Aggregations

**Analytical SQL**
- `ROW_NUMBER()`
- `RANK()`
- `DENSE_RANK()`
- `LEAD()` / `LAG()`
- Running aggregates
- Partitioning and ordering

**Data Engineering Patterns**
- NULL handling
- Deduplication
- Data validation
- Type conversion
- Conditional transformations
- Date and string manipulation
- Relational data modeling

**SQL Quality & Performance**
- SARGable predicates
- Index awareness
- Deterministic ordering
- Logical query processing
- Three-Valued Logic (3VL)
- Edge-case handling

---

## 📂 Repository Architecture

```text
sql-for-data-engineering-leetcode50/
│
├── 📄 README.md
│
├── 📂 queries/
│   ├── 📜 LEET-01-recyclable-and-low-fat-products.sql
│   ├── 📜 LEET-02-find-customer-referee.sql
│   ├── 📜 LEET-03-big-countries.sql
│   └── 📜 ...
│
└── 📂 assets/
    └── ...
```

### 🏷️ Naming Convention

| Pattern | Purpose |
|---|---|
| `LEET-XX-problem-name.sql` | LeetCode SQL 50 problems |
| `P-XX-topic-description.sql` | Custom Data Engineering exercises |

Each SQL file is intended to be **self-contained and independently executable** whenever the problem context allows it.

---

## 📊 Progress Tracker

### Current Milestone

**16 / 50 problems completed — 32%**

`████████████████░░░░░░░░░░░░░░░░░░░░░░`

| # | Problem | Core Concepts | Difficulty | Solution |
|---:|---|---|:---:|:---:|
| 01 | **Recyclable and Low Fat Products** | Filtering & Boolean Logic | 🟢 Easy | [View SQL](./queries/LEET-01-recyclable-and-low-fat-products.sql) |
| 02 | **Find Customer Referee** | `NULL` Handling & 3VL | 🟢 Easy | [View SQL](./queries/LEET-02-find-customer-referee.sql) |
| 03 | **Big Countries** | Compound Predicates | 🟢 Easy | [View SQL](./queries/LEET-03-big-countries.sql) |
| 04 | **Article Views I** | `DISTINCT` & Filtering | 🟢 Easy | [View SQL](./queries/LEET-04-article-views-i.sql) |
| 05 | **Invalid Tweets** | `LEN()` & String Functions | 🟢 Easy | [View SQL](./queries/LEET-05-invalid-tweets.sql) |
| 06 | **Replace Employee ID With Unique Identifier** | `LEFT JOIN` | 🟢 Easy | [View SQL](./queries/LEET-06-replace-employee-id-with-the-unique-identifier.sql) |
| 07 | **Product Sales Analysis I** | Multi-table JOINs | 🟢 Easy | [View SQL](./queries/LEET-07-product-sales-analysis-i.sql) |
| 08 | **Customer Who Visited without Transactions** | Anti-JOIN & `IS NULL` | 🟢 Easy | [View SQL](./queries/LEET-08-customer-who-visited-without-making-any-transactions.sql) |
| 09 | **Rising Temperature** | Self JOIN & `DATEDIFF()` | 🟢 Easy | [View SQL](./queries/LEET-09-rising-temperature.sql) |
| 10 | **Average Time of Process per Machine** | Aggregation & Grouping | 🟡 Medium | [View SQL](./queries/LEET-10-average-time-of-process-per-machine.sql) |
| 11 | **Students and Examinations** | `CROSS JOIN` & Sparse `LEFT JOIN` | 🟢 Easy | [View SQL](./queries/LEET-11-students-and-examinations.sql) |
| 12 | **Managers with at Least 5 Direct Reports** | Self JOIN & `HAVING` | 🟡 Medium | [View SQL](./queries/LEET-12-managers-with-at-least-5-direct-reports.sql) |
| 14 | **Confirmation Rate** | `CASE WHEN` & Conditional Aggregation | 🟡 Medium | [View SQL](./queries/LEET-14-confirmation-rate.sql) |
| 15 | **Not Boring Movies** | Modulo & Sorting | 🟢 Easy | [View SQL](./queries/LEET-15-not-boring-movies.sql) |
| 16 | **Average Selling Price** | JOINs, Date Ranges & NULL Handling | 🟢 Easy | [View SQL](./queries/LEET-16-average-selling-price.sql) |

> **Progress:** 16 completed out of 50  
> **Completion:** 32%

---

## 🧠 What This Repository Demonstrates

This repository is not only a collection of solved SQL questions.

It demonstrates the ability to:

- Break a data problem into logical SQL operations.
- Select the appropriate JOIN strategy.
- Handle missing and NULL values safely.
- Work with relational data across multiple tables.
- Use analytical window functions for row-level analysis.
- Write queries with edge cases in mind.
- Think about query performance and predicate behavior.
- Translate SQL concepts into patterns relevant to Data Engineering.

---

## 🛠️ Tech Stack & Environment

| Tool | Usage |
|---|---|
| **Microsoft SQL Server** | Database engine |
| **T-SQL** | Primary SQL dialect |
| **SQL Server Management Studio (SSMS)** | Local development |
| **Azure Data Studio** | SQL development / exploration |
| **LeetCode** | SQL problem practice |
| **Git & GitHub** | Version control & documentation |

---

## 🚀 Roadmap

### Completed

- [x] SQL fundamentals
- [x] Filtering & aggregation
- [x] JOINs
- [x] Subqueries
- [x] CTEs
- [x] `CASE WHEN`
- [x] Ranking functions
- [x] NULL & 3VL handling
- [x] SQL Server / T-SQL practice

### In Progress

- [ ] Complete LeetCode SQL 50
- [ ] Advanced window functions
- [ ] Advanced subqueries
- [ ] Query optimization
- [ ] Data validation patterns
- [ ] SQL-based ETL scenarios
- [ ] Dimensional modeling exercises

### Next

- [ ] Production-style SQL projects
- [ ] Staging → Transformation → Warehouse workflows
- [ ] Star Schema implementation
- [ ] SQL + Python ETL integration

---

## 📈 Learning Philosophy

> **Don't just solve the query. Understand why the query works.**

The goal is to move beyond memorizing SQL syntax and develop the ability to recognize **data patterns, choose appropriate SQL strategies, and reason about how queries behave on real-world datasets.**

---

<div align="center">

### ⚡ Building SQL skills for real Data Engineering workflows.

**16 / 50 • 32% Complete**

</div>
