-- 11 多表查询进阶版 2 - 子查询

-- 1. WHERE 子句中的子查询
SELECT Stu_No, Stu_Name
FROM tb_student
WHERE Stu_No IN (
    SELECT Stu_No FROM tb_grade WHERE Score > 90
);

-- 2. SELECT 子句中的子查询
SELECT 
    s.Stu_No,
    s.Stu_Name,
    (SELECT COUNT(*) FROM tb_grade g WHERE g.Stu_No = s.Stu_No) AS 选课数量
FROM tb_student s;

-- 3. FROM 子句中的子查询（派生表）
SELECT 专业编号，COUNT(*) AS 班级数
FROM (
    SELECT Profession_No FROM tb_class
) AS temp
GROUP BY 专业编号;

-- 4. 相关子查询
SELECT Stu_No, Stu_Name
FROM tb_student s
WHERE EXISTS (
    SELECT 1 FROM tb_grade g WHERE g.Stu_No = s.Stu_No AND g.Score > 85
);

-- 5. 使用子查询进行比较
SELECT Stu_No, Stu_Name, Stu_Birthday
FROM tb_student
WHERE Stu_Birthday > (
    SELECT AVG(Stu_Birthday) FROM tb_student
);
