UPDATE ecommerce SET discount = 0 WHERE discount IS NULL;
UPDATE ecommerce SET shipping_cost = 0 WHERE shipping_cost IS NULL;
