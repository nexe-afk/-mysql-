-- 03 在视图中插入、修改、删除数据

-- 1. 通过视图插入数据（简单视图）
INSERT INTO v_student_basic (学号，姓名，性别，出生日期)
VALUES ('202104010101', '测试学生', '男', '2003-01-01');

-- 2. 通过视图更新数据
UPDATE v_student_basic 
SET 性别 = '女'
WHERE 学号 = '202104010101';

-- 3. 通过视图删除数据
DELETE FROM v_student_basic WHERE 学号 = '202104010101';

-- 4. 创建带 CHECK OPTION 的视图
CREATE OR REPLACE VIEW v_student_female AS
SELECT Stu_No, Stu_Name, Stu_Sex
FROM tb_student
WHERE Stu_Sex = '女'
WITH CHECK OPTION;

-- 5. 尝试插入不符合视图条件的数据（会失败）
-- INSERT INTO v_student_female VALUES ('202104010102', '测试', '男');

-- 6. 通过视图更新（受 CHECK OPTION 限制）
-- UPDATE v_student_female SET Stu_Sex = '男' WHERE Stu_No = '201904010101';
