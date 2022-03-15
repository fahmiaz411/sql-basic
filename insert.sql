insert into admin(first_name, last_name) select name, last_name 
from products as p, admin as a where p.id = (1) and a.id = (1);

insert into admin(first_name, last_name) values ('fahmi', 'aziz');

insert into products

(id, name, price, quantity) 

values 

(4, "eko", 10000, 3) 