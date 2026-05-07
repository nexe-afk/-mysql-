-- 03 存储过程 - 进阶

DELIMITER $$

-- 1. 带 OUT 参数的存储过程
CREATE PROCEDURE sp_get_student_count(
    IN p_sex CHAR(2),
    OUT p_count INT
)
BEGIN
    SELECT COUNT(*) INTO p_count
    FROM tb_student
    WHERE Stu_Sex = p_sex;
END$$

-- 2. 带 INOUT 参数的存储过程
CREATE PROCEDURE sp_increment_value(
    INOUT p_value INT
)
BEGIN
    SET p_value = p_value + 1;
END$$

-- 3. 存储过程返回多个结果集
CREATE PROCEDURE sp_get_school_stats()
BEGIN
    SELECT COUNT(*) AS 总学生数 FROM tb_student;
    SELECT COUNT(*) AS 总班级数 FROM tb_class;
    SELECT Stu_Sex, COUNT(*) AS 人数 FROM tb_student GROUP BY Stu_Sex;
END$$

-- 4. 调用带 OUT 参数的存储过程
-- SET @count = 0;
-- CALL sp_get_student_count('男', @count);
-- SELECT @count;

-- 5. 调用带 INOUT 参数的存储过程
-- SET @value = 10;
-- CALL sp_increment_value(@value);
-- SELECT @value;

DELIMITER ;
