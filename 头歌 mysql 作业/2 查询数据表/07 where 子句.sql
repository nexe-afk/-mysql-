-- 07 WHERE 子句

-- 1. 等值条件
SELECT * FROM tb_student WHERE Stu_Sex = '男';

-- 2. 范围条件
SELECT * FROM tb_student WHERE Stu_Birthday >= '2000-01-01';

-- 3. 多条件（AND）
SELECT * FROM tb_student 
WHERE Stu_Sex = '男' AND Stu_Nation = '汉';

-- 4. 多条件（OR）
SELECT * FROM tb_student 
WHERE Stu_Sex = '女' OR Stu_Politics = '党员';

-- 5. IN 条件
SELECT * FROM tb_student 
WHERE Stu_No IN ('201904010101', '201904010102', '201904010103');

-- 6. BETWEEN 条件
SELECT * FROM tb_class 
WHERE Per_Quantity BETWEEN 30 AND 50;

-- 7. LIKE 模糊查询
SELECT * FROM tb_student WHERE Stu_Name LIKE '张%';
SELECT * FROM tb_student WHERE Stu_Login_Name LIKE '%san%';

-- 8. IS NULL 条件
SELECT * FROM tb_student WHERE Stu_Email IS NULL;
SELECT * FROM tb_student WHERE Stu_Email IS NOT NULL;

-- 9. NOT 条件
SELECT * FROM tb_student WHERE Stu_Sex != '男';
SELECT * FROM tb_student WHERE Stu_No NOT IN ('201904010101', '201904010102');
