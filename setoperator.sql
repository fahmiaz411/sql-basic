CREATE TABLE guestbooks
(
	id int not null auto_increment,
    email varchar(100),
    title varchar(200),
    content text,
    primary key (id)
) engine = innodb;

INSERT INTO guestbooks(email, title, content)
values 
('guest@gmail.com', 'Hello', 'Hello'),
('guest@gmail.com', 'Hello', 'Hello'),
('guest@gmail.com', 'Hello', 'Hello'),
('fahmi@gmail.com', 'Hello', 'Hello'),
('fahmi@gmail.com', 'Hello', 'Hello'),
('fahmi@gmail.com', 'Hello', 'Hello');

SELECT * FROM guestbooks; 

-- UNION

SELECT email FROM customers 
UNION
SELECT email FROM guestbooks;

-- UNION ALL

SELECT DISTINCT email FROM customers 
UNION ALL
SELECT DISTINCT email FROM guestbooks;

-- display by counting data

SELECT email, COUNT(email) FROM 
(SELECT email FROM customers UNION ALL SELECT email from guestbooks)
AS e 
GROUP BY email;

-- INTERSECT -> to display where value A is exist in value B
SELECT DISTINCT email FROM customers WHERE email IN 
(SELECT DISTINCT email FROM guestbooks);

SELECT DISTINCT c.email FROM customers c INNER JOIN guestbooks g ON (g.email = c.email);

-- MINUS -> to display where value A is not exist in value between

SELECT DISTINCT c.email, g.email FROM customers c LEFT JOIN guestbooks g ON (g.email = c.email)
WHERE g.email IS NULL;

SELECT DISTINCT email FROM customers WHERE email NOT IN (SELECT DISTINCT email FROM guestbooks)


