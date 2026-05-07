-- 02 创建查询视图 2 - 多表连接视图

-- 1. 创建多表连接视图
CREATE OR REPLACE VIEW v_student_class AS
SELECT 
    s.Stu_No,
    s.Stu_Name,
    s.Stu_Sex,
    c.Class_Name,
    c.Profession_No
FROM tb_student s
JOIN tb_class c ON SUBSTRING(s.Stu_No, 1, 10) = c.Class_No;

-- 2. 查询连接视图
SELECT * FROM v_student_class WHERE 性别 = '女';

-- 3. 创建复杂连接视图
CREATE OR REPLACE VIEW v_student_detail AS
SELECT 
    s.Stu_No,
    s.Stu_Name,
    s.Stu_Sex,
    s.Stu_Birthday,
    c.Class_Name,
    p.Profession_Name,
    cs.CS_Name AS 辅导员
FROM tb_student s
JOIN tb_class c ON SUBSTRING(s.Stu_No, 1, 10) = c.Class_No
JOIN tb_profession p ON c.Profession_No = p.Profession_No
JOIN tb_counsellor cs ON c.CS_No = cs.CS_No;

-- 4. 查询详细视图
SELECT * FROM v_student_detail LIMIT 10;
