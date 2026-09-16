Markdown<div align="center">

# ⚡ SQL for Data Engineering Lab
### *Bridging Analytical Query Patterns & Production Engineering*

<p align="center">
  <a href="#-repository-overview">Overview</a> •
  <a href="#-learning-scope--core-focus">Core Focus</a> •
  <a href="#-repository-architecture">Architecture</a> •
  <a href="#-progress-tracker">Progress Tracker</a> •
  <a href="#-tech-stack">Tech Stack</a>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Dialect-Microsoft%20SQL%20Server%20(T--SQL)-CC292B?style=for-the-badge&logo=microsoft-sql-server&logoColor=white" alt="SQL Server">
  <img src="https://img.shields.io/badge/LeetCode%2050-14%20%2F%2050-FFA116?style=for-the-badge&logo=leetcode&logoColor=white" alt="LeetCode Progress">
  <img src="https://img.shields.io/badge/Completion-28%25-00c853?style=for-the-badge" alt="Completion">
  <img src="https://img.shields.io/badge/Status-Actively%20Maintained-0ea5e9?style=for-the-badge" alt="Status">
</p>

<br/>

Current Milestone: [██████████░░░░░░░░░░░░░░░░░░░░░░░░░░] 28% Completed (14/50)
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
┌──────────────────────┬──────────────────────┬──────────────────────┐│   Retrieval & Logic  │ Analytical Windowing │ Data Transformation  │├──────────────────────┼──────────────────────┼──────────────────────┤│ • Multi-way Joins    │ • ROW_NUMBER / RANK  │ • CASE WHEN Pivoting ││ • Correlated Subqs   │ • LEAD / LAG         │ • 3VL & NULL Defense ││ • Recursive CTEs     │ • Running Aggregates │ • Idempotent Inserts │└──────────────────────┴──────────────────────┴──────────────────────┘
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
🏷️ Naming StandardLEET-XX-problem-name.sql: Solutions aligned directly with the LeetCode SQL 50 study curriculum.P-XX-topic-description.sql: Custom scenarios, warehouse staging mocks, and optimization benchmarks.📊 Progress TrackerTagProblem / ExerciseCore MechanicsDifficultySolutionLEET-01Recyclable and Low Fat ProductsBasic Filtering & Bitwise Logic🟢 EasyCode ↗LEET-02Find Customer RefereeNULL Defense & 3-Valued Logic (3VL)🟢 EasyCode ↗LEET-03Big CountriesCompound Predicates & Union Analysis🟢 EasyCode ↗LEET-04Article Views IDistinct In-Memory Evaluation🟢 EasyCode ↗LEET-05Invalid TweetsString Length Functions (LEN/DATALENGTH)🟢 EasyCode ↗LEET-06Replace Employee ID With Unique IdentifierNon-Clustered Left Outer Joins🟢 EasyCode ↗LEET-07Product Sales Analysis IMulti-table Key Matching🟢 EasyCode ↗LEET-08Customer Who Visited without TransactionsAnti-Joins (IS NULL) vs Aggregation🟢 EasyCode ↗LEET-09Rising TemperatureSelf-Joins with DATEDIFF Interval Logic🟢 EasyCode ↗LEET-10Average Time of Process per MachineMetric Aggregation & Process Grouping🟡 MediumCode ↗LEET-11Students and ExaminationsCartesian Cross Joins with Sparse Left Joins🟢 EasyCode ↗LEET-12Managers with at Least 5 Direct ReportsHierarchical Self Joins & HAVING Count🟡 MediumCode ↗LEET-14Confirmation RateConditional CASE WHEN Ratio Aggregation🟡 MediumCode ↗LEET-15Not Boring MoviesModulo Filtering (id % 2 != 0) & Sorting🟢 EasyCode ↗🛠️ Tech Stack & EnvironmentRDBMS Engine: Microsoft SQL Server (T-SQL)Local Dev Tooling: SQL Server Management Studio (SSMS) / Azure Data StudioPractice Platform: LeetCode SQL 50 Study Plan
