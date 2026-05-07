-- 01 主键约束 (PRIMARY KEY)

-- 1. 创建表时定义主键
CREATE TABLE tb_pk_test1 (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 2. 创建表时使用 CONSTRAINT 定义主键
CREATE TABLE tb_pk_test2 (
    id INT,
    name VARCHAR(50),
    CONSTRAINT pk_tb_pk_test2 PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 3. 创建复合主键
CREATE TABLE tb_pk_test3 (
    course_id INT,
    student_id INT,
    score DECIMAL(5,2),
    PRIMARY KEY (course_id, student_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 4. 添加主键约束到已有表
CREATE TABLE tb_pk_test4 (
    id INT,
    name VARCHAR(50)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE tb_pk_test4 ADD PRIMARY KEY (id);

-- 5. 删除主键约束
ALTER TABLE tb_pk_test4 DROP PRIMARY KEY;

-- 6. 修改主键
ALTER TABLE tb_pk_test4 ADD PRIMARY KEY (id);

-- 7. 清理测试表
DROP TABLE IF EXISTS tb_pk_test1;
DROP TABLE IF EXISTS tb_pk_test2;
DROP TABLE IF EXISTS tb_pk_test3;
DROP TABLE IF EXISTS tb_pk_test4;
