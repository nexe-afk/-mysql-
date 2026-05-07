-- 03 查询指定表中的所有数据

-- 1. 查询学生表中所有数据
SELECT * FROM tb_student;

-- 2. 查询班级表中所有数据
SELECT * FROM tb_class;

-- 3. 查询指定列
SELECT Stu_No, Stu_Name, Stu_Sex FROM tb_student;

-- 4. 查询前 10 条记录
SELECT * FROM tb_student LIMIT 10;
