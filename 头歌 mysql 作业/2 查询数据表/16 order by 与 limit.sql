-- 16 ORDER BY 与 LIMIT

-- 1. 单列排序（升序）
SELECT Stu_No, Stu_Name, Stu_Birthday
FROM tb_student
ORDER BY Stu_Birthday ASC;

-- 2. 单列排序（降序）
SELECT Stu_No, Stu_Name, Stu_Birthday
FROM tb_student
ORDER BY Stu_Birthday DESC;

-- 3. 多列排序
SELECT Stu_No, Stu_Name, Stu_Sex, Stu_Birthday
FROM tb_student
ORDER BY Stu_Sex ASC, Stu_Birthday DESC;

-- 4. 按表达式排序
SELECT Stu_No, Stu_Name, Stu_Birthday
FROM tb_student
ORDER BY YEAR(Stu_Birthday) DESC;

-- 5. LIMIT 限制返回行数
SELECT Stu_No, Stu_Name FROM tb_student LIMIT 5;

-- 6. LIMIT 偏移量
SELECT Stu_No, Stu_Name FROM tb_student LIMIT 10, 5;

-- 7. 分页查询（每页 10 条，第 3 页）
-- LIMIT (3-1)*10, 10 => LIMIT 20, 10
SELECT Stu_No, Stu_Name FROM tb_student LIMIT 20, 10;

-- 8. ORDER BY 与 LIMIT 结合 - 查询前 10 名
SELECT Stu_No, Stu_Name, Stu_Birthday
FROM tb_student
ORDER BY Stu_Birthday DESC
LIMIT 10;
