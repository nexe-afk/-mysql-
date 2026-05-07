-- 02 创建、查看、描述表

-- 1. 创建学生表
CREATE TABLE tb_student (
    Stu_No CHAR(12) PRIMARY KEY COMMENT '学号',
    Stu_Name VARCHAR(20) NOT NULL COMMENT '姓名',
    Stu_Sex CHAR(2) DEFAULT '男' COMMENT '性别',
    Stu_Birthday DATE COMMENT '出生日期',
    Stu_Native VARCHAR(50) COMMENT '籍贯',
    Stu_Nation VARCHAR(20) DEFAULT '汉' COMMENT '民族',
    Stu_Politics VARCHAR(20) COMMENT '政治面貌',
    Stu_Enroll_Date DATE COMMENT '入学日期',
    Stu_Status VARCHAR(10) DEFAULT '在读' COMMENT '学籍状态',
    Stu_Graduate_Date DATE COMMENT '毕业日期',
    Stu_Login_Name VARCHAR(30) UNIQUE COMMENT '登录名',
    Stu_Password CHAR(32) COMMENT '密码',
    Stu_Email VARCHAR(50) COMMENT '邮箱',
    Stu_Phone VARCHAR(20) COMMENT '电话'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='学生表';

-- 2. 创建班级表
CREATE TABLE tb_class (
    Class_No CHAR(10) PRIMARY KEY COMMENT '班级编号',
    Class_Name VARCHAR(50) NOT NULL COMMENT '班级名称',
    Profession_No CHAR(6) COMMENT '专业编号',
    Per_Quantity INT DEFAULT 0 COMMENT '人数',
    Len_Schooling INT DEFAULT 4 COMMENT '学制',
    CS_No CHAR(6) COMMENT '辅导员编号',
    Monitor CHAR(12) COMMENT '班长学号',
    Secretary CHAR(12) COMMENT '团支书学号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='班级表';

-- 3. 查看表
SHOW TABLES;

-- 4. 描述表结构
DESC tb_student;
DESC tb_class;

-- 5. 查看创建表的语句
SHOW CREATE TABLE tb_student;
