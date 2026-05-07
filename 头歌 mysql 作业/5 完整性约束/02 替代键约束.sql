-- 02 替代键约束 (UNIQUE KEY)

-- 1. 创建表时定义唯一约束
CREATE TABLE tb_unique_test1 (
    id INT PRIMARY KEY,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(20)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 2. 使用 CONSTRAINT 定义唯一约束
CREATE TABLE tb_unique_test2 (
    id INT PRIMARY KEY,
    email VARCHAR(100),
    CONSTRAINT uk_email UNIQUE (email)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 3. 创建复合唯一约束
CREATE TABLE tb_unique_test3 (
    id INT PRIMARY KEY,
    course_id INT,
    student_id INT,
    CONSTRAINT uk_course_student UNIQUE (course_id, student_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 4. 添加唯一约束到已有表
CREATE TABLE tb_unique_test4 (
    id INT PRIMARY KEY,
    login_name VARCHAR(50)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE tb_unique_test4 ADD UNIQUE (login_name);

-- 5. 删除唯一约束
ALTER TABLE tb_unique_test4 DROP INDEX login_name;

-- 6. 测试唯一约束
-- INSERT INTO tb_unique_test1 (id, email) VALUES (1, 'test@example.com');
-- INSERT INTO tb_unique_test1 (id, email) VALUES (2, 'test@example.com'); -- 会失败

-- 7. 清理测试表
DROP TABLE IF EXISTS tb_unique_test1;
DROP TABLE IF EXISTS tb_unique_test2;
DROP TABLE IF EXISTS tb_unique_test3;
DROP TABLE IF EXISTS tb_unique_test4;
