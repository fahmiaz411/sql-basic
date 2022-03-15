CREATE TABLE orders
(
	id int not null auto_increment,
    total int not null,
    order_date datetime not null default current_timestamp,
    primary key (id)
) engine = innodb;

describe orders;

CREATE TABLE orders_detail
(
	id_product int not null,
    id_order int not null,
    price int not null,
    quantity int not null,
    primary key (id_product, id_order)
) engine = innodb;

ALTER TABLE orders_detail
MODIFY id_product int not null;

show create table orders_detail;

ALTER TABLE orders_detail
ADD constraint id_product foreign key (id_product) references products(id),
ADD constraint id_order foreign key (id_order) references orders(id);

INSERT INTO orders (total) values (50000);
INSERT INTO orders_detail (id_product, id_order, price, quantity)
values 
(3,1,25000,1);

SELECT p.id as id_product, p.name as product, od.quantity FROM orders o
JOIN orders_detail od ON (od.id_order = o.id)
JOIN products p ON (od.id_product = p.id)
