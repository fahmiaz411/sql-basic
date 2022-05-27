DELIMITER $$ -- For Detect Single Statements

CREATE PROCEDURE GetProducts()
BEGIN
	SELECT *
	FROM products
END$$
DELIMITER ;

-- Call
CALL GetProducts()

-- Drop
DROP PROCEDURE IF EXISTS GetProducts;

-- Param [IN | OUT | INOUT] parameter_name datatype[(length)]
DELIMITER $$ -- For Detect Single Statements

-- IN param
CREATE PROCEDURE GetProducts(IN p_id int)
BEGIN
	SELECT *
	FROM products
    WHERE id = p_id
END$$
DELIMITER ;

CALL GetProducts(1);

-- OUT param

DELIMITER $$ -- For Detect Single Statements

CREATE PROCEDURE GetProducts(IN p_id int, OUT total int)
BEGIN
	SELECT COUNT(id)
    INTO total
	FROM products
    WHERE id = p_id
END$$
DELIMITER ;

CALL GetProducts(1, @total);
SELECT @total as Total;

-- INOUT param

DELIMITER $$

CREATE PROCEDURE SetCounter(
	INOUT counter INT,
    IN inc INT
)
BEGIN
	SET counter = counter + inc;
END$$

DELIMITER ;

SET @counter = 1;
CALL SetCounter(@counter,1); -- 2
CALL SetCounter(@counter,1); -- 3
CALL SetCounter(@counter,5); -- 8
SELECT @counter; -- 8