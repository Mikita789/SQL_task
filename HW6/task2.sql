DROP PROCEDURE IF EXISTS hello;

DELIMITER //
CREATE PROCEDURE hello()
BEGIN
DECLARE result VARCHAR(20);
SET @curr_time := CURTIME();


IF @curr_time BETWEEN '06:00:01' AND '12:00:00' THEN
SET result = 'Доброе утро';
ELSEIF @curr_time BETWEEN '12:00:01' AND '18:00:00' THEN
SET result = 'Добрый день';
ELSEIF @curr_time BETWEEN '18:00:01' AND '00:00:00' THEN
SET result = 'добрый вечер';
ELSEIF @curr_time BETWEEN '00:00:01' AND '06:00:00' THEN
SET result = 'доброй ночи';
END IF;

SELECT result AS 'res';

END//

DELIMITER ;

CALL hello();