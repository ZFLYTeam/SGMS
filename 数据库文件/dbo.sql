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

Date: 2015-01-09 15:43:12
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
DBCC CHECKIDENT(N'[dbo].[t_academy]', RESEED, 9)
GO

-- ----------------------------
-- Records of t_academy
-- ----------------------------
SET IDENTITY_INSERT [dbo].[t_academy] ON
GO
INSERT INTO [dbo].[t_academy] ([id], [academyName]) VALUES (N'7', N'计信学院')
GO
GO
INSERT INTO [dbo].[t_academy] ([id], [academyName]) VALUES (N'8', N'历史学院')
GO
GO
INSERT INTO [dbo].[t_academy] ([id], [academyName]) VALUES (N'9', N'外语学院')
GO
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
INSERT INTO [dbo].[t_admin] ([id], [userName], [password], [headImage]) VALUES (N'1', N'admin', N'E10ADC3949BA59ABBE56E057F20F883E', null)
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
[className] varchar(50) NULL ,
[id] int NOT NULL IDENTITY(1,1) 
)


GO
DBCC CHECKIDENT(N'[dbo].[t_class]', RESEED, 23)
GO

-- ----------------------------
-- Records of t_class
-- ----------------------------
SET IDENTITY_INSERT [dbo].[t_class] ON
GO
INSERT INTO [dbo].[t_class] ([majorId], [className], [id]) VALUES (N'6', N'12计科2班', N'12')
GO
GO
INSERT INTO [dbo].[t_class] ([majorId], [className], [id]) VALUES (N'6', N'12计科1班', N'14')
GO
GO
INSERT INTO [dbo].[t_class] ([majorId], [className], [id]) VALUES (N'6', N'12计科3班', N'15')
GO
GO
INSERT INTO [dbo].[t_class] ([majorId], [className], [id]) VALUES (N'9', N'12软工1班', N'17')
GO
GO
INSERT INTO [dbo].[t_class] ([majorId], [className], [id]) VALUES (N'10', N'12信安1班', N'18')
GO
GO
INSERT INTO [dbo].[t_class] ([majorId], [className], [id]) VALUES (N'11', N'12档案1班', N'19')
GO
GO
INSERT INTO [dbo].[t_class] ([majorId], [className], [id]) VALUES (N'12', N'12历史1班', N'20')
GO
GO
INSERT INTO [dbo].[t_class] ([majorId], [className], [id]) VALUES (N'12', N'12历史1班', N'21')
GO
GO
INSERT INTO [dbo].[t_class] ([majorId], [className], [id]) VALUES (N'13', N'12英语1班', N'22')
GO
GO
INSERT INTO [dbo].[t_class] ([majorId], [className], [id]) VALUES (N'14', N'12法语1班', N'23')
GO
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
[courseName] varchar(50) NULL ,
[property] varchar(50) NOT NULL ,
[id] int NOT NULL IDENTITY(1,1) 
)


GO
DBCC CHECKIDENT(N'[dbo].[t_course]', RESEED, 14)
GO

-- ----------------------------
-- Records of t_course
-- ----------------------------
SET IDENTITY_INSERT [dbo].[t_course] ON
GO
INSERT INTO [dbo].[t_course] ([academyId], [courseName], [property], [id]) VALUES (N'7', N'离散数学', N'必修', N'8')
GO
GO
INSERT INTO [dbo].[t_course] ([academyId], [courseName], [property], [id]) VALUES (N'7', N'计算机系统结构', N'必修', N'9')
GO
GO
INSERT INTO [dbo].[t_course] ([academyId], [courseName], [property], [id]) VALUES (N'7', N'计算方法', N'选修', N'10')
GO
GO
INSERT INTO [dbo].[t_course] ([academyId], [courseName], [property], [id]) VALUES (N'7', N'接口', N'必修', N'11')
GO
GO
INSERT INTO [dbo].[t_course] ([academyId], [courseName], [property], [id]) VALUES (N'7', N'数据结构', N'必修', N'12')
GO
GO
INSERT INTO [dbo].[t_course] ([academyId], [courseName], [property], [id]) VALUES (N'7', N'Java程序设计', N'选修', N'13')
GO
GO
INSERT INTO [dbo].[t_course] ([academyId], [courseName], [property], [id]) VALUES (N'7', N'Web程序设计', N'必修', N'14')
GO
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
DBCC CHECKIDENT(N'[dbo].[t_courseManage]', RESEED, 9)
GO

