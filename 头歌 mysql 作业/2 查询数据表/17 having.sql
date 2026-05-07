-- 17 HAVING 子句

-- 1. HAVING 过滤分组结果
SELECT 
    Stu_Sex,
    COUNT(*) AS 人数
FROM tb_student
GROUP BY Stu_Sex
HAVING COUNT(*) > 5;

-- 2. HAVING 与聚合函数
SELECT 
    Profession_No,
    AVG(Per_Quantity) AS 平均人数
FROM tb_class
GROUP BY Profession_No
HAVING AVG(Per_Quantity) > 30;

-- 3. HAVING 与 WHERE 的区别
-- WHERE 在分组前过滤，HAVING 在分组后过滤
SELECT 
    Stu_Sex,
    COUNT(*) AS 人数
FROM tb_student
WHERE Stu_Status = '在读'
GROUP BY Stu_Sex
HAVING COUNT(*) >= 10;

-- 4. HAVING 多条件
SELECT 
    Len_Schooling,
    COUNT(*) AS 班级数，
    SUM(Per_Quantity) AS 总人数
FROM tb_class
GROUP BY Len_Schooling
HAVING COUNT(*) >= 3 AND SUM(Per_Quantity) > 100;

-- 5. HAVING 与 ORDER BY 结合
SELECT 
    Profession_No,
    COUNT(*) AS 班级数
FROM tb_class
GROUP BY Profession_No
HAVING COUNT(*) > 1
ORDER BY 班级数 DESC;
