SELECT * FROM products WHERE price > (SELECT AVG(price) FROM products);

SELECT MIN(price) FROM 
	(SELECT price FROM category c INNER JOIN products p ON (p.id_category = c.id)) 
as cp