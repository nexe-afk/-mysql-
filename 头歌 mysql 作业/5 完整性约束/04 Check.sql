-- 04 CHECK 约束

-- 注意：MySQL 8.0.16+ 才支持 CHECK 约束

-- 1. 创建表时定义 CHECK 约束
CREATE TABLE tb_check_test1 (
    id INT PRIMARY KEY,
    age INT CHECK (age >= 0 AND age <= 150),
    salary DECIMAL(10,2) CHECK (salary > 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 2. 使用 CONSTRAINT 定义 CHECK 约束
CREATE TABLE tb_check_test2 (
    id INT PRIMARY KEY,
    age INT,
    CONSTRAINT chk_age CHECK (age >= 18 AND age <= 65)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 3. 多列 CHECK 约束
CREATE TABLE tb_check_test3 (
    id INT PRIMARY KEY,
    start_date DATE,
    end_date DATE,
    CONSTRAINT chk_date CHECK (end_date >= start_date)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 4. 测试 CHECK 约束
-- INSERT INTO tb_check_test1 (id, age, salary) VALUES (1, 25, 5000); -- 成功
-- INSERT INTO tb_check_test1 (id, age, salary) VALUES (2, -5, 5000); -- 失败

-- 5. 查看约束信息
SELECT * FROM information_schema.CHECK_CONSTRAINTS 
WHERE CONSTRAINT_SCHEMA = DATABASE();

-- 6. 清理测试表
DROP TABLE IF EXISTS tb_check_test1;
DROP TABLE IF EXISTS tb_check_test2;
DROP TABLE IF EXISTS tb_check_test3;