-- ----------------------------
-- Records of t_courseManage
-- ----------------------------
SET IDENTITY_INSERT [dbo].[t_courseManage] ON
GO
INSERT INTO [dbo].[t_courseManage] ([id], [courseId], [teacherId], [termId], [credit], [creditHours]) VALUES (N'5', N'8', N'4', N'7', N'4', N'42')
GO
GO
INSERT INTO [dbo].[t_courseManage] ([id], [courseId], [teacherId], [termId], [credit], [creditHours]) VALUES (N'6', N'9', N'6', N'7', N'4', N'34')
GO
GO
INSERT INTO [dbo].[t_courseManage] ([id], [courseId], [teacherId], [termId], [credit], [creditHours]) VALUES (N'7', N'13', N'4', N'8', N'5', N'65')
GO
GO
INSERT INTO [dbo].[t_courseManage] ([id], [courseId], [teacherId], [termId], [credit], [creditHours]) VALUES (N'8', N'12', N'6', N'8', N'6', N'72')
GO
GO
INSERT INTO [dbo].[t_courseManage] ([id], [courseId], [teacherId], [termId], [credit], [creditHours]) VALUES (N'9', N'14', N'4', N'9', N'4', N'45')
GO
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
DBCC CHECKIDENT(N'[dbo].[t_major]', RESEED, 14)
GO

-- ----------------------------
-- Records of t_major
-- ----------------------------
SET IDENTITY_INSERT [dbo].[t_major] ON
GO
INSERT INTO [dbo].[t_major] ([id], [majorNum], [majorName], [academyId]) VALUES (N'6', N'3', N'计算机科学与技术', N'7')
GO
GO
INSERT INTO [dbo].[t_major] ([id], [majorNum], [majorName], [academyId]) VALUES (N'9', N'4', N'软件工程', N'7')
GO
GO
INSERT INTO [dbo].[t_major] ([id], [majorNum], [majorName], [academyId]) VALUES (N'10', N'6', N'信息安全', N'7')
GO
GO
INSERT INTO [dbo].[t_major] ([id], [majorNum], [majorName], [academyId]) VALUES (N'11', N'7', N'档案管理', N'8')
GO
GO
INSERT INTO [dbo].[t_major] ([id], [majorNum], [majorName], [academyId]) VALUES (N'12', N'8', N'历史', N'8')
GO
GO
INSERT INTO [dbo].[t_major] ([id], [majorNum], [majorName], [academyId]) VALUES (N'13', N'9', N'英语', N'9')
GO
GO
INSERT INTO [dbo].[t_major] ([id], [majorNum], [majorName], [academyId]) VALUES (N'14', N'10', N'法语', N'9')
GO
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
DBCC CHECKIDENT(N'[dbo].[t_news]', RESEED, 2)
GO

-- ----------------------------
-- Records of t_news
-- ----------------------------
SET IDENTITY_INSERT [dbo].[t_news] ON
GO
INSERT INTO [dbo].[t_news] ([id], [newsTitle], [newsBody], [newsRepTime], [newsModifyTime]) VALUES (N'1', N'周杰伦结婚了', N'周杰伦居然结婚了！！', N'2015年01月07日 04:17:40', N'2015年01月07日 04:17:46')
GO
GO
INSERT INTO [dbo].[t_news] ([id], [newsTitle], [newsBody], [newsRepTime], [newsModifyTime]) VALUES (N'2', N'胡耀谈恋爱了', N'胡耀和方淼谈恋爱了，就在昨天晚上！！！！', N'2015年01月07日 08:54:16', null)
GO
GO
SET IDENTITY_INSERT [dbo].[t_news] OFF
GO

-- ----------------------------
-- Table structure for t_option
-- ----------------------------
DROP TABLE [dbo].[t_option]
GO
CREATE TABLE [dbo].[t_option] (
[isTeachSystemOn] int NULL DEFAULT ((1)) ,
[isStuSysOn] int NULL DEFAULT ((1)) ,
[isCourseChooseOn] int NULL DEFAULT ((1)) 
)


GO

-- ----------------------------
-- Records of t_option
-- ----------------------------
INSERT INTO [dbo].[t_option] ([isTeachSystemOn], [isStuSysOn], [isCourseChooseOn]) VALUES (N'1', N'1', N'1')
GO
GO

