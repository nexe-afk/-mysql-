-- 06 向表中插入一条记录 insert（二）

-- 1. 使用 SET 语法插入记录
INSERT INTO tb_student SET
    Stu_No = '202004010101',
    Stu_Name = '孙八',
    Stu_Sex = '男',
    Stu_Birthday = '2002-03-20',
    Stu_Login_Name = 'sunba',
    Stu_Password = MD5('123456');

-- 2. 插入日期时间
INSERT INTO tb_student (Stu_No, Stu_Name, Stu_Enroll_Date, Stu_Login_Name, Stu_Password)
VALUES ('202004010102', '周九', CURDATE(), 'zhoujiu', MD5('123456'));

-- 3. 插入 NULL 值
INSERT INTO tb_student (Stu_No, Stu_Name, Stu_Sex, Stu_Login_Name, Stu_Password, Stu_Email)
VALUES ('202004010103', '吴十', '女', 'wushi', MD5('123456'), NULL);

-- 4. 使用 INSERT IGNORE 忽略重复键错误
INSERT IGNORE INTO tb_student (Stu_No, Stu_Name, Stu_Login_Name, Stu_Password)
VALUES ('201904010101', '张三丰', 'zhangsanfeng', MD5('123456'));

-- 5. 使用 ON DUPLICATE KEY UPDATE
INSERT INTO tb_student (Stu_No, Stu_Name, Stu_Login_Name, Stu_Password)
VALUES ('201904010101', '张三更新', 'zhangsan', MD5('newpassword'))
ON DUPLICATE KEY UPDATE Stu_Name = VALUES(Stu_Name);
