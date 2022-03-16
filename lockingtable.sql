-- for generating report purpose or other
-- read only

LOCK TABLES products READ;

SELECT * FROM products WHERE id = 4;

UPDATE products
SET quantity = quantity
WHERE id = 4;

UNLOCK TABLES;

-- read write

LOCK TABLES products WRITE;

SELECT * FROM products WHERE id = 4;

UPDATE products
SET quantity = quantity
WHERE id = 4;

UNLOCK TABLES;