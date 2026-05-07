-- 04 计算列值

-- 1. 算术运算
SELECT 
    Stu_No,
    Stu_Name,
    YEAR(CURDATE()) - YEAR(Stu_Birthday) AS 年龄
FROM tb_student;

-- 2. 字符串拼接
SELECT 
    Stu_No,
    CONCAT(Stu_Name, '(', Stu_Sex, ')') AS 学生信息
FROM tb_student;

-- 3. 日期计算
SELECT 
    Stu_No,
    Stu_Name,
    Stu_Birthday,
    DATEDIFF(CURDATE(), Stu_Birthday) AS 出生天数
FROM tb_student;

-- 4. 数值计算
SELECT 
    Class_No,
    Class_Name,
    Per_Quantity,
    Per_Quantity * 12 AS 年度总人数
FROM tb_class;
