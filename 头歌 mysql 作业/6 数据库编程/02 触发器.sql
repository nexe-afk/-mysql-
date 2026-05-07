-- 02 触发器

DELIMITER $$

-- 1. 创建 BEFORE INSERT 触发器
CREATE TRIGGER trg_student_before_insert
BEFORE INSERT ON tb_student
FOR EACH ROW
BEGIN
    IF NEW.Stu_Password IS NOT NULL THEN
        SET NEW.Stu_Password = MD5(NEW.Stu_Password);
    END IF;
END$$

-- 2. 创建 AFTER INSERT 触发器
CREATE TRIGGER trg_student_after_insert
AFTER INSERT ON tb_student
FOR EACH ROW
BEGIN
    INSERT INTO tb_student_log (Stu_No, action, action_time)
    VALUES (NEW.Stu_No, 'INSERT', NOW());
END$$

-- 3. 创建 BEFORE UPDATE 触发器
CREATE TRIGGER trg_student_before_update
BEFORE UPDATE ON tb_student
FOR EACH ROW
BEGIN
    SET NEW.Stu_Update_Time = NOW();
END$$

-- 4. 创建 AFTER DELETE 触发器
CREATE TRIGGER trg_student_after_delete
AFTER DELETE ON tb_student
FOR EACH ROW
BEGIN
    INSERT INTO tb_student_log (Stu_No, action, action_time)
    VALUES (OLD.Stu_No, 'DELETE', NOW());
END$$

-- 5. 查看触发器
SHOW TRIGGERS;

-- 6. 删除触发器
DROP TRIGGER IF EXISTS trg_student_before_insert;
DROP TRIGGER IF EXISTS trg_student_after_insert;
DROP TRIGGER IF EXISTS trg_student_before_update;
DROP TRIGGER IF EXISTS trg_student_after_delete;

DELIMITER ;
