-- 02 用 ALTER TABLE 创建索引

-- 1. 使用 ALTER TABLE 添加普通索引
ALTER TABLE tb_student ADD INDEX idx_student_email(Stu_Email);

-- 2. 使用 ALTER TABLE 添加唯一索引
ALTER TABLE tb_student ADD UNIQUE INDEX idx_student_phone(Stu_Phone);

-- 3. 使用 ALTER TABLE 添加复合索引
ALTER TABLE tb_class ADD INDEX idx_class_profession(Profession_No, Len_Schooling);

-- 4. 使用 ALTER TABLE 添加主键索引
-- ALTER TABLE tb_student ADD PRIMARY KEY (Stu_No);

-- 5. 查看表的所有索引
SHOW INDEX FROM tb_student;
SHOW INDEX FROM tb_class;

-- 6. 使用 ALTER TABLE 删除索引
ALTER TABLE tb_student DROP INDEX idx_student_email;
ALTER TABLE tb_student DROP INDEX idx_student_phone;

-- 7. 删除主键索引
-- ALTER TABLE tb_student DROP PRIMARY KEY;
