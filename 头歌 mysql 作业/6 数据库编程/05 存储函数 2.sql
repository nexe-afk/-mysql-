-- 05 存储函数 2 - 进阶

DELIMITER $$

-- 1. 带循环的存储函数
CREATE FUNCTION fn_factorial(n INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE result INT DEFAULT 1;
    DECLARE i INT DEFAULT 1;
    
    IF n < 0 THEN
        RETURN NULL;
    END IF;
    
    WHILE i <= n DO
        SET result = result * i;
        SET i = i + 1;
    END WHILE;
    
    RETURN result;
END$$

-- 2. 使用游标的函数（简化版）
CREATE FUNCTION fn_get_student_name(p_stu_no CHAR(12))
RETURNS VARCHAR(50)
READS SQL DATA
BEGIN
    DECLARE v_name VARCHAR(50);
    SELECT Stu_Name INTO v_name FROM tb_student WHERE Stu_No = p_stu_no;
    RETURN v_name;
END$$

-- 3. 字符串处理函数
CREATE FUNCTION fn_format_student_no(p_no CHAR(12))
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
    DECLARE v_formatted VARCHAR(20);
    SET v_formatted = CONCAT(
        SUBSTRING(p_no, 1, 4), '-',
        SUBSTRING(p_no, 5, 2), '-',
        SUBSTRING(p_no, 7, 2), '-',
        SUBSTRING(p_no, 9, 4)
    );
    RETURN v_formatted;
END$$

-- 4. 使用函数
-- SELECT fn_factorial(5);
-- SELECT fn_get_student_name('201904010101');
-- SELECT fn_format_student_no('201904010101');

-- 5. 删除函数
DROP FUNCTION IF EXISTS fn_factorial;
DROP FUNCTION IF EXISTS fn_get_student_name;
DROP FUNCTION IF EXISTS fn_format_student_no;

DELIMITER ;
