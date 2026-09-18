<div align="center">

# ⚡ SQL for Data Engineering Lab
### *Bridging Analytical Query Patterns & Production Engineering*

<p align="center">
  <a href="#-repository-overview">Overview</a> •
  <a href="#-learning-scope--core-focus">Core Focus</a> •
  <a href="#-repository-architecture">Architecture</a> •
  <a href="#-progress-tracker">Progress Tracker</a> •
  <a href="#-tech-stack--environment">Tech Stack</a>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Dialect-Microsoft%20SQL%20Server%20(T--SQL)-CC292B?style=for-the-badge&logo=microsoft-sql-server&logoColor=white" alt="SQL Server">
  <img src="https://img.shields.io/badge/LeetCode%2050-16%20%2F%2050-FFA116?style=for-the-badge&logo=leetcode&logoColor=white" alt="LeetCode Progress">
  <img src="https://img.shields.io/badge/Completion-32%25-00c853?style=for-the-badge" alt="Completion">
  <img src="https://img.shields.io/badge/Status-Actively%20Maintained-0ea5e9?style=for-the-badge" alt="Status">
</p>

<br/>

Current Milestone: [████████████░░░░░░░░░░░░░░░░░░░░░░░░░░] 32% Completed (16/50)


</div>

---

## 📌 Repository Overview

This repository is a structured engineering workspace dedicated to mastering **T-SQL** for scalable Data Engineering workflows and competitive querying. Rather than merely storing answers, each `.sql` script is crafted as a self-contained unit featuring:
- **Schema & DDL context** for local reproduction.
- **Problem breakdown** and edge-case rationale.
- **Optimized, deterministic SQL logic** tested against production data scenarios.

> [!NOTE]
> **Engineering Integrity:** All algorithms and logical solutions are developed independently. Generative AI is strictly employed as a tooling utility for markdown documentation linting, template generation, and code formatting consistency.

---

## 🎯 Learning Scope & Core Focus

                SQL FOR DATA ENGINEERING
┌──────────────────────┬──────────────────────┬──────────────────────┐
│  Retrieval & Logic   │ Analytical Windowing │ Data Transformation  │
├──────────────────────┼──────────────────────┼──────────────────────┤
│ • Multi-way Joins    │ • ROW_NUMBER / RANK  │ • CASE WHEN Pivoting │
│ • Correlated Subqs   │ • LEAD / LAG         │ • 3VL & NULL Defense │
│ • Recursive CTEs     │ • Running Aggregates │ • Idempotent Inserts │
└──────────────────────┴──────────────────────┴──────────────────────┘


* **Query Optimization & Retrieval:** Writing clean, sargable queries using CTEs, complex Joins, and defensive predicates.
* **Analytical Window Functions:** Tracking state across sequential rows, event sessionization, and metric rolling sums.
* **Data Cleansing & Staging:** Casting paradigms, string manipulation, deduplication, and handling SQL's Three-Valued Logic (3VL).
* **Dimensional & Integrity Patterns:** Star schema alignment, surrogate key validation, and anomaly detection.

---

## 📂 Repository Architecture

```text
sql-for-data-engineering-leetcode50/
├── 📄 README.md
├── 📂 queries/
│   ├── 📜 LEET-01-recyclable-and-low-fat-products.sql
│   ├── 📜 LEET-02-find-customer-referee.sql
│   └── 📜 ...
└── 📂 assets/
🏷️ Naming Standard
LEET-XX-problem-name.sql: Solutions aligned directly with the LeetCode SQL 50 study curriculum.

P-XX-topic-description.sql: Custom scenarios, warehouse staging mocks, and optimization benchmarks.

📊 Progress Tracker
Tag	Problem / Exercise	Core Mechanics	Difficulty	Solution
LEET-01	Recyclable and Low Fat Products	Basic Filtering & Bitwise Logic	🟢 Easy	Code ↗
LEET-02	Find Customer Referee	NULL Defense & 3-Valued Logic (3VL)	🟢 Easy	Code ↗
LEET-03	Big Countries	Compound Predicates & Union Analysis	🟢 Easy	Code ↗
LEET-04	Article Views I	Distinct In-Memory Evaluation	🟢 Easy	Code ↗
LEET-05	Invalid Tweets	String Length Functions (LEN/DATALENGTH)	🟢 Easy	Code ↗
LEET-06	Replace Employee ID With Unique Identifier	Non-Clustered Left Outer Joins	🟢 Easy	Code ↗
LEET-07	Product Sales Analysis I	Multi-table Key Matching	🟢 Easy	Code ↗
LEET-08	Customer Who Visited without Transactions	Anti-Joins (IS NULL) vs Aggregation	🟢 Easy	Code ↗
LEET-09	Rising Temperature	Self-Joins with DATEDIFF Interval Logic	🟢 Easy	Code ↗
LEET-10	Average Time of Process per Machine	Metric Aggregation & Process Grouping	🟡 Medium	Code ↗
LEET-11	Students and Examinations	Cartesian Cross Joins with Sparse Left Joins	🟢 Easy	Code ↗
LEET-12	Managers with at Least 5 Direct Reports	Hierarchical Self Joins & HAVING Count	🟡 Medium	Code ↗
LEET-14	Confirmation Rate	Conditional CASE WHEN Ratio Aggregation	🟡 Medium	Code ↗
LEET-15	Not Boring Movies	Modulo Filtering (id % 2 != 0) & Sorting	🟢 Easy	Code ↗
LEET-16	Average Selling Price	Left Joins, Date Ranges (BETWEEN), & 3VL Null Defenses	🟢 Easy	Code ↗
🛠️ Tech Stack & Environment
RDBMS Engine: Microsoft SQL Server (T-SQL)

Local Dev Tooling: SQL Server Management Studio (SSMS) / Azure Data Studio

Practice Platform: LeetCode SQL 50 Study Plan
