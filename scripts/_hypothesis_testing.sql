SELECT device_type, AVG(sales) AS avg_sales, COUNT(*) AS n
FROM ecommerce
GROUP BY device_type;

-- 3.2 Discounted vs Non-discounted Sales
SELECT discount > 0 AS is_discounted, AVG(sales) AS avg_sales, COUNT(*) AS n
FROM ecommerce
GROUP BY is_discounted;

-- 3.3 Profit by Order Priority
SELECT order_priority, AVG(profit) AS avg_profit, COUNT(*) AS n
FROM ecommerce
GROUP BY order_priority;

-- 3.4 Monthly Sales for Seasonality
SELECT EXTRACT(MONTH FROM order_date) AS month, AVG(sales) AS avg_monthly_sales, COUNT(*) AS n
FROM ecommerce
GROUP BY month
ORDER BY month;

-- 3.5 Shipping Cost by Product Category
SELECT product_category, AVG(shipping_cost) AS avg_shipping, COUNT(*) AS n
FROM ecommerce
GROUP BY product_category;
