-- 01 简单的单表查询

-- 1. 查询所有列
SELECT * FROM tb_student;

-- 2. 查询指定列
SELECT Stu_No, Stu_Name, Stu_Sex FROM tb_student;

-- 3. 查询所有班级
SELECT * FROM tb_class;

-- 4. 查询学生登录名和密码
SELECT Stu_Login_Name, Stu_Password FROM tb_student;
