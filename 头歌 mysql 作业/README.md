# 头歌 MySQL 实训作业

📚 本仓库包含头歌（EduCoder）平台的 MySQL 数据库实训课程完整作业答案。

## 📋 项目概述

本项目涵盖了 MySQL 数据库从基础到进阶的 7 个核心模块，共 48 个实践练习，适合数据库初学者系统学习 MySQL。

## 🗂️ 目录结构

```
头歌 mysql 作业/
├── 1 操作数据库和表/          # 数据库和表的基本操作 (10 个练习)
├── 2 查询数据表/              # 数据查询技术 (17 个练习)
├── 3 视图/                    # 视图的创建与管理 (4 个练习)
├── 4 索引/                    # 索引的创建与优化 (3 个练习)
├── 5 完整性约束/              # 数据完整性约束 (4 个练习)
├── 6 数据库编程/              # 存储过程、函数、触发器 (6 个练习)
├── 7 管理数据库/              # 用户管理与权限控制 (4 个练习)
└── 作业完成说明.md            # 详细说明文档
```

## 📖 模块详情

### 1️⃣ 操作数据库和表
- 数据库的创建、查看、修改、删除
- 表的创建、查看、描述
- 数据的增删改查（INSERT、UPDATE、DELETE）
- 表结构的复制、修改

### 2️⃣ 查询数据表
- 单表查询、多表查询
- 聚合函数（COUNT、SUM、AVG、MAX、MIN）
- WHERE、GROUP BY、HAVING、ORDER BY、LIMIT
- 子查询（IN、EXISTS、比较子查询）
- CASE 语句、列别名、计算列值

### 3️⃣ 视图
- 创建查询视图
- 多表连接视图
- 视图的增删改查操作
- 视图的修改与删除

### 4️⃣ 索引
- CREATE INDEX 创建索引
- ALTER TABLE 创建索引
- 索引的删除与管理

### 5️⃣ 完整性约束
- 主键约束（PRIMARY KEY）
- 唯一键约束（UNIQUE KEY）
- 外键约束（FOREIGN KEY）
- CHECK 约束

### 6️⃣ 数据库编程
- 存储过程的创建与调用
- 触发器的设计与应用
- 存储函数的编写
- 流程控制与循环（WHILE、REPEAT、LOOP）

### 7️⃣ 管理数据库
- 用户创建与管理
- 权限授予（GRANT）
- 权限回收（REVOKE）

## 🚀 快速开始

### 环境要求
- MySQL 5.7+ 或 MySQL 8.0+
- 注意：CHECK 约束需要 MySQL 8.0.16+

### 使用步骤

1. **克隆仓库**
```bash
git clone https://github.com/nexe-afk/-mysql-.git
cd 头歌 mysql 作业
```

2. **连接数据库**
```bash
mysql -u your_username -p
```

3. **创建测试数据库**
```sql
CREATE DATABASE SchoolDB DEFAULT CHARACTER SET utf8mb4;
USE SchoolDB;
```

4. **按顺序执行 SQL 文件**
```bash
# 示例：执行第一个任务的 SQL
mysql -u your_username -p SchoolDB < "1 操作数据库和表/01 创建并管理数据库.sql"
```

## ⚠️ 注意事项

1. **执行顺序**: 建议按照模块编号顺序执行 SQL 文件
2. **数据备份**: 执行 DELETE、DROP 等操作前请备份数据
3. **环境差异**: 部分 SQL 可能需要根据实际表结构调整
4. **学习目的**: 本仓库仅供学习参考，建议先独立完成作业再对照答案

## 📝 版本信息

- **初始版本**: v1.0
- **提交时间**: 2026-05-07
- **MySQL 版本**: 兼容 MySQL 5.7+ / 8.0+

## 🤝 贡献

欢迎提交 Issue 和 Pull Request 来改进这些练习答案！

## 📄 许可

本项目仅供学习交流使用。

---

**Happy Coding!** 💻🎯
