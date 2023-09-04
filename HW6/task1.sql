DROP PROCEDURE IF EXISTS ins_user;

DELIMITER //

CREATE PROCEDURE ins_user(IN user_id_clone INT)
BEGIN
    DECLARE user_exists INT DEFAULT 0;
    
    START TRANSACTION;
    
    SELECT COUNT(*) INTO user_exists FROM users WHERE id = user_id_clone;
    
    IF user_exists > 0 THEN
        INSERT INTO clone_users_table (id, firstname, lastname, email)
        SELECT id, firstname, lastname, email
        FROM users
        WHERE id = user_id_clone;
        
        COMMIT;
        
        SELECT 'Строка успешно скопирована' AS message;
    ELSE
        ROLLBACK;
        
        SELECT 'Строка не найдена :(' AS message;
    END IF;
END //

DELIMITER ;

CALL ins_user(777);