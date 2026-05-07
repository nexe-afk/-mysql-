-- 09 删除表中的记录 delete（一）

-- 1. 删除单条记录
DELETE FROM tb_student WHERE Stu_No = '201904010105';

-- 2. 删除多条记录（使用 WHERE 条件）
DELETE FROM tb_student WHERE Stu_Status = '退学';

-- 3. 删除满足多个条件的记录
DELETE FROM tb_student 
WHERE Stu_Graduate_Date < '2020-01-01' 
  AND Stu_Status = '毕业';

-- 4. 使用 IN 删除多条记录
DELETE FROM tb_student 
WHERE Stu_No IN ('201904010103', '201904010104');

-- 5. 使用 LIKE 删除记录
DELETE FROM tb_student 
WHERE Stu_Login_Name LIKE 'test%';
