-- 01 用户管理 1 - 创建用户

-- 1. 创建用户（MySQL 5.7+ 使用 CREATE USER）
CREATE USER IF NOT EXISTS 'student_user'@'localhost' IDENTIFIED BY 'Student123!';

-- 2. 创建允许远程访问的用户
CREATE USER IF NOT EXISTS 'student_user'@'%' IDENTIFIED BY 'Student123!';

-- 3. 创建用户并指定密码过期策略
CREATE USER IF NOT EXISTS 'student_user2'@'localhost' 
IDENTIFIED BY 'Student123!' 
PASSWORD EXPIRE INTERVAL 90 DAY;

-- 4. 查看用户
SELECT User, Host FROM mysql.user;

-- 5. 查看用户详细信息
SHOW CREATE USER 'student_user'@'localhost';

-- 6. 修改用户密码
ALTER USER 'student_user'@'localhost' IDENTIFIED BY 'NewPassword123!';

-- 7. 删除用户
DROP USER IF EXISTS 'student_user'@'localhost';
DROP USER IF EXISTS 'student_user'@'%';
DROP USER IF EXISTS 'student_user2'@'localhost';
