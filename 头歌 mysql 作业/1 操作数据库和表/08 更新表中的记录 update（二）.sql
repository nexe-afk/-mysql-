-- 08 更新表中的记录 update（二）

-- 1. 基于子查询更新
UPDATE tb_student 
SET Stu_Status = '休学'
WHERE Stu_No IN (
    SELECT Stu_No FROM (
        SELECT Stu_No FROM tb_student WHERE Stu_Birthday < '2000-01-01'
    ) AS temp
);

-- 2. 多表关联更新
UPDATE tb_student s
JOIN tb_class c ON SUBSTRING(s.Stu_No, 1, 10) = c.Class_No
SET s.Stu_Status = '在读'
WHERE c.Per_Quantity > 30;

-- 3. 使用 CASE 语句更新
UPDATE tb_student 
SET Stu_Status = CASE 
    WHEN Stu_Graduate_Date < CURDATE() THEN '已毕业'
    WHEN Stu_Graduate_Date < DATE_ADD(CURDATE(), INTERVAL 6 MONTH) THEN '待毕业'
    ELSE '在读'
END;

-- 4. 限制更新行数
UPDATE tb_student 
SET Stu_Status = '审核中'
WHERE Stu_Status = '在读'
LIMIT 5;

-- 5. 更新并返回受影响的行数（在存储过程中使用）
-- SELECT ROW_COUNT();