-- ----------------------------
-- Table structure for t_sc
-- ----------------------------
DROP TABLE [dbo].[t_sc]
GO
CREATE TABLE [dbo].[t_sc] (
[stuId] int NULL ,
[cmId] int NULL ,
[usualScore] float(53) NULL DEFAULT ((0)) ,
[testScore] float(53) NULL DEFAULT ((0)) ,
[id] int NOT NULL IDENTITY(1,1) ,
[couldModify] int NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[t_sc]', RESEED, 24)
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
INSERT INTO [dbo].[t_sc] ([stuId], [cmId], [usualScore], [testScore], [id], [couldModify]) VALUES (N'12', N'5', N'100', N'50', N'15', null)
GO
GO
INSERT INTO [dbo].[t_sc] ([stuId], [cmId], [usualScore], [testScore], [id], [couldModify]) VALUES (N'12', N'6', N'100', N'80', N'16', N'0')
GO
GO
INSERT INTO [dbo].[t_sc] ([stuId], [cmId], [usualScore], [testScore], [id], [couldModify]) VALUES (N'10', N'5', N'80', N'60', N'17', null)
GO
GO
INSERT INTO [dbo].[t_sc] ([stuId], [cmId], [usualScore], [testScore], [id], [couldModify]) VALUES (N'10', N'6', N'0', N'100', N'18', null)
GO
GO
INSERT INTO [dbo].[t_sc] ([stuId], [cmId], [usualScore], [testScore], [id], [couldModify]) VALUES (N'12', N'7', N'66', N'66', N'19', N'0')
GO
GO
INSERT INTO [dbo].[t_sc] ([stuId], [cmId], [usualScore], [testScore], [id], [couldModify]) VALUES (N'12', N'8', N'80', N'60', N'20', null)
GO
GO
INSERT INTO [dbo].[t_sc] ([stuId], [cmId], [usualScore], [testScore], [id], [couldModify]) VALUES (N'10', N'7', N'60', N'50', N'21', N'0')
GO
GO
INSERT INTO [dbo].[t_sc] ([stuId], [cmId], [usualScore], [testScore], [id], [couldModify]) VALUES (N'10', N'8', N'80', N'60', N'22', N'0')
GO
GO
INSERT INTO [dbo].[t_sc] ([stuId], [cmId], [usualScore], [testScore], [id], [couldModify]) VALUES (N'12', N'9', N'78', N'67', N'24', N'0')
GO
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
[sex] varchar(50) NOT NULL ,
[birth] varchar(50) NULL ,
[nation] varchar(50) NULL ,
[political] varchar(50) NULL ,
[headImage] varchar(50) NULL ,
[classId] int NULL ,
[idNum] varchar(50) NULL ,
[password] varchar(50) NULL ,
[id] int NOT NULL IDENTITY(1,1) 
)


GO
DBCC CHECKIDENT(N'[dbo].[t_student]', RESEED, 14)
GO

-- ----------------------------
-- Records of t_student
-- ----------------------------
SET IDENTITY_INSERT [dbo].[t_student] ON
GO
INSERT INTO [dbo].[t_student] ([name], [sno], [sex], [birth], [nation], [political], [headImage], [classId], [idNum], [password], [id]) VALUES (N'於剑', N'2012221104210098', N'男', N'1989-02-15', N'汉族', N'团员', N'20150107040522.jpg', N'12', N'421125199410122345', N'E10ADC3949BA59ABBE56E057F20F883E', N'10')
GO
GO
INSERT INTO [dbo].[t_student] ([name], [sno], [sex], [birth], [nation], [political], [headImage], [classId], [idNum], [password], [id]) VALUES (N'张嘉', N'2012221104210097', N'男', N'1989-02-15', N'汉族', N'团员', N'20150107040522.jpg', N'12', N'42123418903626332', N'E10ADC3949BA59ABBE56E057F20F883E', N'12')
GO
GO
INSERT INTO [dbo].[t_student] ([name], [sno], [sex], [birth], [nation], [political], [headImage], [classId], [idNum], [password], [id]) VALUES (N'方淼', N'2012221104210096', N'男', N'1995-03-02', N'汉族', N'团员', N'20150107083304.jpg', N'14', N'098765432123456789', N'E', N'13')
GO
GO
INSERT INTO [dbo].[t_student] ([name], [sno], [sex], [birth], [nation], [political], [headImage], [classId], [idNum], [password], [id]) VALUES (N'胡耀', N'2012221104210095', N'男', N'2015-03-12', N'汉族', N'团员', N'20150107083646.jpg', N'15', N'787666666666666666', N'E', N'14')
GO
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
[headImage] varchar(50) NULL ,
[password] varchar(50) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[t_teacher]', RESEED, 6)
GO

-- ----------------------------
-- Records of t_teacher
-- ----------------------------
SET IDENTITY_INSERT [dbo].[t_teacher] ON
GO
INSERT INTO [dbo].[t_teacher] ([id], [techNum], [teacherName], [sex], [birth], [title], [headImage], [password]) VALUES (N'4', N'123456', N'李三', N'男', N'1970-02-04', N'讲师', N'20150107040522.jpg', N'E10ADC3949BA59ABBE56E057F20F883E')
GO
GO
INSERT INTO [dbo].[t_teacher] ([id], [techNum], [teacherName], [sex], [birth], [title], [headImage], [password]) VALUES (N'6', N'123457', N'张爱国', N'男', N'1989-02-16', N'讲师', N'20150107040522.jpg', N'E10ADC3949BA59ABBE56E057F20F883E')
GO
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
[termName] varchar(50) NULL ,
[isNow] varchar(255) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[t_term]', RESEED, 9)
GO

