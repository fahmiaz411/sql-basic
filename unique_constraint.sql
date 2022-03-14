CREATE TABLE customers 
(
	id int not null auto_increment,
    email varchar(100) not null,
    first_name varchar(100) not null,
    last_name varchar(100) not null,
    primary key (id),
    unique key email_unique (email)
) engine = innodb;

DESCRIBE customers