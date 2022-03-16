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
WHERE id = 1;

INSERT INTO category (id, name) values 
('C3', "Lainnya");

INSERT INTO products (id, name, description, price, quantity) VALUES
(5, 'Roti', 'Roti bungkus', 2500, 20);

SELECT * FROM category c
JOIN products p ON (p.id_category = c.id); -- same with inner join

SELECT * FROM category c
INNER JOIN products p ON (p.id_category = c.id); -- same with join

SELECT * FROM category c
LEFT JOIN products p ON (p.id_category = c.id); -- show all null relation with products

SELECT * FROM category c
RIGHT JOIN products p ON (p.id_category = c.id); -- Show all null relation with category

SELECT * FROM category c
CROSS JOIN products p; -- show all with no relation

CREATE TABLE numbers
(
	id int not null,
    primary key (id)
) engine = innodb;

INSERT INTO numbers(id) values (1),(2),(3),(4),(5),(6), (7),(8),(9),(10);

SELECT * FROM numbers n1 CROSS JOIN numbers n2 ORDER BY n1.id, n2.id