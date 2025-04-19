SELECT 
  device_type,
  AVG(sales) AS avg_order_value,
  COUNT(*) AS orders
FROM ecommerce
WHERE device_type IN ('Web', 'Mobile')
GROUP BY device_type;
