-- 03 授权 1 - 基本授权

-- 1. 授予所有权限
-- GRANT ALL PRIVILEGES ON SchoolDB.* TO 'student_user'@'localhost';

-- 2. 授予特定数据库的查询权限
GRANT SELECT ON SchoolDB.* TO 'student_user'@'localhost';

-- 3. 授予特定表的权限
GRANT SELECT, INSERT, UPDATE ON SchoolDB.tb_student TO 'student_user'@'localhost';

-- 4. 授予特定列的权限
GRANT SELECT (Stu_No, Stu_Name) ON SchoolDB.tb_student TO 'student_user'@'localhost';

-- 5. 授予存储过程执行权限
-- GRANT EXECUTE ON PROCEDURE SchoolDB.sp_get_all_students TO 'student_user'@'localhost';

-- 6. 刷新权限
FLUSH PRIVILEGES;

-- 7. 查看用户权限
SHOW GRANTS FOR 'student_user'@'localhost';

-- 8. 撤销权限
REVOKE SELECT ON SchoolDB.tb_student FROM 'student_user'@'localhost';
