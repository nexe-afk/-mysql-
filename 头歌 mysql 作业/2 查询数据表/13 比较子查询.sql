-- 13 比较子查询

-- 1. 使用比较运算符（=, >, <, >=, <=, !=）
SELECT Stu_No, Stu_Name, Stu_Birthday
FROM tb_student
WHERE Stu_Birthday > (
    SELECT AVG(Stu_Birthday) FROM tb_student
);

-- 2. 查询高于平均成绩的记录
SELECT Stu_No, Course_No, Score
FROM tb_grade
WHERE Score > (
    SELECT AVG(Score) FROM tb_grade
);

-- 3. 查询最大值的记录
SELECT Stu_No, Stu_Name, Per_Quantity
FROM tb_class
WHERE Per_Quantity = (
    SELECT MAX(Per_Quantity) FROM tb_class
);

-- 4. 多列比较子查询
SELECT Stu_No, Stu_Name
FROM tb_student
WHERE Stu_Birthday = (
    SELECT MIN(Stu_Birthday) FROM tb_student
);

-- 5. 使用 ALL 关键字
SELECT Stu_No, Score
FROM tb_grade
WHERE Score > ALL (
    SELECT Score FROM tb_grade WHERE Course_No = '900001'
);

-- 6. 使用 ANY/SOME 关键字
SELECT Stu_No, Score
FROM tb_grade
WHERE Score > ANY (
    SELECT Score FROM tb_grade WHERE Course_No = '900001'
);
