alter table products
add column category enum 
('Makanan','Minuman','Lain-Lain')
after name,

modify id int not null;

ALTER TABLE customers
	ADD constraint email_unique UNIQUE (email);
    
ALTER TABLE customers
	DROP constraint email_unique;

INSERT INTO customers(email, first_name, last_name)
VALUES ("soni@gmail.com", "soni", "az");

INSERT INTO products(id, name, category, price, quantity)
VALUES (4, 'Permen', 'Makanan', 1000, 50);

ALTER TABLE products
ADD CONSTRAINT price_check CHECK (price > 2000 AND price < 100000);

ALTER TABLE products
	DROP constraint price_check; 
    
alter table products
add fulltext product_search (name, description);

alter table products_searchs

drop index product
