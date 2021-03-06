USE [master]
GO
/****** Object:  Database [elJournal]    Script Date: 21.05.2022 18:14:51 ******/
CREATE DATABASE [elJournal]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'elJournal', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\elJournal.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'elJournal_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\elJournal_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [elJournal] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [elJournal].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [elJournal] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [elJournal] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [elJournal] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [elJournal] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [elJournal] SET ARITHABORT OFF 
GO
ALTER DATABASE [elJournal] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [elJournal] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [elJournal] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [elJournal] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [elJournal] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [elJournal] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [elJournal] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [elJournal] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [elJournal] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [elJournal] SET  DISABLE_BROKER 
GO
ALTER DATABASE [elJournal] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [elJournal] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [elJournal] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [elJournal] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [elJournal] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [elJournal] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [elJournal] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [elJournal] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [elJournal] SET  MULTI_USER 
GO
ALTER DATABASE [elJournal] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [elJournal] SET DB_CHAINING OFF 
GO
ALTER DATABASE [elJournal] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [elJournal] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [elJournal] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [elJournal] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [elJournal] SET QUERY_STORE = OFF
GO
USE [elJournal]
GO
/****** Object:  User [WODOLEY\hati-]    Script Date: 21.05.2022 18:14:51 ******/
CREATE USER [WODOLEY\hati-] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [WODOLEY\hati-]
GO
/****** Object:  Table [dbo].[StudGroup]    Script Date: 21.05.2022 18:14:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudGroup](
	[idGroup] [int] IDENTITY(1,1) NOT NULL,
	[groupName] [nvarchar](30) NOT NULL,
	[specialty] [int] NOT NULL,
	[yearOfAdmission] [int] NOT NULL,
	[course] [int] NOT NULL,
 CONSTRAINT [PK_Group_1] PRIMARY KEY CLUSTERED 
(
	[idGroup] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 21.05.2022 18:14:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher](
	[idTeach] [int] IDENTITY(1,1) NOT NULL,
	[idUser] [int] NOT NULL,
	[idPosition] [int] NOT NULL,
	[workExperience] [float] NOT NULL,
 CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED 
(
	[idTeach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 21.05.2022 18:14:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[idUser] [int] IDENTITY(1,1) NOT NULL,
	[fName] [nvarchar](30) NOT NULL,
	[lName] [nvarchar](30) NOT NULL,
	[patronim] [nvarchar](30) NULL,
	[dateOfBirth] [date] NOT NULL,
	[idGender] [int] NOT NULL,
	[login] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[idUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WeekDay]    Script Date: 21.05.2022 18:14:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WeekDay](
	[idDay] [smallint] IDENTITY(1,1) NOT NULL,
	[nameDay] [nvarchar](50) NULL,
 CONSTRAINT [PK_WeekDay] PRIMARY KEY CLUSTERED 
(
	[idDay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TeachSubject]    Script Date: 21.05.2022 18:14:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TeachSubject](
	[idTeachSub] [int] IDENTITY(1,1) NOT NULL,
	[idTeach] [int] NOT NULL,
	[idSubj] [int] NOT NULL,
 CONSTRAINT [PK_TeachSubject_1] PRIMARY KEY CLUSTERED 
(
	[idTeachSub] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TimeTable]    Script Date: 21.05.2022 18:14:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeTable](
	[idClass] [int] IDENTITY(1,1) NOT NULL,
	[timeStart] [time](7) NOT NULL,
	[timeFinish] [time](7) NOT NULL,
 CONSTRAINT [PK_TimeTable] PRIMARY KEY CLUSTERED 
(
	[idClass] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 21.05.2022 18:14:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[idSubj] [int] IDENTITY(1,1) NOT NULL,
	[subjectname] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[idSubj] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shedule]    Script Date: 21.05.2022 18:14:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shedule](
	[idSchedule] [int] IDENTITY(1,1) NOT NULL,
	[idGroup] [int] NOT NULL,
	[idTimeTable] [int] NOT NULL,
	[dayOfWeek] [smallint] NOT NULL,
	[idTeachSub] [int] NOT NULL,
 CONSTRAINT [PK_Shedule_1] PRIMARY KEY CLUSTERED 
(
	[idSchedule] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[RaspGrEK32]    Script Date: 21.05.2022 18:14:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[RaspGrEK32]
AS
SELECT        dbo.StudGroup.groupName AS Grouop, dbo.TimeTable.idClass AS num, dbo.WeekDay.nameDay AS Day, dbo.Subject.subjectname
FROM            dbo.Shedule INNER JOIN
                         dbo.StudGroup ON dbo.Shedule.idGroup = dbo.StudGroup.idGroup INNER JOIN
                         dbo.TeachSubject ON dbo.Shedule.idTeachSub = dbo.TeachSubject.idTeachSub INNER JOIN
                         dbo.TimeTable ON dbo.Shedule.idTimeTable = dbo.TimeTable.idClass INNER JOIN
                         dbo.WeekDay ON dbo.Shedule.dayOfWeek = dbo.WeekDay.idDay INNER JOIN
                         dbo.Subject ON dbo.TeachSubject.idSubj = dbo.Subject.idSubj INNER JOIN
                         dbo.Teacher ON dbo.TeachSubject.idTeach = dbo.Teacher.idTeach INNER JOIN
                         dbo.Users ON dbo.Teacher.idUser = dbo.Users.idUser
WHERE        (dbo.StudGroup.idGroup = 1)
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 21.05.2022 18:14:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[idGender] [int] IDENTITY(1,1) NOT NULL,
	[gender] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_Gender] PRIMARY KEY CLUSTERED 
(
	[idGender] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Position]    Script Date: 21.05.2022 18:14:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Position](
	[idPos] [int] IDENTITY(1,1) NOT NULL,
	[position] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_Position] PRIMARY KEY CLUSTERED 
(
	[idPos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Speciality]    Script Date: 21.05.2022 18:14:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Speciality](
	[idSpec] [int] IDENTITY(1,1) NOT NULL,
	[speciality] [nvarchar](50) NOT NULL,
	[description] [nvarchar](255) NULL,
 CONSTRAINT [PK_Speciality] PRIMARY KEY CLUSTERED 
(
	[idSpec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 21.05.2022 18:14:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[idStud] [int] IDENTITY(1,1) NOT NULL,
	[idUser] [int] NOT NULL,
	[studGroup] [int] NOT NULL,
	[status] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Student_1] PRIMARY KEY CLUSTERED 
(
	[idStud] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentPerfomance]    Script Date: 21.05.2022 18:14:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentPerfomance](
	[idStudPerf] [int] IDENTITY(1,1) NOT NULL,
	[idStud] [int] NOT NULL,
	[mark] [smallint] NOT NULL,
	[attendMark] [bit] NOT NULL,
	[idSchedule] [int] NOT NULL,
	[date] [date] NOT NULL,
 CONSTRAINT [PK_StudentPerfomance] PRIMARY KEY CLUSTERED 
(
	[idStudPerf] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Gender] ON 

INSERT [dbo].[Gender] ([idGender], [gender]) VALUES (1, N'Женский')
INSERT [dbo].[Gender] ([idGender], [gender]) VALUES (2, N'Мужской')
SET IDENTITY_INSERT [dbo].[Gender] OFF
GO
SET IDENTITY_INSERT [dbo].[Position] ON 

INSERT [dbo].[Position] ([idPos], [position]) VALUES (1, N'заведующий отделением')
INSERT [dbo].[Position] ([idPos], [position]) VALUES (2, N'преподаватель спец. дисциплин')
INSERT [dbo].[Position] ([idPos], [position]) VALUES (3, N'преподаватель')
SET IDENTITY_INSERT [dbo].[Position] OFF
GO
SET IDENTITY_INSERT [dbo].[Shedule] ON 

INSERT [dbo].[Shedule] ([idSchedule], [idGroup], [idTimeTable], [dayOfWeek], [idTeachSub]) VALUES (1, 1, 1, 1, 11)
INSERT [dbo].[Shedule] ([idSchedule], [idGroup], [idTimeTable], [dayOfWeek], [idTeachSub]) VALUES (2, 1, 2, 1, 7)
INSERT [dbo].[Shedule] ([idSchedule], [idGroup], [idTimeTable], [dayOfWeek], [idTeachSub]) VALUES (3, 1, 3, 1, 2)
INSERT [dbo].[Shedule] ([idSchedule], [idGroup], [idTimeTable], [dayOfWeek], [idTeachSub]) VALUES (4, 1, 4, 1, 6)
INSERT [dbo].[Shedule] ([idSchedule], [idGroup], [idTimeTable], [dayOfWeek], [idTeachSub]) VALUES (5, 1, 1, 2, 10)
INSERT [dbo].[Shedule] ([idSchedule], [idGroup], [idTimeTable], [dayOfWeek], [idTeachSub]) VALUES (6, 1, 2, 2, 5)
INSERT [dbo].[Shedule] ([idSchedule], [idGroup], [idTimeTable], [dayOfWeek], [idTeachSub]) VALUES (7, 1, 3, 2, 3)
INSERT [dbo].[Shedule] ([idSchedule], [idGroup], [idTimeTable], [dayOfWeek], [idTeachSub]) VALUES (8, 1, 1, 3, 8)
INSERT [dbo].[Shedule] ([idSchedule], [idGroup], [idTimeTable], [dayOfWeek], [idTeachSub]) VALUES (9, 1, 2, 3, 12)
INSERT [dbo].[Shedule] ([idSchedule], [idGroup], [idTimeTable], [dayOfWeek], [idTeachSub]) VALUES (10, 1, 3, 3, 10)
INSERT [dbo].[Shedule] ([idSchedule], [idGroup], [idTimeTable], [dayOfWeek], [idTeachSub]) VALUES (11, 1, 4, 3, 10)
INSERT [dbo].[Shedule] ([idSchedule], [idGroup], [idTimeTable], [dayOfWeek], [idTeachSub]) VALUES (12, 1, 1, 4, 11)
INSERT [dbo].[Shedule] ([idSchedule], [idGroup], [idTimeTable], [dayOfWeek], [idTeachSub]) VALUES (13, 1, 2, 4, 11)
INSERT [dbo].[Shedule] ([idSchedule], [idGroup], [idTimeTable], [dayOfWeek], [idTeachSub]) VALUES (14, 1, 3, 4, 11)
INSERT [dbo].[Shedule] ([idSchedule], [idGroup], [idTimeTable], [dayOfWeek], [idTeachSub]) VALUES (15, 1, 4, 4, 4)
INSERT [dbo].[Shedule] ([idSchedule], [idGroup], [idTimeTable], [dayOfWeek], [idTeachSub]) VALUES (16, 1, 1, 5, 7)
INSERT [dbo].[Shedule] ([idSchedule], [idGroup], [idTimeTable], [dayOfWeek], [idTeachSub]) VALUES (17, 1, 2, 5, 3)
INSERT [dbo].[Shedule] ([idSchedule], [idGroup], [idTimeTable], [dayOfWeek], [idTeachSub]) VALUES (18, 1, 3, 5, 11)
INSERT [dbo].[Shedule] ([idSchedule], [idGroup], [idTimeTable], [dayOfWeek], [idTeachSub]) VALUES (19, 1, 4, 5, 11)
INSERT [dbo].[Shedule] ([idSchedule], [idGroup], [idTimeTable], [dayOfWeek], [idTeachSub]) VALUES (20, 2, 1, 1, 2)
INSERT [dbo].[Shedule] ([idSchedule], [idGroup], [idTimeTable], [dayOfWeek], [idTeachSub]) VALUES (21, 2, 2, 1, 10)
INSERT [dbo].[Shedule] ([idSchedule], [idGroup], [idTimeTable], [dayOfWeek], [idTeachSub]) VALUES (22, 2, 3, 1, 9)
INSERT [dbo].[Shedule] ([idSchedule], [idGroup], [idTimeTable], [dayOfWeek], [idTeachSub]) VALUES (23, 2, 4, 1, 3)
INSERT [dbo].[Shedule] ([idSchedule], [idGroup], [idTimeTable], [dayOfWeek], [idTeachSub]) VALUES (24, 2, 1, 2, 2)
INSERT [dbo].[Shedule] ([idSchedule], [idGroup], [idTimeTable], [dayOfWeek], [idTeachSub]) VALUES (25, 2, 2, 2, 11)
INSERT [dbo].[Shedule] ([idSchedule], [idGroup], [idTimeTable], [dayOfWeek], [idTeachSub]) VALUES (26, 2, 3, 2, 7)
INSERT [dbo].[Shedule] ([idSchedule], [idGroup], [idTimeTable], [dayOfWeek], [idTeachSub]) VALUES (27, 2, 1, 3, 6)
INSERT [dbo].[Shedule] ([idSchedule], [idGroup], [idTimeTable], [dayOfWeek], [idTeachSub]) VALUES (28, 2, 2, 3, 5)
INSERT [dbo].[Shedule] ([idSchedule], [idGroup], [idTimeTable], [dayOfWeek], [idTeachSub]) VALUES (29, 2, 3, 3, 10)
INSERT [dbo].[Shedule] ([idSchedule], [idGroup], [idTimeTable], [dayOfWeek], [idTeachSub]) VALUES (30, 2, 4, 3, 2)
INSERT [dbo].[Shedule] ([idSchedule], [idGroup], [idTimeTable], [dayOfWeek], [idTeachSub]) VALUES (31, 2, 1, 4, 9)
INSERT [dbo].[Shedule] ([idSchedule], [idGroup], [idTimeTable], [dayOfWeek], [idTeachSub]) VALUES (32, 2, 2, 4, 10)
INSERT [dbo].[Shedule] ([idSchedule], [idGroup], [idTimeTable], [dayOfWeek], [idTeachSub]) VALUES (33, 2, 3, 4, 2)
INSERT [dbo].[Shedule] ([idSchedule], [idGroup], [idTimeTable], [dayOfWeek], [idTeachSub]) VALUES (34, 2, 4, 4, 7)
INSERT [dbo].[Shedule] ([idSchedule], [idGroup], [idTimeTable], [dayOfWeek], [idTeachSub]) VALUES (35, 2, 1, 5, 5)
INSERT [dbo].[Shedule] ([idSchedule], [idGroup], [idTimeTable], [dayOfWeek], [idTeachSub]) VALUES (36, 2, 2, 5, 8)
INSERT [dbo].[Shedule] ([idSchedule], [idGroup], [idTimeTable], [dayOfWeek], [idTeachSub]) VALUES (37, 2, 3, 5, 5)
INSERT [dbo].[Shedule] ([idSchedule], [idGroup], [idTimeTable], [dayOfWeek], [idTeachSub]) VALUES (38, 2, 1, 6, 2)
INSERT [dbo].[Shedule] ([idSchedule], [idGroup], [idTimeTable], [dayOfWeek], [idTeachSub]) VALUES (39, 2, 2, 6, 5)
INSERT [dbo].[Shedule] ([idSchedule], [idGroup], [idTimeTable], [dayOfWeek], [idTeachSub]) VALUES (40, 2, 3, 6, 9)
SET IDENTITY_INSERT [dbo].[Shedule] OFF
GO
SET IDENTITY_INSERT [dbo].[Speciality] ON 

INSERT [dbo].[Speciality] ([idSpec], [speciality], [description]) VALUES (1, N'Экономика', NULL)
INSERT [dbo].[Speciality] ([idSpec], [speciality], [description]) VALUES (2, N'Юриспруденция', NULL)
INSERT [dbo].[Speciality] ([idSpec], [speciality], [description]) VALUES (3, N'Судебная и прокурорская деятельность', N'')
SET IDENTITY_INSERT [dbo].[Speciality] OFF
GO
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (1, 1, 1, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (2, 2, 1, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (3, 3, 1, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (4, 4, 1, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (5, 5, 1, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (6, 6, 1, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (7, 7, 1, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (8, 8, 1, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (9, 9, 1, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (10, 10, 1, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (11, 11, 2, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (12, 12, 2, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (13, 13, 2, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (14, 14, 2, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (15, 15, 2, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (16, 16, 2, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (17, 17, 2, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (18, 18, 2, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (19, 19, 2, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (20, 20, 2, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (21, 21, 2, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (22, 22, 3, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (23, 23, 3, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (24, 24, 3, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (25, 25, 3, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (26, 26, 3, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (27, 27, 3, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (28, 28, 3, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (29, 29, 3, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (30, 30, 3, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (31, 31, 3, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (32, 32, 4, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (33, 33, 4, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (34, 34, 4, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (35, 35, 4, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (36, 36, 4, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (37, 37, 4, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (38, 38, 4, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (39, 39, 4, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (40, 40, 4, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (41, 41, 5, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (42, 42, 5, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (43, 43, 5, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (44, 44, 5, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (45, 45, 5, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (46, 46, 5, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (47, 47, 5, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (48, 48, 5, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (49, 49, 5, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (50, 50, 5, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (51, 51, 5, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (52, 52, 5, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (53, 53, 5, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (54, 54, 6, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (55, 55, 6, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (56, 56, 6, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (57, 57, 6, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (58, 58, 6, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (59, 59, 6, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (60, 60, 6, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (61, 61, 6, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (62, 62, 6, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (63, 63, 6, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (64, 64, 6, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (65, 65, 6, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (66, 66, 6, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (67, 67, 6, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (68, 68, 6, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (69, 69, 6, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (70, 70, 6, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (71, 71, 6, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (72, 72, 6, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (73, 73, 6, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (74, 74, 7, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (75, 75, 7, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (76, 76, 7, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (77, 77, 7, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (78, 78, 7, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (79, 79, 7, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (80, 80, 7, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (81, 81, 7, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (82, 82, 7, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (83, 83, 7, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (84, 84, 7, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (85, 85, 7, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (86, 86, 7, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (87, 87, 7, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (88, 88, 7, N'обучается')
INSERT [dbo].[Student] ([idStud], [idUser], [studGroup], [status]) VALUES (89, 118, 1, N'обучается')
SET IDENTITY_INSERT [dbo].[Student] OFF
GO
SET IDENTITY_INSERT [dbo].[StudentPerfomance] ON 

INSERT [dbo].[StudentPerfomance] ([idStudPerf], [idStud], [mark], [attendMark], [idSchedule], [date]) VALUES (2, 89, 3, 1, 1, CAST(N'2022-05-16' AS Date))
INSERT [dbo].[StudentPerfomance] ([idStudPerf], [idStud], [mark], [attendMark], [idSchedule], [date]) VALUES (3, 10, 5, 1, 2, CAST(N'2022-05-16' AS Date))
INSERT [dbo].[StudentPerfomance] ([idStudPerf], [idStud], [mark], [attendMark], [idSchedule], [date]) VALUES (6, 89, 5, 1, 3, CAST(N'2022-05-16' AS Date))
INSERT [dbo].[StudentPerfomance] ([idStudPerf], [idStud], [mark], [attendMark], [idSchedule], [date]) VALUES (7, 89, 3, 1, 4, CAST(N'2022-05-16' AS Date))
INSERT [dbo].[StudentPerfomance] ([idStudPerf], [idStud], [mark], [attendMark], [idSchedule], [date]) VALUES (8, 89, 5, 1, 2, CAST(N'2022-05-16' AS Date))
SET IDENTITY_INSERT [dbo].[StudentPerfomance] OFF
GO
SET IDENTITY_INSERT [dbo].[StudGroup] ON 

INSERT [dbo].[StudGroup] ([idGroup], [groupName], [specialty], [yearOfAdmission], [course]) VALUES (1, N'ЭК32', 1, 2019, 3)
INSERT [dbo].[StudGroup] ([idGroup], [groupName], [specialty], [yearOfAdmission], [course]) VALUES (2, N'ЭК33', 1, 2020, 2)
INSERT [dbo].[StudGroup] ([idGroup], [groupName], [specialty], [yearOfAdmission], [course]) VALUES (3, N'ЭК34', 1, 2021, 1)
INSERT [dbo].[StudGroup] ([idGroup], [groupName], [specialty], [yearOfAdmission], [course]) VALUES (4, N'ЮР44', 2, 2019, 3)
INSERT [dbo].[StudGroup] ([idGroup], [groupName], [specialty], [yearOfAdmission], [course]) VALUES (5, N'СПД55', 3, 2019, 3)
INSERT [dbo].[StudGroup] ([idGroup], [groupName], [specialty], [yearOfAdmission], [course]) VALUES (6, N'СПД56', 3, 2020, 2)
INSERT [dbo].[StudGroup] ([idGroup], [groupName], [specialty], [yearOfAdmission], [course]) VALUES (7, N'СПД57', 3, 2020, 2)
INSERT [dbo].[StudGroup] ([idGroup], [groupName], [specialty], [yearOfAdmission], [course]) VALUES (8, N'СПД58', 3, 2021, 1)
SET IDENTITY_INSERT [dbo].[StudGroup] OFF
GO
SET IDENTITY_INSERT [dbo].[Subject] ON 

INSERT [dbo].[Subject] ([idSubj], [subjectname]) VALUES (1, N'русский язык')
INSERT [dbo].[Subject] ([idSubj], [subjectname]) VALUES (2, N'математика')
INSERT [dbo].[Subject] ([idSubj], [subjectname]) VALUES (3, N'психология')
INSERT [dbo].[Subject] ([idSubj], [subjectname]) VALUES (4, N'литература')
INSERT [dbo].[Subject] ([idSubj], [subjectname]) VALUES (5, N'астрономия')
INSERT [dbo].[Subject] ([idSubj], [subjectname]) VALUES (6, N'экономика')
INSERT [dbo].[Subject] ([idSubj], [subjectname]) VALUES (7, N'менеджмент')
INSERT [dbo].[Subject] ([idSubj], [subjectname]) VALUES (8, N'правовая деятельность')
INSERT [dbo].[Subject] ([idSubj], [subjectname]) VALUES (9, N'сертификация')
SET IDENTITY_INSERT [dbo].[Subject] OFF
GO
SET IDENTITY_INSERT [dbo].[Teacher] ON 

INSERT [dbo].[Teacher] ([idTeach], [idUser], [idPosition], [workExperience]) VALUES (1, 89, 1, 7)
INSERT [dbo].[Teacher] ([idTeach], [idUser], [idPosition], [workExperience]) VALUES (2, 90, 2, 1.3)
INSERT [dbo].[Teacher] ([idTeach], [idUser], [idPosition], [workExperience]) VALUES (3, 91, 3, 2)
INSERT [dbo].[Teacher] ([idTeach], [idUser], [idPosition], [workExperience]) VALUES (4, 92, 2, 1.2)
INSERT [dbo].[Teacher] ([idTeach], [idUser], [idPosition], [workExperience]) VALUES (5, 93, 3, 4)
INSERT [dbo].[Teacher] ([idTeach], [idUser], [idPosition], [workExperience]) VALUES (6, 94, 2, 4)
INSERT [dbo].[Teacher] ([idTeach], [idUser], [idPosition], [workExperience]) VALUES (7, 95, 2, 4)
INSERT [dbo].[Teacher] ([idTeach], [idUser], [idPosition], [workExperience]) VALUES (8, 96, 2, 5)
INSERT [dbo].[Teacher] ([idTeach], [idUser], [idPosition], [workExperience]) VALUES (9, 97, 2, 5)
INSERT [dbo].[Teacher] ([idTeach], [idUser], [idPosition], [workExperience]) VALUES (10, 98, 3, 6)
INSERT [dbo].[Teacher] ([idTeach], [idUser], [idPosition], [workExperience]) VALUES (11, 99, 3, 6)
INSERT [dbo].[Teacher] ([idTeach], [idUser], [idPosition], [workExperience]) VALUES (12, 100, 3, 6)
SET IDENTITY_INSERT [dbo].[Teacher] OFF
GO
SET IDENTITY_INSERT [dbo].[TeachSubject] ON 

INSERT [dbo].[TeachSubject] ([idTeachSub], [idTeach], [idSubj]) VALUES (1, 1, 1)
INSERT [dbo].[TeachSubject] ([idTeachSub], [idTeach], [idSubj]) VALUES (2, 2, 1)
INSERT [dbo].[TeachSubject] ([idTeachSub], [idTeach], [idSubj]) VALUES (3, 3, 8)
INSERT [dbo].[TeachSubject] ([idTeachSub], [idTeach], [idSubj]) VALUES (4, 4, 2)
INSERT [dbo].[TeachSubject] ([idTeachSub], [idTeach], [idSubj]) VALUES (5, 5, 3)
INSERT [dbo].[TeachSubject] ([idTeachSub], [idTeach], [idSubj]) VALUES (6, 6, 3)
INSERT [dbo].[TeachSubject] ([idTeachSub], [idTeach], [idSubj]) VALUES (7, 7, 4)
INSERT [dbo].[TeachSubject] ([idTeachSub], [idTeach], [idSubj]) VALUES (8, 8, 4)
INSERT [dbo].[TeachSubject] ([idTeachSub], [idTeach], [idSubj]) VALUES (9, 9, 9)
INSERT [dbo].[TeachSubject] ([idTeachSub], [idTeach], [idSubj]) VALUES (10, 10, 5)
INSERT [dbo].[TeachSubject] ([idTeachSub], [idTeach], [idSubj]) VALUES (11, 11, 6)
INSERT [dbo].[TeachSubject] ([idTeachSub], [idTeach], [idSubj]) VALUES (12, 12, 7)
SET IDENTITY_INSERT [dbo].[TeachSubject] OFF
GO
SET IDENTITY_INSERT [dbo].[TimeTable] ON 

INSERT [dbo].[TimeTable] ([idClass], [timeStart], [timeFinish]) VALUES (1, CAST(N'09:00:00' AS Time), CAST(N'10:40:00' AS Time))
INSERT [dbo].[TimeTable] ([idClass], [timeStart], [timeFinish]) VALUES (2, CAST(N'10:55:00' AS Time), CAST(N'12:45:00' AS Time))
INSERT [dbo].[TimeTable] ([idClass], [timeStart], [timeFinish]) VALUES (3, CAST(N'13:00:00' AS Time), CAST(N'14:45:00' AS Time))
INSERT [dbo].[TimeTable] ([idClass], [timeStart], [timeFinish]) VALUES (4, CAST(N'15:00:00' AS Time), CAST(N'16:40:00' AS Time))
SET IDENTITY_INSERT [dbo].[TimeTable] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (1, N'Римма', N'Сигаева', N'Адамовна', CAST(N'2002-10-27' AS Date), 1, N'inna5770', N'269cbfcc8')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (2, N'Адам', N'Сюкосев', N'Евгеньевич', CAST(N'2003-01-02' AS Date), 2, N'polina59', N'b2ed36753')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (3, N'Лана', N'Головина', N'Леонидовна', CAST(N'2005-11-03' AS Date), 1, N'nina1963', N'29d1e53b0')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (4, N'Тамара', N'Челомеева', N'Евгеньевна', CAST(N'2004-12-20' AS Date), 1, N'filipp.uksyuzov', N'67e34d388')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (5, N'Арсений', N'Холопов', N'Александрович', CAST(N'2005-05-05' AS Date), 2, N'viktoriya1971', N'72e01abfb')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (6, N'Людмила', N'Янишевская', N'Семеновна', CAST(N'2002-10-15' AS Date), 1, N'elizaveta1987', N'91d53077d')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (7, N'Татьяна', N'Карюкина', N'Трофимовна', CAST(N'2004-09-01' AS Date), 1, N'stepan6630', N'b4e72e041')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (8, N'Милана', N'Якубович', N'Кирилловна', CAST(N'2005-10-01' AS Date), 1, N'nonna9820', N'21ce13bdb')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (9, N'Евгения', N'Якшибаева', N'Юлиановна', CAST(N'2003-10-17' AS Date), 1, N'zahar1966', N'2f4acbe4f')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (10, N'Иннокентий', N'Ярославов', N'Романович', CAST(N'2002-07-06' AS Date), 2, N'maryamna1983', N'592b26173')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (11, N'Петр', N'Сидоров', N'Львович', CAST(N'2006-06-07' AS Date), 2, N'raisa25011972', N'a86f71936')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (12, N'Таисия', N'Аникина', N'Ивановна', CAST(N'2003-04-24' AS Date), 1, N'valentina4948', N'2b62cd1c8')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (13, N'Альбина', N'Филенкова', N'Викторовна', CAST(N'2002-09-01' AS Date), 1, N'elizaveta14121995', N'31b767207')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (14, N'Катерина', N'Стиплина', N'Данииловна', CAST(N'2002-07-08' AS Date), 1, N'milana1980', N'd28eef3fb')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (15, N'Тамара', N'Богомазова', N'Петровна', CAST(N'2004-04-09' AS Date), 1, N'makar6417', N'3c4b390a2')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (16, N'Константин', N'Комягин', N'Акимович', CAST(N'2005-12-13' AS Date), 2, N'anton.kuratnik', N'cedef1da7')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (17, N'Антонина', N'Яковенцева', N'Федотовна', CAST(N'2005-05-17' AS Date), 1, N'vera09121974', N'02cdea91b')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (18, N'Егор', N'Шкригунов', N'Егорович', CAST(N'2006-12-11' AS Date), 2, N'aleksandra23121981', N'5b8612d35')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (19, N'Мария', N'Румянцева', N'Константиновна', CAST(N'2002-06-29' AS Date), 1, N'nonna1962', N'eb17f35e3')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (20, N'Никита', N'Пустохин', N'Максимович', CAST(N'2003-01-05' AS Date), 2, N'emelyan1963', N'f1de55cfa')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (21, N'Марианна', N'Дудник', N'Феоктистовна', CAST(N'2005-11-27' AS Date), 1, N'larisa03091991', N'1c59a30bb')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (22, N'Никифор', N'Магазинер', N'Степанович', CAST(N'2004-02-23' AS Date), 2, N'aleksandra.smagina', N'0255295a5')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (23, N'Алина', N'Нутрихина', N'Данииловна', CAST(N'2003-05-19' AS Date), 1, N'karina1995', N'760185aec')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (24, N'Анфиса', N'Воейкова', N'Степановна', CAST(N'2002-11-30' AS Date), 1, N'georgiy03041995', N'4a7a5ba95')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (25, N'Лев', N'Онипченко', N'Маркович', CAST(N'2002-10-01' AS Date), 2, N'margarita13', N'0718720f3')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (26, N'Герман', N'Уваров', N'Фадеевич', CAST(N'2006-04-09' AS Date), 2, N'varvara7313', N'7b043ed34')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (27, N'Пелагея', N'Беляева', N'Якововна', CAST(N'2002-04-07' AS Date), 1, N'mihail.chendev', N'd2c7c74fb')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (28, N'Ника', N'Дворянкина', N'Арсеньевна', CAST(N'2003-10-13' AS Date), 1, N'katerina93', N'bf12dc457')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (29, N'Давид', N'Сыропоршнев', N'Адамович', CAST(N'2006-12-06' AS Date), 2, N'aleksandr2916', N'be9099429')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (30, N'Наталия', N'Чечурова', N'Алексеевна', CAST(N'2004-09-12' AS Date), 1, N'anton9027', N'eb25a8868')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (31, N'Макар', N'Штыков', N'Герасимович', CAST(N'2006-08-18' AS Date), 2, N'ulyana11051982', N'c23142a7a')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (32, N'Юлия', N'Жаркина', N'Егоровна', CAST(N'2005-11-21' AS Date), 1, N'evgeniya5369', N'522f10ddf')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (33, N'Дмитрий', N'Гуров', N'Кириллович', CAST(N'2005-05-18' AS Date), 2, N'lavrentiy39', N'f120e9d0d')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (34, N'Алексей', N'Татаринов', N'Романович', CAST(N'2005-05-03' AS Date), 2, N'savva.koromyslov', N'e9cbf068f')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (35, N'Герман', N'Чмыхов', N'Федорович', CAST(N'2002-11-10' AS Date), 2, N'anton17031980', N'7c2d5d440')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (36, N'Инна', N'Фомина', N'Валентиновна', CAST(N'2004-08-07' AS Date), 1, N'svetlana.manyakina', N'78ffc222b')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (37, N'Арсений', N'Голиков', N'Игнатьевич', CAST(N'2006-09-02' AS Date), 2, N'makar50', N'1b7adc144')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (38, N'Аркадий', N'Тимашев', N'Всеволодович', CAST(N'2004-08-23' AS Date), 2, N'prohor.suharnikov', N'963bcf220')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (39, N'Альбина', N'Таланова', N'Никитьевна', CAST(N'2006-05-28' AS Date), 1, N'anton1983', N'09f609947')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (40, N'Алла', N'Гришачёва', N'Юлиановна', CAST(N'2003-01-01' AS Date), 1, N'ignat.kapylyushnyy', N'b56bdbb85')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (41, N'Николай', N'Бенедиктов', N'Алексеевич', CAST(N'2005-04-14' AS Date), 2, N'taisiya1989', N'e9261e2c3')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (42, N'Лидия', N'Тарновецкая', N'Викторовна', CAST(N'2005-02-15' AS Date), 1, N'adam.nikolskiy', N'ad97c2e20')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (43, N'Павел', N'Попков', N'Прохорович', CAST(N'2005-02-20' AS Date), 2, N'serafima58', N'256250760')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (44, N'Севастьян', N'Ивашин', N'Григорьевич', CAST(N'2004-09-13' AS Date), 2, N'ulyana97', N'cafcb34ee')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (45, N'Роман', N'Уткин', N'Георгиевич', CAST(N'2005-05-14' AS Date), 2, N'yaroslava17081976', N'c46f961cf')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (46, N'Егор', N'Чибисов', N'Ираклиевич', CAST(N'2003-12-25' AS Date), 2, N'klavdiya2414', N'fba5f66a4')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (47, N'Захар', N'Ласкутин', N'Денисович', CAST(N'2004-10-09' AS Date), 2, N'aleksey28061977', N'0ddbddc4c')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (48, N'Римма', N'Никонова', N'Тимофеевна', CAST(N'2003-09-26' AS Date), 1, N'vyacheslav64', N'05548ace2')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (49, N'Альбина', N'Комягина', N'Михаиловна', CAST(N'2002-03-06' AS Date), 1, N'emelyan52', N'fe673deb0')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (50, N'Дмитрий', N'Каширин', N'Феоктистович', CAST(N'2005-01-06' AS Date), 2, N'klara1972', N'632a161f2')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (51, N'Алиса', N'Воробьёва', N'Васильевна', CAST(N'2003-09-28' AS Date), 1, N'danila23091995', N'b0f5a21cd')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (52, N'Арина', N'Яскевич', N'Максимовна', CAST(N'2002-08-19' AS Date), 1, N'alisa8027', N'ccbfddc4e')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (53, N'Любовь', N'Кобыльских', N'Нифонтовна', CAST(N'2006-04-16' AS Date), 1, N'pelageya.hloponina', N'f1092a363')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (54, N'Марфа', N'Новицкая', N'Саввановна', CAST(N'2004-03-23' AS Date), 1, N'dmitriy06041961', N'c488d4e1b')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (55, N'Герасим', N'Грешнев', N'Геннадьевич', CAST(N'2003-05-17' AS Date), 2, N'vyacheslav12111991', N'270a342dd')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (56, N'Ева', N'Абумайлова', N'Севастьяновна', CAST(N'2004-11-29' AS Date), 1, N'pavel23', N'8eeedbc61')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (57, N'Макар', N'Ожогин', N'Егорович', CAST(N'2006-01-20' AS Date), 2, N'anton19101979', N'44bf52577')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (58, N'Алексей', N'Сигаев', N'Гаврннлович', CAST(N'2005-04-12' AS Date), 2, N'efim.vikash', N'5cb44686b')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (59, N'Даниил', N'Кризько', N'Даниилович', CAST(N'2002-04-09' AS Date), 2, N'vitaliy1971', N'7402c005f')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (60, N'Лев', N'Дружинин', N'Панкратович', CAST(N'2005-11-07' AS Date), 2, N'arseniy03071973', N'f87388b2f')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (61, N'Венедикт', N'Грицевец', N'Ефимович', CAST(N'2006-09-11' AS Date), 2, N'konstantin1965', N'29e66ac33')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (62, N'Зинаида', N'Андреевская', N'Романовна', CAST(N'2004-12-05' AS Date), 1, N'kirill07081973', N'31bc6ff5d')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (63, N'Афанасий', N'Янзинов', N'Петрович', CAST(N'2006-03-01' AS Date), 2, N'valentin1963', N'236d485b0')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (64, N'Леонтий', N'Касаткин', N'Давидович', CAST(N'2002-03-12' AS Date), 2, N'emelyan9464', N'310bf2487')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (65, N'Ольга', N'Порсева', N'Тимофеевна', CAST(N'2005-12-14' AS Date), 1, N'yulian1682', N'25e411d8a')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (66, N'Максим', N'Кальченко', N'Максимович', CAST(N'2004-02-04' AS Date), 2, N'timofey1964', N'f2294e7ca')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (67, N'Иван', N'Лихачёв', N'Яковлевич', CAST(N'2006-02-23' AS Date), 2, N'lavrentiy12111994', N'729809c93')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (68, N'Максим', N'Шурыгин', N'Антонрвич', CAST(N'2002-02-04' AS Date), 2, N'zahar.lyaskovec', N'f181b3946')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (69, N'Тимофей', N'Швардыгула', N'Петрович', CAST(N'2002-08-02' AS Date), 2, N'filipp1995', N'8ac72ce4a')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (70, N'Зинаида', N'Рожкова', N'Викторовна', CAST(N'2005-06-09' AS Date), 1, N'anfisa4444', N'8c3a45e47')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (71, N'Пелагея', N'Колвецкая', N'Павловна', CAST(N'2004-01-13' AS Date), 1, N'nastasya12071989', N'fc1812799')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (72, N'Егор', N'Кокорин', N'Климентович', CAST(N'2003-05-12' AS Date), 2, N'artem1996', N'd965c91db')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (73, N'Кира', N'Никанорова', N'Якововна', CAST(N'2005-10-09' AS Date), 1, N'efim69', N'44bb5dd5f')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (74, N'Татьяна', N'Гаранина', N'Ивановна', CAST(N'2006-03-26' AS Date), 1, N'syuzanna4873', N'9d3873db5')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (75, N'Ольга', N'Будылина', N'Климентьевна', CAST(N'2003-01-12' AS Date), 1, N'mariya85', N'1244858fd')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (76, N'Федор', N'Кузин', N'Макарович', CAST(N'2005-08-07' AS Date), 2, N'afanasiy1966', N'd61d62e21')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (77, N'Кира', N'Улицкая', N'Юрьевна', CAST(N'2005-11-10' AS Date), 1, N'margarita5747', N'b39bba62f')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (78, N'Алина', N'Белозерцева', N'Александровна', CAST(N'2006-06-06' AS Date), 1, N'zoya6424', N'30333db9c')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (79, N'Антон', N'Онегин', N'Маркович', CAST(N'2002-07-20' AS Date), 2, N'veniamin.karetnikov', N'2298ba251')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (80, N'Вениамин', N'Евсеев', N'Семенович', CAST(N'2006-06-15' AS Date), 2, N'grigoriy06051965', N'bbe8baa8b')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (81, N'Валентин', N'Каверин', N'Петрович', CAST(N'2002-10-13' AS Date), 2, N'apollinariya26111971', N'19a3b45c8')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (82, N'Кузьма', N'Дудин', N'Ильич', CAST(N'2003-11-18' AS Date), 2, N'nadejda.drugakova', N'b183de726')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (83, N'Виктория', N'Богомазова', N'Никифоровна', CAST(N'2004-02-14' AS Date), 1, N'veronika.drake', N'c4ae6980e')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (84, N'Егор', N'Чеботарев', N'Юрьевич', CAST(N'2004-01-10' AS Date), 2, N'lyubov1979', N'ea9e2cd71')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (85, N'Евгения', N'Мельникова', N'Антоновна', CAST(N'2003-05-04' AS Date), 1, N'efim1974', N'179215460')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (86, N'Евгения', N'Шайна', N'Константиновна', CAST(N'2004-05-10' AS Date), 1, N'aleksandr1992', N'd20b70b4a')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (87, N'Ева', N'Пастух', N'Порфнрьевна', CAST(N'2006-04-14' AS Date), 1, N'daniil1995', N'd8b86fe4f')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (88, N'Ксения', N'Сиялова', N'Антоновна', CAST(N'2003-09-21' AS Date), 1, N'makar28041990', N'a78fd13d2')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (89, N'Валентина', N'Дерновая', N'Александровна', CAST(N'1974-09-04' AS Date), 1, N'zav', N'zav')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (90, N'Евгения', N'Андроникова', N'Федоровна', CAST(N'1987-01-18' AS Date), 1, N'valentina2693', N'1715fb7f6')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (91, N'Леонтий', N'Глебов', N'Егорович', CAST(N'1974-12-23' AS Date), 2, N'ivan1984', N'ef1a844d5')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (92, N'Валентин', N'Дятлов', N'Феликсович', CAST(N'1981-04-01' AS Date), 2, N'taisiya7686', N'78b0472a0')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (93, N'Данила', N'Ляхов', N'Яковлевич', CAST(N'1982-07-09' AS Date), 2, N'anna.kosorukova', N'65ffa4fd3')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (94, N'Оксана', N'Трындина', N'Игнатевна', CAST(N'1976-09-22' AS Date), 1, N'gavriil1992', N'6e7b876d0')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (95, N'Никифор', N'Кузик', N'Климентович', CAST(N'1982-09-27' AS Date), 2, N'mihail1989', N'2d3b85e00')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (96, N'Герасим', N'Другаль', N'Порфирьевич', CAST(N'1977-05-29' AS Date), 2, N'margarita52', N'68e0f9251')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (97, N'Екатерина', N'Погодова', N'Васильевна', CAST(N'1982-09-14' AS Date), 1, N'yaroslava1995', N'61f0a4ad1')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (98, N'Феликс', N'Яковлев', N'Витальевич', CAST(N'1982-01-19' AS Date), 2, N'anna15091960', N'b6d9bb79a')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (99, N'Маргарита', N'Свечникова', N'Евгеньевна', CAST(N'1984-08-19' AS Date), 1, N'konstantin55', N'ff9e4e6ad')
GO
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (100, N'Пелагея', N'Кандакова', N'Васильевна', CAST(N'1980-11-01' AS Date), 1, N'pavel.chyulichkov', N'9692fee15')
INSERT [dbo].[Users] ([idUser], [fName], [lName], [patronim], [dateOfBirth], [idGender], [login], [password]) VALUES (118, N'admin', N'admin', N'admin', CAST(N'1111-11-11' AS Date), 1, N'ad', N'ad')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET IDENTITY_INSERT [dbo].[WeekDay] ON 

INSERT [dbo].[WeekDay] ([idDay], [nameDay]) VALUES (1, N'Понедельник')
INSERT [dbo].[WeekDay] ([idDay], [nameDay]) VALUES (2, N'Вторник')
INSERT [dbo].[WeekDay] ([idDay], [nameDay]) VALUES (3, N'Среда')
INSERT [dbo].[WeekDay] ([idDay], [nameDay]) VALUES (4, N'Четверг')
INSERT [dbo].[WeekDay] ([idDay], [nameDay]) VALUES (5, N'Пятница')
INSERT [dbo].[WeekDay] ([idDay], [nameDay]) VALUES (6, N'Суббота')
SET IDENTITY_INSERT [dbo].[WeekDay] OFF
GO
ALTER TABLE [dbo].[Student] ADD  CONSTRAINT [DF_Student_status]  DEFAULT (N'обучается') FOR [status]
GO
ALTER TABLE [dbo].[Shedule]  WITH CHECK ADD  CONSTRAINT [FK_Shedule_StudGroup] FOREIGN KEY([idGroup])
REFERENCES [dbo].[StudGroup] ([idGroup])
GO
ALTER TABLE [dbo].[Shedule] CHECK CONSTRAINT [FK_Shedule_StudGroup]
GO
ALTER TABLE [dbo].[Shedule]  WITH CHECK ADD  CONSTRAINT [FK_Shedule_TeachSubject] FOREIGN KEY([idTeachSub])
REFERENCES [dbo].[TeachSubject] ([idTeachSub])
GO
ALTER TABLE [dbo].[Shedule] CHECK CONSTRAINT [FK_Shedule_TeachSubject]
GO
ALTER TABLE [dbo].[Shedule]  WITH CHECK ADD  CONSTRAINT [FK_Shedule_TeachSubject1] FOREIGN KEY([idTeachSub])
REFERENCES [dbo].[TeachSubject] ([idTeachSub])
GO
ALTER TABLE [dbo].[Shedule] CHECK CONSTRAINT [FK_Shedule_TeachSubject1]
GO
ALTER TABLE [dbo].[Shedule]  WITH CHECK ADD  CONSTRAINT [FK_Shedule_TimeTable] FOREIGN KEY([idTimeTable])
REFERENCES [dbo].[TimeTable] ([idClass])
GO
ALTER TABLE [dbo].[Shedule] CHECK CONSTRAINT [FK_Shedule_TimeTable]
GO
ALTER TABLE [dbo].[Shedule]  WITH CHECK ADD  CONSTRAINT [FK_Shedule_WeekDay] FOREIGN KEY([dayOfWeek])
REFERENCES [dbo].[WeekDay] ([idDay])
GO
ALTER TABLE [dbo].[Shedule] CHECK CONSTRAINT [FK_Shedule_WeekDay]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Group] FOREIGN KEY([studGroup])
REFERENCES [dbo].[StudGroup] ([idGroup])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Group]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Users] FOREIGN KEY([idUser])
REFERENCES [dbo].[Users] ([idUser])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Users]
GO
ALTER TABLE [dbo].[StudentPerfomance]  WITH CHECK ADD  CONSTRAINT [FK_StudentPerfomance_Shedule] FOREIGN KEY([idSchedule])
REFERENCES [dbo].[Shedule] ([idSchedule])
GO
ALTER TABLE [dbo].[StudentPerfomance] CHECK CONSTRAINT [FK_StudentPerfomance_Shedule]
GO
ALTER TABLE [dbo].[StudentPerfomance]  WITH CHECK ADD  CONSTRAINT [FK_StudentPerfomance_Student] FOREIGN KEY([idStud])
REFERENCES [dbo].[Student] ([idStud])
GO
ALTER TABLE [dbo].[StudentPerfomance] CHECK CONSTRAINT [FK_StudentPerfomance_Student]
GO
ALTER TABLE [dbo].[StudGroup]  WITH CHECK ADD  CONSTRAINT [FK_StudGroup_Speciality] FOREIGN KEY([specialty])
REFERENCES [dbo].[Speciality] ([idSpec])
GO
ALTER TABLE [dbo].[StudGroup] CHECK CONSTRAINT [FK_StudGroup_Speciality]
GO
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_Position] FOREIGN KEY([idPosition])
REFERENCES [dbo].[Position] ([idPos])
GO
ALTER TABLE [dbo].[Teacher] CHECK CONSTRAINT [FK_Teacher_Position]
GO
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_Users] FOREIGN KEY([idUser])
REFERENCES [dbo].[Users] ([idUser])
GO
ALTER TABLE [dbo].[Teacher] CHECK CONSTRAINT [FK_Teacher_Users]
GO
ALTER TABLE [dbo].[TeachSubject]  WITH CHECK ADD  CONSTRAINT [FK_TeachSubject_Subject] FOREIGN KEY([idSubj])
REFERENCES [dbo].[Subject] ([idSubj])
GO
ALTER TABLE [dbo].[TeachSubject] CHECK CONSTRAINT [FK_TeachSubject_Subject]
GO
ALTER TABLE [dbo].[TeachSubject]  WITH CHECK ADD  CONSTRAINT [FK_TeachSubject_Teacher] FOREIGN KEY([idTeach])
REFERENCES [dbo].[Teacher] ([idTeach])
GO
ALTER TABLE [dbo].[TeachSubject] CHECK CONSTRAINT [FK_TeachSubject_Teacher]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Gender] FOREIGN KEY([idGender])
REFERENCES [dbo].[Gender] ([idGender])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Gender]
GO
/****** Object:  StoredProcedure [dbo].[MarkStud]    Script Date: 21.05.2022 18:14:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[MarkStud] 
@idSt int
as
begin 

select sp.mark Оценки, su.subjectname Дисциплина, sp.date
from StudentPerfomance sp right  join Shedule sh on sp.idSchedule = sh.idSchedule
join TeachSubject ts on ts.idTeachSub = sp.idSchedule
join Subject su on su.idSubj = ts.idSubj
where idStud = @idSt
group by su.subjectname, sp.date, sp.mark
end
GO
/****** Object:  StoredProcedure [dbo].[RaspGroup]    Script Date: 21.05.2022 18:14:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[RaspGroup]
@gr int
as
begin
SELECT        dbo.StudGroup.groupName AS Grouop, dbo.TimeTable.idClass AS num, timeStart, dbo.WeekDay.nameDay AS Day, dbo.Subject.subjectname,
				Users.fName + ' ' + Users.patronim + ' ' + Users.lName as teachName
FROM            dbo.Shedule INNER JOIN
                         dbo.StudGroup ON dbo.Shedule.idGroup = dbo.StudGroup.idGroup INNER JOIN
                         dbo.TeachSubject ON dbo.Shedule.idTeachSub = dbo.TeachSubject.idTeachSub INNER JOIN
                         dbo.TimeTable ON dbo.Shedule.idTimeTable = dbo.TimeTable.idClass INNER JOIN
                         dbo.WeekDay ON dbo.Shedule.dayOfWeek = dbo.WeekDay.idDay INNER JOIN
                         dbo.Subject ON dbo.TeachSubject.idSubj = dbo.Subject.idSubj INNER JOIN
                         dbo.Teacher  ON dbo.TeachSubject.idTeach = dbo.Teacher.idTeach INNER JOIN
                         dbo.Users ON dbo.Teacher.idUser = dbo.Users.idUser
WHERE        dbo.StudGroup.idGroup = @gr
end
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[47] 4[31] 2[16] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Shedule"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 212
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "StudGroup"
            Begin Extent = 
               Top = 6
               Left = 250
               Bottom = 136
               Right = 430
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TeachSubject"
            Begin Extent = 
               Top = 6
               Left = 468
               Bottom = 119
               Right = 642
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TimeTable"
            Begin Extent = 
               Top = 6
               Left = 680
               Bottom = 119
               Right = 854
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "WeekDay"
            Begin Extent = 
               Top = 144
               Left = 456
               Bottom = 240
               Right = 630
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Subject"
            Begin Extent = 
               Top = 120
               Left = 668
               Bottom = 216
               Right = 842
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Teacher"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 268
               Right = 212
            End
            DisplayFlags ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'RaspGrEK32'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'= 280
            TopColumn = 0
         End
         Begin Table = "Users"
            Begin Extent = 
               Top = 198
               Left = 250
               Bottom = 328
               Right = 424
            End
            DisplayFlags = 280
            TopColumn = 3
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'RaspGrEK32'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'RaspGrEK32'
GO
USE [master]
GO
ALTER DATABASE [elJournal] SET  READ_WRITE 
GO
