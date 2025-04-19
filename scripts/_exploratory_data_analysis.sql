SELECT DATE_TRUNC('month', order_date) AS month, SUM(sales) AS revenue
FROM ecommerce
GROUP BY month
ORDER BY month;

-- 2.2 Top 10 Products by Revenue
SELECT product, SUM(sales) AS revenue
FROM ecommerce
GROUP BY product
ORDER BY revenue DESC
LIMIT 10;

-- 2.3 Average Order Value by Device
SELECT device_type, ROUND(AVG(sales), 2) AS avg_order_value
FROM ecommerce
GROUP BY device_type;

-- 2.4 Discount Impact
SELECT discount > 0 AS is_discounted, COUNT(*) AS orders, SUM(sales) AS revenue
FROM ecommerce
GROUP BY is_discounted;

-- 2.5 Order Priority vs Profit
SELECT order_priority, ROUND(AVG(profit), 2) AS avg_profit
FROM ecommerce
GROUP BY order_priority
ORDER BY avg_profit DESC;

-- 2.6 Seasonal Trends
SELECT EXTRACT(MONTH FROM order_date) AS month, SUM(sales) AS total_sales
FROM ecommerce
GROUP BY month
ORDER BY month;

-- 2.7 Shipping Cost by Product Category
SELECT product_category, ROUND(AVG(shipping_cost), 2) AS avg_shipping_cost
FROM ecommerce
GROUP BY product_category
ORDER BY avg_shipping_cost DESC;
