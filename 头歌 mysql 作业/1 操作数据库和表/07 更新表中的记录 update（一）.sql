-- 07 更新表中的记录 update（一）

-- 1. 更新单条记录
UPDATE tb_student 
SET Stu_Phone = '13900139001'
WHERE Stu_No = '201904010101';

-- 2. 更新多条记录
UPDATE tb_student 
SET Stu_Status = '毕业'
WHERE Stu_Graduate_Date < '2023-01-01';

-- 3. 更新多个字段
UPDATE tb_student 
SET Stu_Email = 'zhangsan@newmail.com',
    Stu_Phone = '13800138000'
WHERE Stu_No = '201904010101';

-- 4. 使用表达式更新
UPDATE tb_student 
SET Stu_Birthday = DATE_ADD(Stu_Birthday, INTERVAL 1 DAY)
WHERE Stu_No = '201904010102';

-- 5. 更新为 NULL
UPDATE tb_student 
SET Stu_Email = NULL
WHERE Stu_No = '201904010103';
