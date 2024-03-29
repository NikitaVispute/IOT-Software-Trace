USE [master]
GO
/****** Object:  Database [parentchild]    Script Date: 04/05/2018 21:30:08 ******/
CREATE DATABASE [parentchild] ON  PRIMARY 
( NAME = N'parentchild', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\parentchild.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'parentchild_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\parentchild_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [parentchild] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [parentchild].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [parentchild] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [parentchild] SET ANSI_NULLS OFF
GO
ALTER DATABASE [parentchild] SET ANSI_PADDING OFF
GO
ALTER DATABASE [parentchild] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [parentchild] SET ARITHABORT OFF
GO
ALTER DATABASE [parentchild] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [parentchild] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [parentchild] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [parentchild] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [parentchild] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [parentchild] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [parentchild] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [parentchild] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [parentchild] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [parentchild] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [parentchild] SET  DISABLE_BROKER
GO
ALTER DATABASE [parentchild] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [parentchild] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [parentchild] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [parentchild] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [parentchild] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [parentchild] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [parentchild] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [parentchild] SET  READ_WRITE
GO
ALTER DATABASE [parentchild] SET RECOVERY FULL
GO
ALTER DATABASE [parentchild] SET  MULTI_USER
GO
ALTER DATABASE [parentchild] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [parentchild] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'parentchild', N'ON'
GO
USE [parentchild]
GO
/****** Object:  Table [dbo].[User_Master]    Script Date: 04/05/2018 21:30:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User_Master](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[full_name] [nvarchar](50) NULL,
	[RFID] [varchar](max) NULL,
	[contact_no] [nvarchar](50) NULL,
	[address] [nvarchar](max) NULL,
	[Password] [nvarchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[User_Master] ON
INSERT [dbo].[User_Master] ([user_id], [full_name], [RFID], [contact_no], [address], [Password]) VALUES (1, N'shailesh', N'1234556789ab', N'9221286927', N'kjkljklj', N'12345')
INSERT [dbo].[User_Master] ([user_id], [full_name], [RFID], [contact_no], [address], [Password]) VALUES (2, N'tejas', N'1234567890ac', N'9087654321', N'fdsfgdgdsfg', N'12345')
SET IDENTITY_INSERT [dbo].[User_Master] OFF
/****** Object:  Table [dbo].[Pilgrim_Status]    Script Date: 04/05/2018 21:30:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pilgrim_Status](
	[pilgrim_id] [int] IDENTITY(1,1) NOT NULL,
	[heart] [nvarchar](50) NULL,
	[temperature] [nvarchar](50) NULL,
	[latitude] [nvarchar](50) NULL,
	[longitude] [nvarchar](50) NULL,
	[date_of_entry] [nvarchar](50) NULL,
	[user_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NotificationData]    Script Date: 04/05/2018 21:30:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotificationData](
	[min_bpm] [int] NOT NULL,
	[max_bpm] [int] NOT NULL,
	[min_temp] [int] NOT NULL,
	[max_temp] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[data1]    Script Date: 04/05/2018 21:30:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[data1](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[RFID] [varchar](max) NULL,
	[date1] [datetime] NULL,
	[date2] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[data1] ON
INSERT [dbo].[data1] ([id], [RFID], [date1], [date2]) VALUES (17, N'1234556789ab', CAST(0x0000A8B801622DD3 AS DateTime), CAST(0x0000A8B8016254DE AS DateTime))
SET IDENTITY_INSERT [dbo].[data1] OFF
/****** Object:  Table [dbo].[Data]    Script Date: 04/05/2018 21:30:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Data](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[lat] [float] NULL,
	[long] [float] NULL,
	[DateAdded] [datetime] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Data] ON
INSERT [dbo].[Data] ([id], [lat], [long], [DateAdded]) VALUES (1, 19.0443697, 73.0252438, CAST(0x0000A59D01853DFB AS DateTime))
INSERT [dbo].[Data] ([id], [lat], [long], [DateAdded]) VALUES (2, 27.175, 78.0422, CAST(0x0000A8B8014490F1 AS DateTime))
INSERT [dbo].[Data] ([id], [lat], [long], [DateAdded]) VALUES (3, 27.175, 78.0422, CAST(0x0000A8B80160E0CD AS DateTime))
INSERT [dbo].[Data] ([id], [lat], [long], [DateAdded]) VALUES (4, 27.175, 78.0422, CAST(0x0000A8B8016350B7 AS DateTime))
SET IDENTITY_INSERT [dbo].[Data] OFF
/****** Object:  Table [dbo].[Admin_Login]    Script Date: 04/05/2018 21:30:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin_Login](
	[admin_id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Admin_Login] ON
INSERT [dbo].[Admin_Login] ([admin_id], [username], [password]) VALUES (1, N'admin', N'admin')
SET IDENTITY_INSERT [dbo].[Admin_Login] OFF
