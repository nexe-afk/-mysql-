-- 04 复制、修改、删除表

-- 1. 复制表结构（不复制数据）
CREATE TABLE tb_student_backup LIKE tb_student;

-- 2. 复制表结构和数据
CREATE TABLE tb_student_copy AS SELECT * FROM tb_student;

-- 3. 修改表名
ALTER TABLE tb_student_backup RENAME TO tb_student_old;

-- 4. 添加列
ALTER TABLE tb_student ADD COLUMN Stu_Address VARCHAR(100) COMMENT '家庭地址';

-- 5. 修改列类型
ALTER TABLE tb_student MODIFY COLUMN Stu_Phone VARCHAR(30);

-- 6. 修改列名
ALTER TABLE tb_student CHANGE COLUMN Stu_Native Stu_Native_Place VARCHAR(50);

-- 7. 删除列
ALTER TABLE tb_student DROP COLUMN Stu_Address;

-- 8. 添加主键约束（如果表没有主键）
-- ALTER TABLE tb_student ADD PRIMARY KEY (Stu_No);

-- 9. 删除表
DROP TABLE IF EXISTS tb_student_copy;
DROP TABLE IF EXISTS tb_student_old;
