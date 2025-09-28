MySQL is a popular open-source **Relational Database Management System (RDBMS)** that stores, organizes, and manages data efficiently. It supports both small applications and large-scale enterprise systems.

## Key Capabilities of MySQL

1. **Store and Organize Data**

   * Creates structured databases with tables, rows, and columns.
   * Supports various data types (text, numbers, dates, JSON, etc.).

2. **Retrieve Data with Queries**

   * Use `SELECT`, `WHERE`, `ORDER BY`, `GROUP BY`, etc.
   * Filter, sort, and analyze data easily.

3. **Data Manipulation (CRUD Operations)**

   * **C**reate → `INSERT` new records.
   * **R**ead → `SELECT` data.
   * **U**pdate → `UPDATE` existing records.
   * **D**elete → `DELETE` rows.

4. **Joins and Relationships**

   * Connect multiple tables using `INNER JOIN`, `LEFT JOIN`, etc.
   * Enforce **foreign keys** to maintain relationships.

5. **Aggregate & Analytical Functions**

   * Perform calculations like `SUM()`, `AVG()`, `COUNT()`, `MAX()`, `MIN()`.
   * Generate reports and insights.

6. **Subqueries and Views**

   * Write **subqueries** for complex filtering.
   * Create **views** to simplify repeated analysis.

7. **Security and Access Control**

   * User authentication and privileges.
   * Control access at database, table, or column level.

8. **Scalability and Performance**

   * Handles millions of records.
   * Optimize with **indexes**, caching, and query tuning.

9. **Transactions & Data Integrity**

   * Supports **ACID properties** (Atomicity, Consistency, Isolation, Durability).
   * Rollback and commit ensure safe updates.

10. **Integration & Portability**

    * Works with programming languages like Python, Java, PHP, etc.
    * Runs on multiple platforms (Windows, Linux, macOS).
      
1. Use SELECT, WHERE, ORDER BY, GROUP BY

SELECT: Retrieves specific columns or all columns (*) from a table.

WHERE: Filters rows based on conditions (e.g., WHERE age > 25).

ORDER BY: Sorts results in ascending (ASC) or descending (DESC) order.

GROUP BY: Groups rows based on one or more columns, often used with aggregate functions.

**Code**
SELECT department, COUNT(*) AS total_employees
FROM employees
WHERE salary > 50000
GROUP BY department
ORDER BY total_employees DESC;

2. Use Joins (INNER, LEFT, RIGHT)

INNER JOIN: Returns rows with matching values in both tables.

LEFT JOIN: Returns all rows from the left table, and matched rows from the right table.

RIGHT JOIN: Returns all rows from the right table, and matched rows from the left table.

**Code**
SELECT e.name, d.department_name
FROM employees e
INNER JOIN departments d ON e.department_id = d.id;

3. Write Subqueries

A subquery is a query inside another query.

Can be used in WHERE, FROM, or SELECT clauses.

**Code**
SELECT name, salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);

4. Use Aggregate Functions (SUM, AVG, COUNT, MAX, MIN)

SUM(): Adds up values.

AVG(): Returns average value.

COUNT(): Counts rows.

MAX() / MIN(): Returns highest or lowest value.

**Code**
SELECT department, AVG(salary) AS avg_salary, SUM(salary) AS total_salary
FROM employees
GROUP BY department;

5. Create Views for Analysis

A view is a virtual table created from a query result.

Simplifies complex queries and improves readability.
**Code**
CREATE VIEW high_salary_employees AS
SELECT name, department, salary
FROM employees
WHERE salary > 80000;

6. Optimize Queries with Indexes

Indexes speed up query performance by reducing full table scans.

Best used on frequently searched columns (WHERE, JOIN, ORDER BY).

Too many indexes can slow down INSERT/UPDATE.

**Code**
CREATE INDEX idx_department ON employees(department_id);





