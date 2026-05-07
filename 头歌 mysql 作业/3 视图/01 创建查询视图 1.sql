-- 01 创建查询视图 1

-- 1. 创建简单视图
CREATE OR REPLACE VIEW v_student_basic AS
SELECT 
    Stu_No AS 学号，
    Stu_Name AS 姓名，
    Stu_Sex AS 性别，
    Stu_Birthday AS 出生日期
FROM tb_student;

-- 2. 查询视图
SELECT * FROM v_student_basic;

-- 3. 创建带条件的视图
CREATE OR REPLACE VIEW v_student_male AS
SELECT 
    Stu_No,
    Stu_Name,
    Stu_Sex
FROM tb_student
WHERE Stu_Sex = '男';

-- 4. 创建带聚合的视图
CREATE OR REPLACE VIEW v_class_stats AS
SELECT 
    Profession_No,
    COUNT(*) AS 班级数，
    SUM(Per_Quantity) AS 总人数，
    AVG(Per_Quantity) AS 平均人数
FROM tb_class
GROUP BY Profession_No;

-- 5. 查询聚合视图
SELECT * FROM v_class_stats;
