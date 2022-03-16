START TRANSACTION;

-- in apps 1

SELECT * FROM products WHERE id = 1 FOR UPDATE;

-- in apps 2

SELECT * FROM products WHERE id = 2 FOR UPDATE;

-- then 

-- in apps 1

SELECT * FROM products WHERE id = 2 FOR UPDATE;

-- in apps 2

SELECT * FROM products WHERE id = 1 FOR UPDATE;