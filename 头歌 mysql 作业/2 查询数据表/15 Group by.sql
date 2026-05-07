-- 15 GROUP BY 分组查询

-- 1. 单列分组
SELECT Stu_Sex, COUNT(*) AS 人数
FROM tb_student
GROUP BY Stu_Sex;

-- 2. 多列分组
SELECT Profession_No, Len_Schooling, COUNT(*) AS 班级数
FROM tb_class
GROUP BY Profession_No, Len_Schooling;

-- 3. 分组与聚合函数
SELECT 
    Stu_Sex,
    COUNT(*) AS 总人数，
    AVG(YEAR(CURDATE()) - YEAR(Stu_Birthday)) AS 平均年龄
FROM tb_student
GROUP BY Stu_Sex;

-- 4. 使用 WITH ROLLUP
SELECT 
    Stu_Sex,
    COUNT(*) AS 人数
FROM tb_student
GROUP BY Stu_Sex WITH ROLLUP;

-- 5. 分组后排序
SELECT 
    Profession_No,
    COUNT(*) AS 班级数
FROM tb_class
GROUP BY Profession_No
ORDER BY 班级数 DESC;

-- 6. 使用 HAVING 过滤分组
SELECT 
    Stu_Sex,
    COUNT(*) AS 人数
FROM tb_student
GROUP BY Stu_Sex
HAVING COUNT(*) > 10;
