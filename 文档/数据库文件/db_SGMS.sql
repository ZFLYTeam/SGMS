USE [master]
GO
/****** Object:  Database [db_SGMS]    Script Date: 01/09/2015 21:14:20 ******/
CREATE DATABASE [db_SGMS] ON  PRIMARY 
( NAME = N'db_SGMS', FILENAME = N'E:\Code\SQL Server Management Studio\db_SGMS\db_SGMS.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'db_SGMS_log', FILENAME = N'E:\Code\SQL Server Management Studio\db_SGMS\db_SGMS_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [db_SGMS] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [db_SGMS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [db_SGMS] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [db_SGMS] SET ANSI_NULLS OFF
GO
ALTER DATABASE [db_SGMS] SET ANSI_PADDING OFF
GO
ALTER DATABASE [db_SGMS] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [db_SGMS] SET ARITHABORT OFF
GO
ALTER DATABASE [db_SGMS] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [db_SGMS] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [db_SGMS] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [db_SGMS] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [db_SGMS] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [db_SGMS] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [db_SGMS] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [db_SGMS] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [db_SGMS] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [db_SGMS] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [db_SGMS] SET  DISABLE_BROKER
GO
ALTER DATABASE [db_SGMS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [db_SGMS] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [db_SGMS] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [db_SGMS] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [db_SGMS] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [db_SGMS] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [db_SGMS] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [db_SGMS] SET  READ_WRITE
GO
ALTER DATABASE [db_SGMS] SET RECOVERY SIMPLE
GO
ALTER DATABASE [db_SGMS] SET  MULTI_USER
GO
ALTER DATABASE [db_SGMS] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [db_SGMS] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'db_SGMS', N'ON'
GO
USE [db_SGMS]
GO
/****** Object:  Table [dbo].[t_term]    Script Date: 01/09/2015 21:14:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_term](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[termName] [varchar](50) NULL,
	[isNow] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_teacher]    Script Date: 01/09/2015 21:14:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_teacher](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[techNum] [int] NOT NULL,
	[teacherName] [varchar](50) NOT NULL,
	[sex] [varchar](10) NOT NULL,
	[birth] [varchar](50) NULL,
	[title] [varchar](50) NULL,
	[headImage] [varchar](50) NULL,
	[password] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_admin]    Script Date: 01/09/2015 21:14:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_admin](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userName] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[headImage] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_academy]    Script Date: 01/09/2015 21:14:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_academy](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[academyName] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_option]    Script Date: 01/09/2015 21:14:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_option](
	[isTeachSystemOn] [int] NULL,
	[isStuSysOn] [int] NULL,
	[isCourseChooseOn] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_news]    Script Date: 01/09/2015 21:14:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_news](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[newsTitle] [varchar](50) NULL,
	[newsBody] [varchar](max) NULL,
	[newsRepTime] [varchar](50) NULL,
	[newsModifyTime] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_course]    Script Date: 01/09/2015 21:14:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_course](
	[academyId] [int] NULL,
	[courseName] [varchar](50) NULL,
	[property] [varchar](50) NOT NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_major]    Script Date: 01/09/2015 21:14:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_major](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[majorNum] [int] NULL,
	[majorName] [varchar](50) NULL,
	[academyId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_courseManage]    Script Date: 01/09/2015 21:14:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_courseManage](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[courseId] [int] NULL,
	[teacherId] [int] NULL,
	[termId] [int] NULL,
	[credit] [float] NULL,
	[creditHours] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_class]    Script Date: 01/09/2015 21:14:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_class](
	[majorId] [int] NULL,
	[className] [varchar](50) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[view_courseManage]    Script Date: 01/09/2015 21:14:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  View [dbo].[view_techCourse]    Script Date: 01/09/2015 21:14:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[t_student]    Script Date: 01/09/2015 21:14:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_student](
	[name] [varchar](50) NOT NULL,
	[sno] [varchar](50) NOT NULL,
	[sex] [varchar](50) NOT NULL,
	[birth] [varchar](50) NULL,
	[nation] [varchar](50) NULL,
	[political] [varchar](50) NULL,
	[headImage] [varchar](50) NULL,
	[classId] [int] NULL,
	[idNum] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_sc]    Script Date: 01/09/2015 21:14:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_sc](
	[stuId] [int] NULL,
	[cmId] [int] NULL,
	[usualScore] [float] NULL,
	[testScore] [float] NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[couldModify] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生选课表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_sc'
GO
/****** Object:  View [dbo].[view_student]    Script Date: 01/09/2015 21:14:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  View [dbo].[view_SC]    Script Date: 01/09/2015 21:14:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Default [DF__t_option__isTeac__3F466844]    Script Date: 01/09/2015 21:14:21 ******/
ALTER TABLE [dbo].[t_option] ADD  DEFAULT ((1)) FOR [isTeachSystemOn]
GO
/****** Object:  Default [DF__t_option__isStuS__403A8C7D]    Script Date: 01/09/2015 21:14:21 ******/
ALTER TABLE [dbo].[t_option] ADD  DEFAULT ((1)) FOR [isStuSysOn]
GO
/****** Object:  Default [DF__t_option__isCour__412EB0B6]    Script Date: 01/09/2015 21:14:21 ******/
ALTER TABLE [dbo].[t_option] ADD  DEFAULT ((1)) FOR [isCourseChooseOn]
GO
/****** Object:  Default [DF__t_sc__usualScore__71D1E811]    Script Date: 01/09/2015 21:14:21 ******/
ALTER TABLE [dbo].[t_sc] ADD  DEFAULT ((0)) FOR [usualScore]
GO
/****** Object:  Default [DF__t_sc__testScore__72C60C4A]    Script Date: 01/09/2015 21:14:21 ******/
ALTER TABLE [dbo].[t_sc] ADD  DEFAULT ((0)) FOR [testScore]
GO
/****** Object:  ForeignKey [FK__t_course__academ__6A30C649]    Script Date: 01/09/2015 21:14:21 ******/
ALTER TABLE [dbo].[t_course]  WITH CHECK ADD FOREIGN KEY([academyId])
REFERENCES [dbo].[t_academy] ([id])
GO
/****** Object:  ForeignKey [FK__t_major__academy__6E01572D]    Script Date: 01/09/2015 21:14:21 ******/
ALTER TABLE [dbo].[t_major]  WITH CHECK ADD FOREIGN KEY([academyId])
REFERENCES [dbo].[t_academy] ([id])
GO
/****** Object:  ForeignKey [FK__t_courseM__cours__6B24EA82]    Script Date: 01/09/2015 21:14:21 ******/
ALTER TABLE [dbo].[t_courseManage]  WITH CHECK ADD FOREIGN KEY([courseId])
REFERENCES [dbo].[t_course] ([id])
GO
/****** Object:  ForeignKey [FK__t_courseM__teach__6C190EBB]    Script Date: 01/09/2015 21:14:21 ******/
ALTER TABLE [dbo].[t_courseManage]  WITH CHECK ADD FOREIGN KEY([teacherId])
REFERENCES [dbo].[t_teacher] ([id])
GO
/****** Object:  ForeignKey [FK__t_courseM__termI__6D0D32F4]    Script Date: 01/09/2015 21:14:21 ******/
ALTER TABLE [dbo].[t_courseManage]  WITH CHECK ADD FOREIGN KEY([termId])
REFERENCES [dbo].[t_term] ([id])
GO
/****** Object:  ForeignKey [FK__t_class__majorId__693CA210]    Script Date: 01/09/2015 21:14:21 ******/
ALTER TABLE [dbo].[t_class]  WITH CHECK ADD FOREIGN KEY([majorId])
REFERENCES [dbo].[t_major] ([id])
GO
/****** Object:  ForeignKey [FK__t_student__class__70DDC3D8]    Script Date: 01/09/2015 21:14:21 ******/
ALTER TABLE [dbo].[t_student]  WITH CHECK ADD FOREIGN KEY([classId])
REFERENCES [dbo].[t_class] ([id])
GO
/****** Object:  ForeignKey [FK__t_sc__cmId__6EF57B66]    Script Date: 01/09/2015 21:14:21 ******/
ALTER TABLE [dbo].[t_sc]  WITH CHECK ADD FOREIGN KEY([cmId])
REFERENCES [dbo].[t_courseManage] ([id])
GO
/****** Object:  ForeignKey [FK__t_sc__stuId__6FE99F9F]    Script Date: 01/09/2015 21:14:21 ******/
ALTER TABLE [dbo].[t_sc]  WITH CHECK ADD FOREIGN KEY([stuId])
REFERENCES [dbo].[t_student] ([id])
GO
