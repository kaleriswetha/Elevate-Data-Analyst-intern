# Sales Trend Analysis (Task 6) - PostgreSQL

This repository contains a guided solution for **Task 6: Sales Trend Analysis Using Aggregations** from the DATA ANALYST INTERNSHIP task sheet.

## Files provided
- `online_sales.csv` : synthetic sample dataset with columns (order_id, order_date, amount, product_id)
- `task6_sales_trend.sql` : SQL script containing CREATE TABLE, import instructions, aggregation queries, and more
- `sample_monthly_revenue.csv` : sample output of the monthly aggregation (generated below)
- `README_TASK6.md` : this file

## How to use
1. Install PostgreSQL on your Mac (options shown in project instructions).
2. Create a database (e.g., `createdb onlinesales`) and run the `task6_sales_trend.sql` script to create tables and execute queries.
3. Import `online_sales.csv` into the `orders` table using the psql client \copy command.
4. Run the aggregation queries in `task6_sales_trend.sql` or directly in psql / pgAdmin to get monthly revenue and order counts.