-- ----------------------------
-- Records of t_term
-- ----------------------------
SET IDENTITY_INSERT [dbo].[t_term] ON
GO
INSERT INTO [dbo].[t_term] ([id], [termName], [isNow]) VALUES (N'7', N'2013-2014第1学期', null)
GO
GO
INSERT INTO [dbo].[t_term] ([id], [termName], [isNow]) VALUES (N'8', N'2013-2014第2学期', null)
GO
GO
INSERT INTO [dbo].[t_term] ([id], [termName], [isNow]) VALUES (N'9', N'2014-2015第1学期', N'isNow')
GO
GO
SET IDENTITY_INSERT [dbo].[t_term] OFF
GO

-- ----------------------------
-- View structure for view_courseManage
-- ----------------------------
DROP VIEW [dbo].[view_courseManage]
GO
CREATE VIEW [dbo].[view_courseManage] AS 
SELECT
dbo.t_course.courseName,
dbo.t_courseManage.creditHours,
dbo.t_courseManage.credit,
dbo.t_term.termName,
dbo.t_course.property,
dbo.t_courseManage.courseId,
dbo.t_courseManage.teacherId,
dbo.t_courseManage.termId,
dbo.t_courseManage.id

FROM
dbo.t_course
INNER JOIN dbo.t_courseManage ON dbo.t_course.id = dbo.t_courseManage.courseId
INNER JOIN dbo.t_term ON dbo.t_courseManage.termId = dbo.t_term.id
GO

-- ----------------------------
-- View structure for view_SC
-- ----------------------------
DROP VIEW [dbo].[view_SC]
GO
CREATE VIEW [dbo].[view_SC] AS 
SELECT
dbo.t_student.name,
dbo.t_student.sno,
dbo.t_course.courseName,
dbo.t_course.property,
dbo.t_teacher.teacherName,
dbo.t_courseManage.credit,
dbo.t_courseManage.creditHours,
dbo.t_sc.testScore,
dbo.t_sc.stuId,
dbo.t_sc.cmId,
dbo.t_sc.id,
dbo.t_courseManage.termId,
dbo.t_courseManage.teacherId,
dbo.t_term.termName,
dbo.t_major.majorName,
dbo.t_class.className,
dbo.t_academy.academyName,
dbo.t_term.isNow,
dbo.t_courseManage.courseId,
dbo.t_sc.usualScore,
dbo.t_sc.couldModify

FROM
dbo.t_courseManage
INNER JOIN dbo.t_sc ON dbo.t_sc.cmId = dbo.t_courseManage.id
INNER JOIN dbo.t_course ON dbo.t_courseManage.courseId = dbo.t_course.id
INNER JOIN dbo.t_teacher ON dbo.t_courseManage.teacherId = dbo.t_teacher.id
INNER JOIN dbo.t_student ON dbo.t_sc.stuId = dbo.t_student.id
INNER JOIN dbo.t_term ON dbo.t_courseManage.termId = dbo.t_term.id
INNER JOIN dbo.t_class ON dbo.t_student.classId = dbo.t_class.id
INNER JOIN dbo.t_major ON dbo.t_class.majorId = dbo.t_major.id
INNER JOIN dbo.t_academy ON dbo.t_course.academyId = dbo.t_academy.id AND dbo.t_major.academyId = dbo.t_academy.id
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
dbo.t_class.className,
dbo.t_major.majorName,
dbo.t_academy.academyName,
dbo.t_student.classId

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
dbo.t_teacher.teacherName,
dbo.t_course.courseName,
dbo.t_courseManage.credit,
dbo.t_courseManage.creditHours,
dbo.t_academy.academyName,
dbo.t_course.academyId,
dbo.t_courseManage.courseId,
dbo.t_courseManage.teacherId,
dbo.t_courseManage.termId,
dbo.t_courseManage.id,
dbo.t_term.termName,
dbo.t_term.isNow

FROM
dbo.t_teacher
INNER JOIN dbo.t_courseManage ON dbo.t_courseManage.teacherId = dbo.t_teacher.id
INNER JOIN dbo.t_course ON dbo.t_courseManage.courseId = dbo.t_course.id
INNER JOIN dbo.t_academy ON dbo.t_course.academyId = dbo.t_academy.id
INNER JOIN dbo.t_term ON dbo.t_courseManage.termId = dbo.t_term.id
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
