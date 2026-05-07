-- 01 用 CREATE INDEX 创建索引

-- 1. 创建普通索引
CREATE INDEX idx_student_name ON tb_student(Stu_Name);

-- 2. 创建唯一索引
CREATE UNIQUE INDEX idx_student_login ON tb_student(Stu_Login_Name);

-- 3. 创建复合索引
CREATE INDEX idx_student_sex_birthday ON tb_student(Stu_Sex, Stu_Birthday);

-- 4. 创建前缀索引
CREATE INDEX idx_student_name_prefix ON tb_student(Stu_Name(5));

-- 5. 查看索引
SHOW INDEX FROM tb_student;

-- 6. 使用索引查询
EXPLAIN SELECT * FROM tb_student WHERE Stu_Name = '张三';

-- 7. 删除索引
DROP INDEX idx_student_name ON tb_student;
