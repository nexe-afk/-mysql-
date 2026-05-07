-- 03 CASE 语句使用

-- 1. 简单 CASE 语句
SELECT 
    Stu_No,
    Stu_Name,
    Stu_Sex,
    CASE Stu_Sex
        WHEN '男' THEN 'Male'
        WHEN '女' THEN 'Female'
        ELSE 'Unknown'
    END AS Sex_EN
FROM tb_student;

-- 2. 搜索 CASE 语句
SELECT 
    Stu_No,
    Stu_Name,
    CASE 
        WHEN Stu_Birthday >= '2002-01-01' THEN '00 后'
        WHEN Stu_Birthday >= '2000-01-01' THEN '95 后'
        WHEN Stu_Birthday >= '1995-01-01' THEN '90 后'
        ELSE '其他'
    END AS 年代
FROM tb_student;

-- 3. CASE 在 ORDER BY 中使用
SELECT Stu_No, Stu_Name, Stu_Sex
FROM tb_student
ORDER BY 
    CASE Stu_Sex
        WHEN '女' THEN 1
        WHEN '男' THEN 2
        ELSE 3
    END,
    Stu_Name;

-- 4. CASE 在聚合函数中使用
SELECT 
    COUNT(CASE WHEN Stu_Sex = '男' THEN 1 END) AS 男生人数，
    COUNT(CASE WHEN Stu_Sex = '女' THEN 1 END) AS 女生人数
FROM tb_student;
