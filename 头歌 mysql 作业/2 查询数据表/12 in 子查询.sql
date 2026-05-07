-- 12 IN 子查询

-- 1. 基本 IN 子查询
SELECT Stu_No, Stu_Name
FROM tb_student
WHERE Stu_No IN (
    SELECT DISTINCT Stu_No FROM tb_grade WHERE Score >= 90
);

-- 2. NOT IN 子查询
SELECT Stu_No, Stu_Name
FROM tb_student
WHERE Stu_No NOT IN (
    SELECT DISTINCT Stu_No FROM tb_grade
);

-- 3. IN 子查询与多列
SELECT Stu_No, Stu_Name
FROM tb_student
WHERE (Stu_No, Stu_Sex) IN (
    SELECT Stu_No, Stu_Sex FROM tb_student WHERE Stu_Birthday > '2001-01-01'
);

-- 4. IN 子查询与聚合
SELECT Class_No, Class_Name
FROM tb_class
WHERE Per_Quantity IN (
    SELECT MAX(Per_Quantity) FROM tb_class
);

-- 5. IN 与 EXISTS 对比
-- IN 适合子查询结果集小的情况
SELECT Stu_No, Stu_Name FROM tb_student
WHERE Stu_No IN (SELECT Stu_No FROM tb_grade WHERE Score > 95);
