-- Task 6: Sales Trend Analysis Using Aggregations (PostgreSQL)
-- Dataset: online_sales(order_id, order_date, amount, product_id)
-- Save this file as: task6_sales_trend.sql

-- 1) Create orders table (run this once)
CREATE TABLE IF NOT EXISTS orders (
  order_id TEXT PRIMARY KEY,       -- unique identifier for each order
  order_date DATE NOT NULL,        -- date of the order (YYYY-MM-DD)
  amount NUMERIC(10,2) NOT NULL,   -- order amount in currency (two decimal places)
  product_id INTEGER               -- product identifier
);

-- 2) Import CSV into the 'orders' table using psql client (example):
-- From terminal (client-side): \copy orders(order_id, order_date, amount, product_id) FROM '/full/path/to/online_sales.csv' WITH CSV HEADER;
-- Note: Use \copy if the CSV is on your client machine; use COPY FROM if the CSV is on the DB server machine.
-- See: https://www.postgresql.org/docs/current/sql-copy.html

-- 3) Monthly revenue and distinct order volume grouped by year and month
SELECT
  EXTRACT(YEAR FROM order_date) AS year,
  EXTRACT(MONTH FROM order_date) AS month,
  SUM(amount) AS total_revenue,
  COUNT(DISTINCT order_id) AS order_count
FROM orders
GROUP BY year, month
ORDER BY year, month;

-- 4) Alternative: using date_trunc for a single-month column (easier sorting/labeling)
SELECT
  date_trunc('month', order_date)::date AS month_start,
  SUM(amount) AS total_revenue,
  COUNT(DISTINCT order_id) AS order_count
FROM orders
GROUP BY month_start
ORDER BY month_start;

-- 5) Top 3 months by total revenue (across all years)
SELECT year, month, total_revenue FROM (
  SELECT
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS total_revenue
  FROM orders
  GROUP BY year, month
) AS monthly
ORDER BY total_revenue DESC
LIMIT 3;

-- 6) Filter results for a specific time period (example: 2024 only)
SELECT
  EXTRACT(YEAR FROM order_date) AS year,
  EXTRACT(MONTH FROM order_date) AS month,
  SUM(amount) AS total_revenue,
  COUNT(DISTINCT order_id) AS order_count
FROM orders
WHERE order_date >= '2024-01-01' AND order_date < '2025-01-01'
GROUP BY year, month
ORDER BY year, month;

-- 7) Handling NULLs in aggregates: SUM and COUNT ignore NULLs by default.
-- If you want to treat NULL amounts as 0 use COALESCE(amount,0) inside SUM: SUM(COALESCE(amount,0))

-- 8) Save the monthly aggregation to a persistent results table
CREATE TABLE IF NOT EXISTS monthly_sales AS
SELECT
  date_trunc('month', order_date)::date AS month_start,
  SUM(amount) AS total_revenue,
  COUNT(DISTINCT order_id) AS order_count
FROM orders
GROUP BY month_start
ORDER BY month_start;

-- End of script
