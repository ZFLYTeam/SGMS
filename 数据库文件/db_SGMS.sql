/*
Navicat SQL Server Data Transfer

Source Server         : ihueiJSqlServer
Source Server Version : 105000
Source Host           : IHUEIJ-PC\SQLEXPRESS:1433
Source Database       : db_SGMS
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 105000
File Encoding         : 65001

Date: 2014-12-15 16:14:19
*/


-- ----------------------------
-- Table structure for t_academy
-- ----------------------------
DROP TABLE [dbo].[t_academy]
GO
CREATE TABLE [dbo].[t_academy] (
[id] int NOT NULL IDENTITY(1,1) ,
[academyName] varchar(50) NULL 
)


GO

-- ----------------------------
-- Records of t_academy
-- ----------------------------
SET IDENTITY_INSERT [dbo].[t_academy] ON
GO
SET IDENTITY_INSERT [dbo].[t_academy] OFF
GO

-- ----------------------------
-- Table structure for t_admin
-- ----------------------------
DROP TABLE [dbo].[t_admin]
GO
CREATE TABLE [dbo].[t_admin] (
[id] int NOT NULL IDENTITY(1,1) ,
[userName] varchar(50) NOT NULL ,
[password] varchar(50) NOT NULL ,
[headImage] varchar(50) NULL 
)


GO

-- ----------------------------
-- Records of t_admin
-- ----------------------------
SET IDENTITY_INSERT [dbo].[t_admin] ON
GO
INSERT INTO [dbo].[t_admin] ([id], [userName], [password], [headImage]) VALUES (N'1', N'admin', N'123456', N'')
GO
GO
SET IDENTITY_INSERT [dbo].[t_admin] OFF
GO

-- ----------------------------
-- Table structure for t_class
-- ----------------------------
DROP TABLE [dbo].[t_class]
GO
CREATE TABLE [dbo].[t_class] (
[majorId] int NULL ,
[classNum] int NULL ,
[grade] int NULL ,
[id] int NOT NULL IDENTITY(1,1) 
)


GO

-- ----------------------------
-- Records of t_class
-- ----------------------------
SET IDENTITY_INSERT [dbo].[t_class] ON
GO
SET IDENTITY_INSERT [dbo].[t_class] OFF
GO

-- ----------------------------
-- Table structure for t_course
-- ----------------------------
DROP TABLE [dbo].[t_course]
GO
CREATE TABLE [dbo].[t_course] (
[academyId] int NULL ,
[courseName] int NOT NULL ,
[property] varchar(50) NOT NULL ,
[id] int NOT NULL IDENTITY(1,1) 
)


GO

-- ----------------------------
-- Records of t_course
-- ----------------------------
SET IDENTITY_INSERT [dbo].[t_course] ON
GO
SET IDENTITY_INSERT [dbo].[t_course] OFF
GO

-- ----------------------------
-- Table structure for t_courseManage
-- ----------------------------
DROP TABLE [dbo].[t_courseManage]
GO
CREATE TABLE [dbo].[t_courseManage] (
[id] int NOT NULL IDENTITY(1,1) ,
[courseId] int NULL ,
[teacherId] int NULL ,
[termId] int NULL ,
[credit] float(53) NULL ,
[creditHours] int NULL 
)


GO

-- ----------------------------
-- Records of t_courseManage
-- ----------------------------
SET IDENTITY_INSERT [dbo].[t_courseManage] ON
GO
SET IDENTITY_INSERT [dbo].[t_courseManage] OFF
GO

-- ----------------------------
-- Table structure for t_major
-- ----------------------------
DROP TABLE [dbo].[t_major]
GO
CREATE TABLE [dbo].[t_major] (
[id] int NOT NULL IDENTITY(1,1) ,
[majorNum] int NULL ,
[majorName] varchar(50) NULL ,
[academyId] int NULL 
)


GO

-- ----------------------------
-- Records of t_major
-- ----------------------------
SET IDENTITY_INSERT [dbo].[t_major] ON
GO
SET IDENTITY_INSERT [dbo].[t_major] OFF
GO

-- ----------------------------
-- Table structure for t_news
-- ----------------------------
DROP TABLE [dbo].[t_news]
GO
CREATE TABLE [dbo].[t_news] (
[id] int NOT NULL IDENTITY(1,1) ,
[newsTitle] varchar(50) NULL ,
[newsBody] varchar(MAX) NULL ,
[newsRepTime] varchar(50) NULL ,
[newsModifyTime] varchar(50) NULL 
)


