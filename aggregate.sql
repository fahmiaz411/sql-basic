SELECT COUNT(id) as 'count' FROM products;
SELECT MAX(price) as 'termahal' FROM products;
SELECT MIN(price) as 'termurah' FROM products;
SELECT AVG(price) as 'rata-rata' FROM products;

SELECT SUM(quantity) as 'totalqty', category FROM products
WHERE price < 20000
GROUP BY category
HAVING totalqty > 1;

