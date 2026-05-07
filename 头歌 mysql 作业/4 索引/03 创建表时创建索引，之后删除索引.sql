-- 03 创建表时创建索引，之后删除索引

-- 1. 创建表时定义主键索引
CREATE TABLE tb_test_index (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(100),
    INDEX idx_name (name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 2. 创建表时定义多个索引
CREATE TABLE tb_test_index2 (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(100),
    age INT,
    INDEX idx_name (name),
    UNIQUE INDEX idx_email (email),
    INDEX idx_age (age)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 3. 创建表时使用复合索引
CREATE TABLE tb_test_index3 (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    category VARCHAR(20),
    price DECIMAL(10,2),
    INDEX idx_category_price (category, price)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 4. 查看创建的索引
SHOW INDEX FROM tb_test_index;
SHOW INDEX FROM tb_test_index2;
SHOW INDEX FROM tb_test_index3;

-- 5. 删除索引
DROP INDEX idx_name ON tb_test_index;
ALTER TABLE tb_test_index2 DROP INDEX idx_name;

-- 6. 删除表
DROP TABLE IF EXISTS tb_test_index;
DROP TABLE IF EXISTS tb_test_index2;
DROP TABLE IF EXISTS tb_test_index3;
