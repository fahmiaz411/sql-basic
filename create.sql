create table admin(
id int not null auto_increment,
first_name varchar(100),
last_name varchar(100),
primary key(id)
);

CREATE TABLE products (
id varchar(10) not null,
name varchar(100) not null,
description text,
price int unsigned not null,
quantity int unsigned not null default 0,
created_at timestamp not null default current_timestamp
)engine = innodb