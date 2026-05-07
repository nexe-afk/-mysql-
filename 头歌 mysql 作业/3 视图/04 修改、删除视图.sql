-- 04 修改、删除视图

-- 1. 查看视图定义
SHOW CREATE VIEW v_student_basic;
DESC v_student_basic;

-- 2. 修改视图（使用 CREATE OR REPLACE）
CREATE OR REPLACE VIEW v_student_basic AS
SELECT 
    Stu_No AS 学号，
    Stu_Name AS 姓名，
    Stu_Sex AS 性别，
    Stu_Birthday AS 出生日期，
    Stu_Native AS 籍贯
FROM tb_student;

-- 3. 使用 ALTER VIEW 修改
ALTER VIEW v_student_basic AS
SELECT 
    Stu_No AS 学号，
    Stu_Name AS 姓名，
    Stu_Sex AS 性别，
    Stu_Birthday AS 出生日期，
    Stu_Native AS 籍贯，
    Stu_Nation AS 民族
FROM tb_student;

-- 4. 查看修改后的视图
SELECT * FROM v_student_basic LIMIT 5;

-- 5. 删除视图
DROP VIEW IF EXISTS v_student_basic;
DROP VIEW IF EXISTS v_student_male;
DROP VIEW IF EXISTS v_class_stats;
DROP VIEW IF EXISTS v_student_class;
DROP VIEW IF EXISTS v_student_detail;
DROP VIEW IF EXISTS v_student_female;

-- 6. 同时删除多个视图
-- DROP VIEW IF EXISTS view1, view2, view3;
