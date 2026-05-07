-- 09 多表查询 2 - 外连接

-- 1. 左外连接（LEFT JOIN）
SELECT s.Stu_No, s.Stu_Name, c.Class_Name
FROM tb_student s
LEFT JOIN tb_class c ON SUBSTRING(s.Stu_No, 1, 10) = c.Class_No;

-- 2. 右外连接（RIGHT JOIN）
SELECT s.Stu_No, s.Stu_Name, c.Class_Name
FROM tb_student s
RIGHT JOIN tb_class c ON SUBSTRING(s.Stu_No, 1, 10) = c.Class_No;

-- 3. 左连接查询未匹配的记录
SELECT s.Stu_No, s.Stu_Name, c.Class_Name
FROM tb_student s
LEFT JOIN tb_class c ON SUBSTRING(s.Stu_No, 1, 10) = c.Class_No
WHERE c.Class_No IS NULL;

-- 4. 多表左连接
SELECT 
    s.Stu_No, 
    s.Stu_Name, 
    c.Class_Name,
    cs.CS_Name
FROM tb_student s
LEFT JOIN tb_class c ON SUBSTRING(s.Stu_No, 1, 10) = c.Class_No
LEFT JOIN tb_counsellor cs ON c.CS_No = cs.CS_No;
