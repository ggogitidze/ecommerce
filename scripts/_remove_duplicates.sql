DELETE FROM ecommerce a
USING ecommerce b
WHERE a.ctid < b.ctid
  AND a.order_date = b.order_date
  AND a.customer_id = b.customer_id
  AND a.product = b.product;
