USE [master]
GO
/****** Object:  Database [Solder_Monitoring_new_db]    Script Date: 03/02/2017 18:09:15 ******/
CREATE DATABASE [Solder_Monitoring_new_db] ON  PRIMARY 
( NAME = N'Solder_Monitoring_new_db', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Solder_Monitoring_new_db.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Solder_Monitoring_new_db_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Solder_Monitoring_new_db_log.LDF' , SIZE = 504KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Solder_Monitoring_new_db] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Solder_Monitoring_new_db].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Solder_Monitoring_new_db] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Solder_Monitoring_new_db] SET ANSI_NULLS OFF
GO
ALTER DATABASE [Solder_Monitoring_new_db] SET ANSI_PADDING OFF
GO
ALTER DATABASE [Solder_Monitoring_new_db] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Solder_Monitoring_new_db] SET ARITHABORT OFF
GO
ALTER DATABASE [Solder_Monitoring_new_db] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [Solder_Monitoring_new_db] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [Solder_Monitoring_new_db] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Solder_Monitoring_new_db] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Solder_Monitoring_new_db] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Solder_Monitoring_new_db] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [Solder_Monitoring_new_db] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Solder_Monitoring_new_db] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Solder_Monitoring_new_db] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Solder_Monitoring_new_db] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Solder_Monitoring_new_db] SET  ENABLE_BROKER
GO
ALTER DATABASE [Solder_Monitoring_new_db] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Solder_Monitoring_new_db] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Solder_Monitoring_new_db] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Solder_Monitoring_new_db] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [Solder_Monitoring_new_db] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Solder_Monitoring_new_db] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Solder_Monitoring_new_db] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Solder_Monitoring_new_db] SET  READ_WRITE
GO
ALTER DATABASE [Solder_Monitoring_new_db] SET RECOVERY FULL
GO
ALTER DATABASE [Solder_Monitoring_new_db] SET  MULTI_USER
GO
ALTER DATABASE [Solder_Monitoring_new_db] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Solder_Monitoring_new_db] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'Solder_Monitoring_new_db', N'ON'
GO
USE [Solder_Monitoring_new_db]
GO
/****** Object:  Table [dbo].[User_Master]    Script Date: 03/02/2017 18:09:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Master](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[full_name] [nvarchar](50) NULL,
	[email_id] [nvarchar](50) NULL,
	[contact_no] [nvarchar](50) NULL,
	[address] [nvarchar](max) NULL,
	[Password] [nvarchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[User_Master] ON
INSERT [dbo].[User_Master] ([user_id], [full_name], [email_id], [contact_no], [address], [Password]) VALUES (1, N'shailesh', N'shailesh@gmail.com', N'9221286927', N'kjkljklj', N'shailesh')
INSERT [dbo].[User_Master] ([user_id], [full_name], [email_id], [contact_no], [address], [Password]) VALUES (2, N'Nivrutikore', N'nivrutikore@gmail.com', N'9696325874', N'Pune', N'123456')
SET IDENTITY_INSERT [dbo].[User_Master] OFF
/****** Object:  Table [dbo].[Pilgrim_Status]    Script Date: 03/02/2017 18:09:16 ******/
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
/****** Object:  Table [dbo].[NotificationData]    Script Date: 03/02/2017 18:09:16 ******/
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
/****** Object:  Table [dbo].[Data]    Script Date: 03/02/2017 18:09:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Data](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[bpm] [int] NULL,
	[temp] [int] NULL,
	[lat] [float] NULL,
	[long] [float] NULL,
	[DateAdded] [datetime] NULL,
	[sw] [int] NULL,
	[user_id] [int] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Data] ON
INSERT [dbo].[Data] ([id], [bpm], [temp], [lat], [long], [DateAdded], [sw], [user_id]) VALUES (1, 100, NULL, 19.0443697, 73.0252438, CAST(0x0000A59D01853DFB AS DateTime), 0, 1)
INSERT [dbo].[Data] ([id], [bpm], [temp], [lat], [long], [DateAdded], [sw], [user_id]) VALUES (2, 100, 45, 72.333, 92.333, CAST(0x0000A72A01824DFD AS DateTime), 0, 1)
INSERT [dbo].[Data] ([id], [bpm], [temp], [lat], [long], [DateAdded], [sw], [user_id]) VALUES (3, 100, 45, 72.333, 92.333, CAST(0x0000A72A01857415 AS DateTime), 0, 1)
SET IDENTITY_INSERT [dbo].[Data] OFF
/****** Object:  Table [dbo].[Admin_Login]    Script Date: 03/02/2017 18:09:16 ******/
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
/****** Object:  Default [DF_Data_user_id]    Script Date: 03/02/2017 18:09:16 ******/
ALTER TABLE [dbo].[Data] ADD  CONSTRAINT [DF_Data_user_id]  DEFAULT ((1)) FOR [user_id]
GO
