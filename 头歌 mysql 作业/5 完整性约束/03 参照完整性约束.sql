-- 03 参照完整性约束 (FOREIGN KEY)

-- 1. 创建主表
CREATE TABLE tb_department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 2. 创建从表并定义外键
CREATE TABLE tb_employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES tb_department(dept_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 3. 使用 CONSTRAINT 定义外键
CREATE TABLE tb_employee2 (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT,
    CONSTRAINT fk_employee_department FOREIGN KEY (dept_id) REFERENCES tb_department(dept_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 4. 外键级联操作
CREATE TABLE tb_employee3 (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT,
    CONSTRAINT fk_emp_dept FOREIGN KEY (dept_id) 
        REFERENCES tb_department(dept_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 5. 添加外键到已有表
CREATE TABLE tb_employee4 (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE tb_employee4 
ADD CONSTRAINT fk_emp4_dept 
FOREIGN KEY (dept_id) REFERENCES tb_department(dept_id);

-- 6. 删除外键约束
ALTER TABLE tb_employee4 DROP FOREIGN KEY fk_emp4_dept;

-- 7. 清理测试表
DROP TABLE IF EXISTS tb_employee;
DROP TABLE IF EXISTS tb_employee2;
DROP TABLE IF EXISTS tb_employee3;
DROP TABLE IF EXISTS tb_employee4;
DROP TABLE IF EXISTS tb_department;
