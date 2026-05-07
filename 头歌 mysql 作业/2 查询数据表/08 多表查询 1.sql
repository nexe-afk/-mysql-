-- 08 多表查询 1 - 内连接

-- 1. 隐式内连接（使用 WHERE）
SELECT s.Stu_No, s.Stu_Name, c.Class_Name
FROM tb_student s, tb_class c
WHERE SUBSTRING(s.Stu_No, 1, 10) = c.Class_No;

-- 2. 显式内连接（使用 JOIN ... ON）
SELECT s.Stu_No, s.Stu_Name, c.Class_Name
FROM tb_student s
INNER JOIN tb_class c ON SUBSTRING(s.Stu_No, 1, 10) = c.Class_No;

-- 3. 多表内连接
SELECT 
    s.Stu_No, 
    s.Stu_Name, 
    c.Class_Name,
    p.Profession_Name
FROM tb_student s
INNER JOIN tb_class c ON SUBSTRING(s.Stu_No, 1, 10) = c.Class_No
INNER JOIN tb_profession p ON c.Profession_No = p.Profession_No;

-- 4. 使用表别名简化查询
SELECT s.Stu_No, s.Stu_Name, c.Class_Name
FROM tb_student s
JOIN tb_class c ON SUBSTRING(s.Stu_No, 1, 10) = c.Class_No
WHERE s.Stu_Sex = '男';
