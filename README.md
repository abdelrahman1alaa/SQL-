# 📘 SQL — From Zero to Hero

> **This repository** contains my personal notes and explanations for the **SQL course by Eng. Baraa**.  
> I re-explained everything in my own simple way to make it easier for beginners.  
> All credit for the original course goes to **Eng. Baraa** 🙏

---

## ⚠️ Disclaimer

> This is **not** the official course material.  
> These are my own **study notes**, based on **Eng. Baraa's SQL course**.  
> The goal is to simplify the concepts for Arabic-speaking beginners.

---

## 🗂️ Table of Contents

- [About This Repo](#-about-this-repo)
- [Level 1 — Beginner](#-level-1--beginner)
- [Level 2 — Intermediate](#-level-2--intermediate)
- [Level 3 — Advanced](#-level-3--advanced)
- [Learning Roadmap](#️-learning-roadmap)
- [Resources](#-resources)

---

## 📁 About This Repo

| | |
|---|---|
| 🎓 **Original Course** | SQL Course by Eng. Baraa |
| 📝 **Notes Language** | Arabic (عربي) |
| 🎯 **Target Audience** | Arabic-speaking beginners |
| ✍️ **Notes By** | Me — re-explained in my own simple style |

This repo is structured into **3 levels**, matching the course progression.  
Each level has its own folder with notes, examples, and queries you can run.

---

## 🟢 Level 1 — Beginner

> **Goal:** Understand what SQL is and how to fetch & manage basic data.

### What You'll Learn:
- What is a Database & a Table?
- `SELECT` — fetching data
- `WHERE` — filtering rows
- `ORDER BY` — sorting results
- `LIMIT` — limiting results
- `DISTINCT` — removing duplicates
- `INSERT`, `UPDATE`, `DELETE` — managing data
- `CREATE TABLE` — building your first table

### Quick Example:
```sql
-- Get all students from Cairo, sorted by age
SELECT name, age
FROM students
WHERE city = 'Cairo'
ORDER BY age ASC;
```

---

## 🟡 Level 2 — Intermediate

> **Goal:** Join tables together, group data, and use built-in functions.

### What You'll Learn:
- Aggregate Functions: `COUNT`, `AVG`, `SUM`, `MAX`, `MIN`
- `GROUP BY` — grouping data
- `HAVING` — filtering after grouping
- `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN` — linking tables
- `LIKE`, `IN`, `BETWEEN` — advanced filtering
- String & Date functions

### Quick Example:
```sql
-- Number of students per city (only cities with more than 10 students)
SELECT city, COUNT(*) AS total
FROM students
GROUP BY city
HAVING COUNT(*) > 10;
```

---

## 🔴 Level 3 — Advanced

> **Goal:** Write complex queries, optimize performance, and understand database internals.

### What You'll Learn:
- **Subqueries** — queries inside queries
- **CTEs** (Common Table Expressions) — named temporary queries
- **Window Functions** — `RANK()`, `ROW_NUMBER()`, `LAG()`, `SUM() OVER()`
- **Indexes** — speeding up searches
- **Transactions** — ensuring data integrity
- **Views** — saved virtual tables
- **Stored Procedures** — reusable SQL code blocks
- **Query Optimization** — using `EXPLAIN` and best practices

### Quick Example:
```sql
-- Rank students by age within each city
SELECT
    name,
    city,
    age,
    RANK() OVER (PARTITION BY city ORDER BY age DESC) AS rank_in_city
FROM students;
```

---

## 🛣️ Learning Roadmap

```
Week 1–2  ──►  Level 1  (SELECT, INSERT, UPDATE, DELETE, CREATE TABLE)
Week 3–4  ──►  Level 2  (JOINs, GROUP BY, HAVING, Functions)
Week 5–8  ──►  Level 3  (CTEs, Window Functions, Indexes, Stored Procedures)
After     ──►  Practice on real projects + LeetCode Database problems
```

---

## 💡 General Tips

- ✅ Always use `WHERE` to filter before fetching everything
- ✅ Use `AS` aliases to make your queries readable
- ✅ Always `BACKUP` before running `DELETE` or `UPDATE`
- ✅ Use `LIMIT` while learning to avoid fetching millions of rows
- ✅ Index the columns you search frequently
- ⚠️ `DELETE` without `WHERE` deletes **ALL your data** — be careful!

---

## 📚 Resources

| Resource | Link |
|----------|------|
| W3Schools SQL | https://www.w3schools.com/sql |
| SQLZoo | https://sqlzoo.net |
| Mode SQL Tutorial | https://mode.com/sql-tutorial |
| LeetCode Database | https://leetcode.com/problemset/database |

---

## 🤝 Credits

All credit goes to **Eng. Baraa** for the original SQL course content.  
These notes are purely my own simplified re-explanation for learning purposes.

---

<div align="center">

⭐ **If these notes helped you, consider starring the repo!**  
📢 Share it with anyone learning SQL 

</div>
