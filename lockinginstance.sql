-- for purpose to backup data it will block DDL (data definition language) to execute

-- LOCK INSTANCE only affect to other process / apps

LOCK INSTANCE FOR BACKUP;

-- try to change some modifications

ALTER TABLE products
ADD column sample varchar(100);

ALTER TABLE products
DROP column sample;

-- UNLOCK INSTANCE only the same app that do locking instance can unlock

UNLOCK INSTANCE;

-- excepting to locking instance DML (data manipulation language) not affected

SELECT * FROM products;

UPDATE products
SET quantity = quantity
WHERE id = 4;