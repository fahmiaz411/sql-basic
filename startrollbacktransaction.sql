START TRANSACTION; -- This is work in DML only not in DDL

INSERT INTO guestbooks (email, title, content)
VALUES
('contoh@gmail.com', 'contoh', 'contoh'),
('contoh@gmail.com', 'contoh', 'contoh'),
('contoh@gmail.com', 'contoh', 'contoh');

SELECT * FROM guestbooks;

COMMIT;

START TRANSACTION;

DELETE from guestbooks;

ROLLBACK;