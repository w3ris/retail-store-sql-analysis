-- 1.Revenue by category
SELECT category,
ROUND(SUM(quantity * price)::numeric, 2) AS total_revenue,
COUNT(*) AS num_sales
FROM sales
GROUP BY category
ORDER BY total_revenue DESC;

--2. Spending by gender
SELECT gender,
ROUND(SUM(quantity * price)::numeric, 2) AS total_revenue,
COUNT(*) AS num_sales,
ROUND(AVG(quantity * price)::numeric, 2) AS avg_per_purchase
FROM sales
GROUP BY gender
ORDER BY total_revenue DESC;

--3. Payment methods
SELECT payment_method,
ROUND(SUM(quantity * price)::numeric, 2) AS total_revenue,
COUNT(*) AS num_sales,
ROUND(AVG(quantity * price)::numeric, 2) AS avg_per_purchase
FROM sales
GROUP BY payment_method
ORDER BY num_sales DESC;

--4. Monthly revenue trend
SELECT DATE_TRUNC('month', TO_DATE(invoice_date, 'DD/MM/YYYY')) AS month,
ROUND(SUM(quantity * price)::numeric, 2)AS total_revenue,
COUNT(*)AS num_sales
FROM sales
GROUP BY month
ORDER BY month ASC;

--5. Last date in data (checks if March 2023 is partial)
SELECT MAX(TO_DATE(invoice_date, 'DD/MM/YYYY')) AS last_date
FROM sales;

--6. Revenue by mall
SELECT shopping_mall,
ROUND(SUM(quantity * price)::numeric, 2) AS total_revenue,
COUNT(*) AS num_sales,
ROUND(AVG(quantity * price)::numeric, 2) AS avg_per_purchase
FROM sales
GROUP BY shopping_mall
ORDER BY total_revenue DESC;

