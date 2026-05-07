-- 02 定义列别名

-- 1. 使用 AS 定义列别名
SELECT 
    Stu_No AS 学号,
    Stu_Name AS 姓名,
    Stu_Sex AS 性别
FROM tb_student;

-- 2. 不使用 AS 定义列别名（空格分隔）
SELECT 
    Stu_No 学号，
    Stu_Name 姓名，
    Stu_Birthday 出生日期
FROM tb_student;

-- 3. 别名包含空格（使用引号）
SELECT 
    Stu_No AS "学生学号",
    Stu_Name AS '学生姓名'
FROM tb_student;

-- 4. 表达式使用别名
SELECT 
    Stu_Name AS 姓名，
    YEAR(CURDATE()) - YEAR(Stu_Birthday) AS 年龄
FROM tb_student;
