-- 04 存储函数 1

DELIMITER $$

-- 1. 创建简单存储函数
CREATE FUNCTION fn_calculate_age(p_birthday DATE)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE v_age INT;
    SET v_age = TIMESTAMPDIFF(YEAR, p_birthday, CURDATE());
    RETURN v_age;
END$$

-- 2. 创建带条件判断的函数
CREATE FUNCTION fn_get_sex_name(p_sex CHAR(2))
RETURNS VARCHAR(10)
DETERMINISTIC
BEGIN
    DECLARE v_sex_name VARCHAR(10);
    IF p_sex = '男' THEN
        SET v_sex_name = 'Male';
    ELSEIF p_sex = '女' THEN
        SET v_sex_name = 'Female';
    ELSE
        SET v_sex_name = 'Unknown';
    END IF;
    RETURN v_sex_name;
END$$

-- 3. 使用函数
-- SELECT Stu_No, Stu_Name, Stu_Birthday, fn_calculate_age(Stu_Birthday) AS 年龄 FROM tb_student;
-- SELECT Stu_No, Stu_Name, Stu_Sex, fn_get_sex_name(Stu_Sex) AS 性别 EN FROM tb_student;

-- 4. 查看函数
SHOW FUNCTION STATUS WHERE Db = DATABASE();

-- 5. 删除函数
DROP FUNCTION IF EXISTS fn_calculate_age;
DROP FUNCTION IF EXISTS fn_get_sex_name;

DELIMITER ;
