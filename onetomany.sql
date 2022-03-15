CREATE TABLE category (
	id varchar(10) not null,
    name varchar(100) not null,
    primary key (id)
) engine = innodb;

ALTER TABLE category
ADD primary key (id);

INSERT INTO category (id, name) VALUES ("C1","Makanan"), ("C2","Minuman");

ALTER TABLE products
DROP COLUMN category;

ALTER TABLE products
ADD COLUMN id_category varchar(10);

ALTER TABLE products
ADD CONSTRAINT id_category foreign key (id_category) references category(id);

SELECT * FROM products;

UPDATE products
SET	id_category = "C1"
WHERE id = 5;

SELECT p.name, p.price, c.name as category FROM products p JOIN category c ON (c.id = p.id_category)