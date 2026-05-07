-- 01 创建并管理数据库

-- 1. 创建数据库
CREATE DATABASE IF NOT EXISTS SchoolDB DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- 2. 查看数据库
SHOW DATABASES;
SHOW CREATE DATABASE SchoolDB;

-- 3. 选择数据库
USE SchoolDB;

-- 4. 修改数据库字符集
ALTER DATABASE SchoolDB CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- 5. 删除数据库
-- DROP DATABASE IF EXISTS SchoolDB;
