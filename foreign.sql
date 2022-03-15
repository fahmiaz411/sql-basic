CREATE TABLE wishlist
(
	id int  not null auto_increment,
    id_product int not null,
    description text,
    primary key (id),
    constraint fk_wishlist_product foreign key (id_product) references products(id)
) engine = innodb;

ALTER TABLE wishlist
	DROP constraint fk_wishlist_product;
    
ALTER TABLE wishlist
	ADD constraint fk_wishlist_product foreign key (id_product) references products(id) ON UPDATE CASCADE;

show create table wishlist;

INSERT INTO wishlist(id_product, description) values (1, 'Makanan kesukaan');

DELETE FROM products WHERE id = 1;