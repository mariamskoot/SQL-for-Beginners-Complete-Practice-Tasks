# SQL for Beginners – Complete Practice Task

**From Zero to Queries**  
Official Internal Training Assignment | Database & Backend Department

A progressive, hands-on SQL training task designed for complete beginners. You will build a full relational database (`company_store`) for a small company that also runs an online store, starting from creating the database all the way to advanced queries, joins, subqueries, views, and indexes.

**Total Questions:** 133  
**Sections:** 14  
**Estimated Duration:** 3–5 working sessions  
**Supported Databases:** MySQL · PostgreSQL · SQLite · SQL Server

---

## Project Structure


PDF
sql_beginners_task.pdf
هعمل ريبو للتاسك ده وهخلي فايل sql لكل section
عايزة وصف الريبو + ريدمي بروفيشنال


Worked for 9s
وصف الريبو (GitHub About / Description):

Complete beginner-friendly SQL practice task (133 questions across 14 sections). Build a full company_store database from scratch — tables, constraints, data, queries, joins, subqueries, views & indexes. Ready-to-run SQL files per section.
README.md الاحترافي:

# SQL for Beginners – Complete Practice Task

**From Zero to Queries**  
Official Internal Training Assignment | Database & Backend Department

A progressive, hands-on SQL training task designed for complete beginners. You will build a full relational database (`company_store`) for a small company that also runs an online store, starting from creating the database all the way to advanced queries, joins, subqueries, views, and indexes.

**Total Questions:** 133  
**Sections:** 14  
**Estimated Duration:** 3–5 working sessions  
**Supported Databases:** MySQL · PostgreSQL · SQLite · SQL Server

---


Each file contains the SQL statements (and explanatory comments where needed) for its corresponding section.

---

## How to Use

1. Choose your database system (MySQL, PostgreSQL, SQLite, or SQL Server).
2. Create a new database or connection.
3. Open the section files **in order** (later sections depend on tables and data created earlier).
4. Run the statements one by one, verify the results, and debug as needed.
5. Adapt minor syntax differences when required (e.g. `AUTO_INCREMENT` vs `SERIAL`, `LIMIT` vs `TOP`).

> **Note:** Answers are intentionally not provided. The goal is to write, run, and debug every command yourself.

---

## Database Schema Overview

| Table            | Purpose                                      |
|------------------|----------------------------------------------|
| `departments`    | Company departments (HR, Sales, IT, etc.)    |
| `employees`      | Staff members linked to a department         |
| `projects`       | Projects run by departments                  |
| `customers`      | People who buy from the online store         |
| `products`       | Items sold in the store                      |
| `orders`         | Orders placed by customers                   |
| `order_items`    | Individual line items inside each order      |

---

## Learning Path

| Section | Topic                                      | Focus                                      |
|---------|--------------------------------------------|--------------------------------------------|
| 1       | Creating and Managing the Database         | CREATE / DROP / USE database               |
| 2       | Creating Tables and Choosing Data Types    | Tables + Primary Keys + Data Types         |
| 3       | Constraints and Relationships              | UNIQUE, NOT NULL, CHECK, FOREIGN KEY, DEFAULT |
| 4       | Altering Tables                            | ADD / DROP / RENAME columns & tables       |
| 5       | Inserting Data                             | Single & multi-row INSERT                  |
| 6       | Updating Data                              | Safe UPDATE with WHERE                     |
| 7       | Deleting Data                              | DELETE + Foreign Key impact                |
| 8       | Basic SELECT Queries                       | Columns, aliases, expressions              |
| 9       | Filtering with WHERE                       | Conditions, LIKE, IN, NULL, AND/OR         |
| 10      | Sorting and Limiting Results               | ORDER BY, LIMIT / OFFSET                   |
| 10B     | Ranking with TOP / RANK / ROW_NUMBER       | Window functions                           |
| 11      | Aggregate Functions and GROUP BY           | COUNT, SUM, AVG, MIN, MAX, HAVING          |
| 12      | Joins                                      | INNER, LEFT, multi-table joins             |
| 13      | Subqueries                                 | Nested & correlated subqueries             |
| 14      | Views, Indexes & Final Challenges          | Views, indexes + open-ended challenges     |

---

## Final Challenges (Section 14)

- Sales report per customer (orders count, total spent, most recent order)
- Department generating the most indirect “value” (salaries of employees linked to active projects)
- Design and integrate one brand-new table of your choice

---

## Credits

**Created by**  
Engineer Ahmed Ayman EL-Saey  
Database Engineer

**Solved by**  
Engineer Mariam Skoot 
Data Analyst

**Task Type:** Practical SQL Training Task  
**Level:** Beginner

---

Happy querying!  
Once you finish all 133 questions you will be comfortable creating a complete relational database from scratch and writing queries ranging from simple SELECTs to multi-table joins and subqueries.
