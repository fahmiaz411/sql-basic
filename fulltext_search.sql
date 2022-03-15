SELECT * FROM products WHERE name LIKE '%a%';

SELECT * FROM products WHERE
MATCH(name, description)
AGAINST('ba' IN natural language mode);

SELECT * FROM products WHERE
MATCH(name, description)
AGAINST('+mie (>rusuk <bakso)' IN boolean mode);

SELECT * FROM products WHERE
MATCH(name, description)
AGAINST('rusuk' WITH query expansion)