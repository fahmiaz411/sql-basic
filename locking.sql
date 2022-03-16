START TRANSACTION; -- this is auto lock will affect in other apps

SELECT * FROM guestbooks;

UPDATE guestbooks
SET title = "New"
WHERE id = 1;

ROLLBACK;
COMMIT;

START TRANSACTION; -- this is select manual to lock

SELECT * FROM products WHERE id = 4 FOR UPDATE;

UPDATE products
SET quantity = quantity - 1
WHERE id = 4;

commit;