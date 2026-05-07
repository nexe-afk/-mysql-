-- 01 创建存储过程 1

DELIMITER $$

-- 1. 创建简单存储过程
CREATE PROCEDURE sp_get_all_students()
BEGIN
    SELECT * FROM tb_student;
END$$

-- 2. 创建带参数的存储过程
CREATE PROCEDURE sp_get_student_by_sex(IN p_sex CHAR(2))
BEGIN
    SELECT * FROM tb_student WHERE Stu_Sex = p_sex;
END$$

-- 3. 创建带多个参数的存储过程
CREATE PROCEDURE sp_get_student_info(
    IN p_sex CHAR(2),
    IN p_status VARCHAR(10)
)
BEGIN
    SELECT * FROM tb_student 
    WHERE Stu_Sex = p_sex AND Stu_Status = p_status;
END$$

-- 4. 调用存储过程
-- CALL sp_get_all_students();
-- CALL sp_get_student_by_sex('男');
-- CALL sp_get_student_info('男', '在读');

DELIMITER ;
