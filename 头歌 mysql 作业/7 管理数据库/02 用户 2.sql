-- 02 用户管理 2 - 用户属性管理

-- 1. 锁定用户账户
-- ALTER USER 'student_user'@'localhost' ACCOUNT LOCK;

-- 2. 解锁用户账户
-- ALTER USER 'student_user'@'localhost' ACCOUNT UNLOCK;

-- 3. 禁用用户密码过期
-- ALTER USER 'student_user'@'localhost' PASSWORD EXPIRE NEVER;

-- 4. 设置密码立即过期
-- ALTER USER 'student_user'@'localhost' PASSWORD EXPIRE;

-- 5. 重命名用户
-- RENAME USER 'student_user'@'localhost' TO 'new_student'@'localhost';

-- 6. 查看用户权限
SHOW GRANTS FOR 'student_user'@'localhost';

-- 7. 查看当前登录用户
SELECT USER();
SELECT CURRENT_USER();

-- 8. 查看所有用户及主机
SELECT User, Host, authentication_string FROM mysql.user;
