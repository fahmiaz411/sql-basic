select * from products
where  quantity between 1 and 1000 and
(id = 1 or id = 2) and
name like '%f%' and
category is not null;

select * from products 
where category not in ('Makanan', 'Minuman') or name not in ('faz');

select * from products order by category desc, quantity desc