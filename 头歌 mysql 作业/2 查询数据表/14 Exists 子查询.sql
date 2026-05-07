-- 14 EXISTS 子查询

-- 1. 基本 EXISTS 查询
SELECT Stu_No, Stu_Name
FROM tb_student s
WHERE EXISTS (
    SELECT 1 FROM tb_grade g WHERE g.Stu_No = s.Stu_No
);

-- 2. NOT EXISTS 查询
SELECT Stu_No, Stu_Name
FROM tb_student s
WHERE NOT EXISTS (
    SELECT 1 FROM tb_grade g WHERE g.Stu_No = s.Stu_No
);

-- 3. 相关 EXISTS 子查询
SELECT Stu_No, Stu_Name
FROM tb_student s
WHERE EXISTS (
    SELECT 1 FROM tb_grade g 
    WHERE g.Stu_No = s.Stu_No AND g.Score > 90
);

-- 4. EXISTS 与 IN 的对比
-- EXISTS 适合子查询结果集大的情况，性能更好
SELECT c.Class_No, c.Class_Name
FROM tb_class c
WHERE EXISTS (
    SELECT 1 FROM tb_student s 
    WHERE SUBSTRING(s.Stu_No, 1, 10) = c.Class_No
);

-- 5. 使用 EXISTS 检查是否存在
SELECT 
    c.Class_No,
    c.Class_Name,
    CASE 
        WHEN EXISTS (
            SELECT 1 FROM tb_student s 
            WHERE SUBSTRING(s.Stu_No, 1, 10) = c.Class_No
        ) THEN '有学生'
        ELSE '无学生'
    END AS 状态
FROM tb_class c;
