alter table products
add column category enum 
('Makanan','Minuman','Lain-Lain')
after name,

modify id int not null