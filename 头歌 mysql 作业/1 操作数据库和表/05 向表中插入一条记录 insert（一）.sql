-- 05 向表中插入一条记录 insert（一）

-- 1. 插入完整记录（所有列）
INSERT INTO tb_student VALUES (
    '201904010101',
    '张三',
    '男',
    '2001-05-15',
    '北京',
    '汉',
    '共青团员',
    '2019-09-01',
    '在读',
    '2023-06-30',
    'zhangsan',
    MD5('123456'),
    'zhangsan@example.com',
    '13800138001'
);

-- 2. 插入指定列
INSERT INTO tb_student (Stu_No, Stu_Name, Stu_Sex, Stu_Login_Name, Stu_Password)
VALUES (
    '201904010102',
    '李四',
    '女',
    'lisi',
    MD5('123456')
);

-- 3. 插入多条记录
INSERT INTO tb_student (Stu_No, Stu_Name, Stu_Sex, Stu_Login_Name, Stu_Password) VALUES
('201904010103', '王五', '男', 'wangwu', MD5('123456')),
('201904010104', '赵六', '女', 'zhaoliu', MD5('123456')),
('201904010105', '钱七', '男', 'qianqi', MD5('123456'));
