-- 06 聚合函数

-- 1. COUNT - 统计行数
SELECT COUNT(*) AS 总人数 FROM tb_student;
SELECT COUNT(Stu_No) AS 学号数量 FROM tb_student;
SELECT COUNT(DISTINCT Stu_Sex) AS 性别种类 FROM tb_student;

-- 2. SUM - 求和
SELECT SUM(Per_Quantity) AS 总班级人数 FROM tb_class;

-- 3. AVG - 平均值
SELECT AVG(Per_Quantity) AS 平均班级人数 FROM tb_class;

-- 4. MAX - 最大值
SELECT MAX(Per_Quantity) AS 最大班级人数 FROM tb_class;
SELECT MAX(Stu_Birthday) AS 最小年龄学生生日 FROM tb_student;

-- 5. MIN - 最小值
SELECT MIN(Per_Quantity) AS 最小班级人数 FROM tb_class;
SELECT MIN(Stu_Birthday) AS 最大年龄学生生日 FROM tb_student;

-- 6. 多个聚合函数一起使用
SELECT 
    COUNT(*) AS 总班级数，
    SUM(Per_Quantity) AS 总人数，
    AVG(Per_Quantity) AS 平均人数，
    MAX(Per_Quantity) AS 最多人数，
    MIN(Per_Quantity) AS 最少人数
FROM tb_class;
