SELECT id,
	category,
    price,
    IF(price > 15000, "Mahal", IF(price > 10000, "Murah", "Murah banget" )) AS 'mahal?',
	IFNULL(description, '-') AS 'description',
    CASE category
		WHEN 'Makanan' THEN 'Enak'
        WHEN 'Minuman' THEN 'Segar'
        ELSE 'Apa itu?'
        END AS 'response'	
FROM products; 