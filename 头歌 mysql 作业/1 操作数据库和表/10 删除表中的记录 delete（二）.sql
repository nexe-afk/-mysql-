-- 10 删除表中的记录 delete（二）

-- 1. 基于子查询删除
DELETE FROM tb_student 
WHERE Stu_No IN (
    SELECT Stu_No FROM (
        SELECT Stu_No FROM tb_student WHERE Stu_Birthday < '1999-01-01'
    ) AS temp
);

-- 2. 多表关联删除（删除学生表中在班级表中不存在的记录）
-- DELETE s FROM tb_student s
-- LEFT JOIN tb_class c ON SUBSTRING(s.Stu_No, 1, 10) = c.Class_No
-- WHERE c.Class_No IS NULL;

-- 3. 删除所有记录（保留表结构）
-- DELETE FROM tb_student_copy;

-- 4. 使用 TRUNCATE 快速清空表（不能带 WHERE，重置自增计数器）
-- TRUNCATE TABLE tb_student_copy;

-- 5. 限制删除行数
DELETE FROM tb_student 
WHERE Stu_Status = '测试'
LIMIT 10;

-- 6. 删除重复记录（保留一条）
-- DELETE t1 FROM tb_student t1
-- INNER JOIN tb_student t2 
-- WHERE t1.Stu_No > t2.Stu_No 
--   AND t1.Stu_Login_Name = t2.Stu_Login_Name;
