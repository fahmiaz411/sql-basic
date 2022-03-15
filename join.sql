SELECT * FROM wishlist
JOIN products ON (products.id = wishlist.id_product);

SELECT w.id as idw, p.id as pid, w.description, p.name, p.category, c.email as customer FROM wishlist w
JOIN products p ON (p.id = w.id_product)
JOIN customers c ON (c.id = w.id_customer);

ALTER TABLE wishlist
add column id_customer int;

ALTER TABLE wishlist
ADD CONSTRAINT fk_wishlist_customer foreign key (id_customer)
REFERENCES customers(id);

SELECT * FROM wishlist;

UPDATE wishlist
SET id_customer = 1
WHERE id = 1

