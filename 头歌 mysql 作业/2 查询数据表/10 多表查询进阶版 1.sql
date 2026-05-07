-- 10 多表查询进阶版 1 - 交叉连接和自连接

-- 1. 交叉连接（CROSS JOIN）- 笛卡尔积
SELECT s.Stu_No, c.Class_No
FROM tb_student s
CROSS JOIN tb_class c;

-- 2. 自连接 - 查询同专业不同年级的学生
SELECT 
    s1.Stu_No AS 学生 1,
    s2.Stu_No AS 学生 2,
    s1.Stu_Native AS 籍贯
FROM tb_student s1
JOIN tb_student s2 ON s1.Stu_Native = s2.Stu_Native
WHERE s1.Stu_No < s2.Stu_No;

-- 3. 自连接 - 层级查询（如果有父子关系）
-- SELECT 
--     e1.employee_name AS 员工，
--     e2.employee_name AS 上级
-- FROM employees e1
-- JOIN employees e2 ON e1.manager_id = e2.employee_id;

-- 4. 使用 USING 子句简化连接
-- SELECT Stu_No, Stu_Name, Class_Name
-- FROM tb_student
-- JOIN tb_class USING (Class_No);
