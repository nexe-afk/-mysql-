-- 05 消除结果集重复行

-- 1. 使用 DISTINCT 消除重复
SELECT DISTINCT Stu_Sex FROM tb_student;

-- 2. 多列 DISTINCT
SELECT DISTINCT Profession_No, Len_Schooling FROM tb_class;

-- 3. DISTINCT 与 COUNT 结合
SELECT COUNT(DISTINCT Profession_No) AS 专业数量 FROM tb_class;

-- 4. 不使用 DISTINCT（显示所有行）
SELECT Stu_Sex FROM tb_student;

-- 5. DISTINCT 在多列中的应用
SELECT DISTINCT Stu_Native, Stu_Nation FROM tb_student;
