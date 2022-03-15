CREATE TABLE wallet (
	id int not null auto_increment,
    id_customer int not null,
    balance int not null default 0,
    primary key (id),
    unique key id_customer (id_customer),
    foreign key  id_customer (id_customer) references customers(id)
) engine = innodb;

describe wallet;

INSERT INTO wallet (id_customer) values (1), (3);

SELECT c.email, w.balance FROM wallet w JOIN customers c ON (c.id = w.id_customer) WHERE w.id = 1; 