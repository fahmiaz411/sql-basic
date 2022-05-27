DELIMITER //
CREATE FUNCTION calculateScore (
  score INT
)
RETURNS VARCHAR(50) DETERMINISTIC
BEGIN
  DECLARE comment VARCHAR(30);
  IF score <= 500 THEN 
     SET comment = 'Try again!';
  ELSE 
     SET comment = 'Awesome!';
    END IF;
  RETURN comment;
END; //

DROP FUNCTION IF EXISTS calculateScore //

SELECT calculateScore(500) //