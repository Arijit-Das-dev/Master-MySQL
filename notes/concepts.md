# MySQL Mastery Roadmap

A structured, phase-wise path from zero to production-ready MySQL skills, tailored for a data analytics track.

---

## Phase 0: Setup (Day 1)

- Install **MySQL Community Server** + **MySQL Workbench** (GUI) on your machine
- Alternative: use **XAMPP/WAMP** if you want it bundled with a web server
- Learn to use the CLI (`mysql -u root -p`) alongside the GUI — CLI muscle memory matters for interviews and server work
- Set up a practice database: download **Sakila** (sample DVD rental DB) and **Employees** sample DB from MySQL's official docs — you'll use these throughout

---

## Phase 1: Fundamentals (Week 1–2)

**Goal:** Understand relational database structure and basic querying.

1. What is RDBMS vs NoSQL (you already know Mongo — contrast it deliberately)
2. Databases, Tables, Rows, Columns, Data Types
   - Numeric: `INT`, `DECIMAL`, `FLOAT`
   - String: `VARCHAR`, `CHAR`, `TEXT`
   - Date/Time: `DATE`, `DATETIME`, `TIMESTAMP`
3. `CREATE DATABASE`, `CREATE TABLE`, `DROP`, `ALTER`
4. **CRUD basics**
   - `SELECT`, `INSERT`, `UPDATE`, `DELETE`
5. `WHERE` clause + comparison/logical operators (`AND`, `OR`, `IN`, `BETWEEN`, `LIKE`, `IS NULL`)
6. `ORDER BY`, `LIMIT`, `OFFSET`
7. `DISTINCT`

**Checkpoint project:** Build a small "Students" or "Inventory" DB from scratch and write 15–20 basic queries against it.

---

## Phase 2: Intermediate — Relationships & Aggregation (Week 3–4)

**Goal:** Move from single-table to multi-table thinking.

1. **Keys & Constraints**
   - `PRIMARY KEY`, `FOREIGN KEY`, `UNIQUE`, `NOT NULL`, `DEFAULT`, `CHECK`
   - Auto-increment
2. **Normalization** (1NF, 2NF, 3NF) — understand *why* tables are split, not just how
3. **Joins** — this is the single most important skill in this phase
   - `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`, `FULL OUTER JOIN` (MySQL emulation via `UNION`)
   - `SELF JOIN`, `CROSS JOIN`
   - Multi-table joins (3+ tables)
4. **Aggregate functions**
   - `COUNT`, `SUM`, `AVG`, `MIN`, `MAX`
5. `GROUP BY` and `HAVING` (vs `WHERE`)
6. **Subqueries**
   - Scalar subqueries, correlated subqueries
   - Subqueries in `WHERE`, `FROM`, `SELECT`

**Checkpoint project:** Use the Sakila DB — write queries like "top 5 customers by rental spend," "films never rented," "revenue per store per month."

---

## Phase 3: Advanced Querying (Week 5–6)

**Goal:** Write analytics-grade SQL, not just textbook SQL.

1. **Window Functions** (critical for data analytics)
   - `ROW_NUMBER()`, `RANK()`, `DENSE_RANK()`
   - `LAG()`, `LEAD()`
   - `SUM()/AVG() OVER (PARTITION BY ... ORDER BY ...)`
   - Running totals, moving averages
2. **Common Table Expressions (CTEs)**
   - `WITH` clause, recursive CTEs
3. **Set operations:** `UNION`, `UNION ALL`
4. **CASE WHEN** for conditional logic in queries
5. **String functions:** `CONCAT`, `SUBSTRING`, `TRIM`, `REPLACE`, `LOWER/UPPER`
6. **Date functions:** `DATEDIFF`, `DATE_ADD`, `DATE_FORMAT`, `NOW()`, `EXTRACT`
7. **Views** — creating and using virtual tables
8. **Stored Procedures & Functions** (basic)
9. **Triggers** (basic understanding)

**Checkpoint project:** Recreate a pandas `groupby`/`rolling` operation you've already done in Python — but entirely in MySQL, using window functions. This directly reinforces what you already know.

---

## Phase 4: Database Design & Administration (Week 7)

**Goal:** Understand how real systems are structured and maintained.

1. **ER Diagrams** — design a schema from a real-world scenario before touching code
2. **Indexing**
   - B-Tree indexes, when to index, composite indexes
   - `EXPLAIN` — reading query execution plans (very important)
3. **Transactions**
   - `COMMIT`, `ROLLBACK`, `SAVEPOINT`
   - ACID properties
   - Isolation levels (conceptual)
4. **User management & permissions**
   - `GRANT`, `REVOKE`, creating users/roles
5. **Backup & restore** (`mysqldump`)

---

## Phase 5: Performance & Optimization (Week 8)

**Goal:** Write queries that scale, not just queries that work.

1. Query optimization basics — avoiding `SELECT *`, index usage
2. Understanding slow query logs
3. Normalization vs. denormalization trade-offs for analytics workloads
4. Partitioning (conceptual overview)
5. Connection pooling (conceptual, relevant since you use FastAPI/Flask)

---

## Phase 6: Integration with Your Stack (Week 9+)

**Goal:** Connect MySQL to the tools you already use.

1. **Python ↔ MySQL**
   - `mysql-connector-python` or `SQLAlchemy`
   - Read query results directly into `pandas.DataFrame` via `pd.read_sql()`
2. Build a small ETL: pull data from MySQL → clean with Pandas → push back or export
3. Connect MySQL to a **FastAPI/Flask** backend (CRUD API)
4. Try a small **Streamlit dashboard** reading live from MySQL — ties directly into your JARVIS-style project experience
5. Compare querying patterns: MySQL vs MongoDB vs PostgreSQL (you already touch all three — write a short personal note on when to use which)

---

## Practice Resources (in order of use)

| Stage | Resource |
|---|---|
| Fundamentals | [Mode Analytics SQL Tutorial](https://mode.com/sql-tutorial/) or W3Schools MySQL |
| Query practice | **LeetCode SQL** (you already use LeetCode — do the "Database" tag, ~60 problems) |
| Real datasets | Sakila DB, Employees sample DB, Kaggle datasets imported into MySQL |
| Advanced | **StrataScratch** or **HackerRank SQL** (Advanced track) |
| Reference | Official MySQL 8.0 Reference Manual (bookmark it, don't read cover to cover) |

---

## Suggested Weekly Cadence

- **Theory:** 30–40% of time
- **Hands-on querying:** 60–70% of time (this ratio matters — SQL is a "do" skill, not a "read" skill)
- End each phase with a checkpoint project using a real dataset, not toy data

---

## Milestone Test (after Phase 3)

Before moving to Phase 4, you should be able to, without looking anything up:
- Join 3 tables and aggregate with a `GROUP BY` + `HAVING`
- Write a window function to rank rows within groups
- Write a CTE that simplifies a nested subquery
- Explain the difference between `WHERE` and `HAVING`, and `UNION` vs `UNION ALL`

If any of these feel shaky, loop back before advancing — the later phases build directly on this fluency.