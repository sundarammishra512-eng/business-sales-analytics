
-- Monthly Revenue
SELECT strftime('%Y-%m', date) AS month,
SUM(quantity * price) AS revenue
FROM sales_data
GROUP BY month
ORDER BY month;

-- Revenue by Category
SELECT category,
SUM(quantity * price) AS revenue
FROM sales_data
GROUP BY category
ORDER BY revenue DESC;

-- Revenue by Region
SELECT region,
SUM(quantity * price) AS revenue
FROM sales_data
GROUP BY region
ORDER BY revenue DESC;
