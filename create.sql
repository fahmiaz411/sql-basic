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
)engine = innodb;

CREATE TABLE sellers
(
	id int not null auto_increment,
    name varchar(100) not null,
    name2 varchar(100),
    email varchar(100) not null,
    primary key (id),
    unique key email_unique (email),
    index name_index (name, name2)
) engine = innodb;

alter table sellers 
add index name_index (name, name2);

describe sellers;
show create table sellers;