GO

-- ----------------------------
-- Records of t_news
-- ----------------------------
SET IDENTITY_INSERT [dbo].[t_news] ON
GO
SET IDENTITY_INSERT [dbo].[t_news] OFF
GO

-- ----------------------------
-- Table structure for t_sc
-- ----------------------------
DROP TABLE [dbo].[t_sc]
GO
CREATE TABLE [dbo].[t_sc] (
[stuId] int NULL ,
[cmId] int NULL ,
[usualScore] float(53) NULL ,
[testScore] float(53) NULL ,
[id] int NOT NULL IDENTITY(1,1) 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_sc', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'学生选课表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sc'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'学生选课表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sc'
GO

-- ----------------------------
-- Records of t_sc
-- ----------------------------
SET IDENTITY_INSERT [dbo].[t_sc] ON
GO
SET IDENTITY_INSERT [dbo].[t_sc] OFF
GO

-- ----------------------------
-- Table structure for t_student
-- ----------------------------
DROP TABLE [dbo].[t_student]
GO
CREATE TABLE [dbo].[t_student] (
[name] varchar(50) NOT NULL ,
[sno] varchar(50) NOT NULL ,
[sex] varchar(50) NULL ,
[birth] varchar(50) NULL ,
[nation] varchar(50) NULL ,
[political] varchar(50) NULL ,
[headImage] varchar(50) NULL ,
[classId] int NULL ,
[idNum] varchar(50) NULL ,
[password] varchar(1) NULL ,
[id] int NOT NULL IDENTITY(1,1) 
)


GO

-- ----------------------------
-- Records of t_student
-- ----------------------------
SET IDENTITY_INSERT [dbo].[t_student] ON
GO
SET IDENTITY_INSERT [dbo].[t_student] OFF
GO

-- ----------------------------
-- Table structure for t_teacher
-- ----------------------------
DROP TABLE [dbo].[t_teacher]
GO
CREATE TABLE [dbo].[t_teacher] (
[id] int NOT NULL IDENTITY(1,1) ,
[techNum] int NOT NULL ,
[teacherName] varchar(50) NOT NULL ,
[sex] varchar(10) NOT NULL ,
[birth] varchar(50) NULL ,
[title] varchar(50) NULL ,
[heahImage] varchar(50) NULL ,
[password] varchar(1) NULL 
)


GO

-- ----------------------------
-- Records of t_teacher
-- ----------------------------
SET IDENTITY_INSERT [dbo].[t_teacher] ON
GO
SET IDENTITY_INSERT [dbo].[t_teacher] OFF
GO

-- ----------------------------
-- Table structure for t_term
-- ----------------------------
DROP TABLE [dbo].[t_term]
GO
CREATE TABLE [dbo].[t_term] (
[id] int NOT NULL IDENTITY(1,1) ,
[termName] varchar(50) NULL 
)


GO

-- ----------------------------
-- Records of t_term
-- ----------------------------
SET IDENTITY_INSERT [dbo].[t_term] ON
GO
SET IDENTITY_INSERT [dbo].[t_term] OFF
GO

-- ----------------------------
-- View structure for view_SC
-- ----------------------------
DROP VIEW [dbo].[view_SC]
GO
CREATE VIEW [dbo].[view_SC] AS 
SELECT
dbo.t_student.id,
dbo.t_student.name,
dbo.t_student.sno,
dbo.t_course.courseName,
dbo.t_course.property,
dbo.t_teacher.teacherName,
dbo.t_courseManage.credit,
dbo.t_courseManage.creditHours,
dbo.t_sc.usualScore,
dbo.t_sc.testScore

FROM
dbo.t_courseManage
INNER JOIN dbo.t_sc ON dbo.t_sc.cmId = dbo.t_courseManage.id
INNER JOIN dbo.t_course ON dbo.t_courseManage.courseId = dbo.t_course.id
INNER JOIN dbo.t_teacher ON dbo.t_courseManage.teacherId = dbo.t_teacher.id
INNER JOIN dbo.t_student ON dbo.t_sc.stuId = dbo.t_student.id
GO

-- ----------------------------
-- View structure for view_student
-- ----------------------------
DROP VIEW [dbo].[view_student]
GO
CREATE VIEW [dbo].[view_student] AS 
SELECT
dbo.t_student.id,
dbo.t_student.name,
dbo.t_student.sno,
dbo.t_student.sex,
dbo.t_student.birth,
dbo.t_student.nation,
dbo.t_student.political,
dbo.t_student.headImage,
dbo.t_student.idNum,
dbo.t_class.classNum,
dbo.t_class.grade,
dbo.t_major.majorName,
dbo.t_academy.academyName

FROM
dbo.t_student
INNER JOIN dbo.t_class ON dbo.t_student.classId = dbo.t_class.id
INNER JOIN dbo.t_major ON dbo.t_class.majorId = dbo.t_major.id
INNER JOIN dbo.t_academy ON dbo.t_major.academyId = dbo.t_academy.id
GO

-- ----------------------------
-- View structure for view_techCourse
-- ----------------------------
DROP VIEW [dbo].[view_techCourse]
GO
CREATE VIEW [dbo].[view_techCourse] AS 
SELECT
dbo.t_teacher.id,
dbo.t_teacher.teacherName,
dbo.t_course.courseName,
dbo.t_courseManage.credit,
dbo.t_courseManage.creditHours,
dbo.t_academy.academyName

FROM
dbo.t_teacher
INNER JOIN dbo.t_courseManage ON dbo.t_courseManage.teacherId = dbo.t_teacher.id
INNER JOIN dbo.t_course ON dbo.t_courseManage.courseId = dbo.t_course.id
INNER JOIN dbo.t_academy ON dbo.t_course.academyId = dbo.t_academy.id
GO

-- ----------------------------
-- Indexes structure for table t_academy
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table t_academy
-- ----------------------------
ALTER TABLE [dbo].[t_academy] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table t_admin
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table t_admin
-- ----------------------------
ALTER TABLE [dbo].[t_admin] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table t_class
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table t_class
-- ----------------------------
ALTER TABLE [dbo].[t_class] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table t_course
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table t_course
-- ----------------------------
ALTER TABLE [dbo].[t_course] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table t_courseManage
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table t_courseManage
-- ----------------------------
ALTER TABLE [dbo].[t_courseManage] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table t_major
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table t_major
-- ----------------------------
ALTER TABLE [dbo].[t_major] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table t_news
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table t_news
-- ----------------------------
ALTER TABLE [dbo].[t_news] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table t_sc
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table t_sc
-- ----------------------------
ALTER TABLE [dbo].[t_sc] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table t_student
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table t_student
-- ----------------------------
ALTER TABLE [dbo].[t_student] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table t_teacher
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table t_teacher
-- ----------------------------
ALTER TABLE [dbo].[t_teacher] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table t_term
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table t_term
-- ----------------------------
ALTER TABLE [dbo].[t_term] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[t_class]
-- ----------------------------
ALTER TABLE [dbo].[t_class] ADD FOREIGN KEY ([majorId]) REFERENCES [dbo].[t_major] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[t_course]
-- ----------------------------
ALTER TABLE [dbo].[t_course] ADD FOREIGN KEY ([academyId]) REFERENCES [dbo].[t_academy] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[t_courseManage]
-- ----------------------------
ALTER TABLE [dbo].[t_courseManage] ADD FOREIGN KEY ([courseId]) REFERENCES [dbo].[t_course] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [dbo].[t_courseManage] ADD FOREIGN KEY ([teacherId]) REFERENCES [dbo].[t_teacher] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [dbo].[t_courseManage] ADD FOREIGN KEY ([termId]) REFERENCES [dbo].[t_term] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[t_major]
-- ----------------------------
ALTER TABLE [dbo].[t_major] ADD FOREIGN KEY ([academyId]) REFERENCES [dbo].[t_academy] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[t_sc]
-- ----------------------------
ALTER TABLE [dbo].[t_sc] ADD FOREIGN KEY ([cmId]) REFERENCES [dbo].[t_courseManage] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [dbo].[t_sc] ADD FOREIGN KEY ([stuId]) REFERENCES [dbo].[t_student] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[t_student]
-- ----------------------------
ALTER TABLE [dbo].[t_student] ADD FOREIGN KEY ([classId]) REFERENCES [dbo].[t_class] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
