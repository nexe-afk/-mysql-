-- 06 流程控制与循环：求 a 的 i 次方

DELIMITER $$

-- 1. 使用 WHILE 循环求 a 的 i 次方
CREATE FUNCTION fn_power_while(a INT, i INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE result INT DEFAULT 1;
    DECLARE counter INT DEFAULT 0;
    
    IF i = 0 THEN
        RETURN 1;
    END IF;
    
    IF i < 0 THEN
        RETURN NULL;
    END IF;
    
    WHILE counter < i DO
        SET result = result * a;
        SET counter = counter + 1;
    END WHILE;
    
    RETURN result;
END$$

-- 2. 使用 REPEAT 循环求 a 的 i 次方
CREATE FUNCTION fn_power_repeat(a INT, i INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE result INT DEFAULT 1;
    DECLARE counter INT DEFAULT 0;
    
    IF i = 0 THEN
        RETURN 1;
    END IF;
    
    IF i < 0 THEN
        RETURN NULL;
    END IF;
    
    REPEAT
        SET result = result * a;
        SET counter = counter + 1;
    UNTIL counter >= i
    END REPEAT;
    
    RETURN result;
END$$

-- 3. 使用 LOOP 循环求 a 的 i 次方
CREATE FUNCTION fn_power_loop(a INT, i INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE result INT DEFAULT 1;
    DECLARE counter INT DEFAULT 0;
    
    IF i = 0 THEN
        RETURN 1;
    END IF;
    
    IF i < 0 THEN
        RETURN NULL;
    END IF;
    
    calc_loop: LOOP
        IF counter >= i THEN
            LEAVE calc_loop;
        END IF;
        SET result = result * a;
        SET counter = counter + 1;
    END LOOP calc_loop;
    
    RETURN result;
END$$

-- 4. 测试函数
-- SELECT fn_power_while(2, 10);  -- 1024
-- SELECT fn_power_repeat(2, 10);  -- 1024
-- SELECT fn_power_loop(2, 10);    -- 1024

-- 5. 删除函数
DROP FUNCTION IF EXISTS fn_power_while;
DROP FUNCTION IF EXISTS fn_power_repeat;
DROP FUNCTION IF EXISTS fn_power_loop;

DELIMITER ;
