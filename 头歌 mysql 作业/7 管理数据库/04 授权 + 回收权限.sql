-- 04 授权 + 回收权限

-- 1. 授予多种权限
GRANT SELECT, INSERT, UPDATE, DELETE ON SchoolDB.* TO 'student_user'@'localhost';

-- 2. 授予所有权限到特定表
GRANT ALL ON SchoolDB.tb_student TO 'student_user'@'localhost';

-- 3. 授予带 GRANT OPTION 的权限（允许转授权限）
-- GRANT SELECT ON SchoolDB.* TO 'student_user'@'localhost' WITH GRANT OPTION;

-- 4. 查看权限
SHOW GRANTS FOR 'student_user'@'localhost';

-- 5. 回收特定权限
REVOKE DELETE ON SchoolDB.* FROM 'student_user'@'localhost';

-- 6. 回收所有权限
REVOKE ALL PRIVILEGES, GRANT OPTION FROM 'student_user'@'localhost';

-- 7. 回收后查看权限
SHOW GRANTS FOR 'student_user'@'localhost';

-- 8. 清理用户
DROP USER IF EXISTS 'student_user'@'localhost';
