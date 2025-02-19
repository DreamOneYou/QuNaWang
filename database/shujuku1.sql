USE [master]
GO
/****** Object:  Database [ssm03608qnlwjpwz]    Script Date: 10/25/2020 14:52:28 ******/
CREATE DATABASE [ssm03608qnlwjpwz] ON  PRIMARY 
( NAME = N'ssm03608qnlwjpwz', FILENAME = N'D:\sql\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\ssm03608qnlwjpwz.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ssm03608qnlwjpwz_log', FILENAME = N'D:\sql\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\ssm03608qnlwjpwz_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ssm03608qnlwjpwz].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ssm03608qnlwjpwz] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [ssm03608qnlwjpwz] SET ANSI_NULLS OFF
GO
ALTER DATABASE [ssm03608qnlwjpwz] SET ANSI_PADDING OFF
GO
ALTER DATABASE [ssm03608qnlwjpwz] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [ssm03608qnlwjpwz] SET ARITHABORT OFF
GO
ALTER DATABASE [ssm03608qnlwjpwz] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [ssm03608qnlwjpwz] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [ssm03608qnlwjpwz] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [ssm03608qnlwjpwz] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [ssm03608qnlwjpwz] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [ssm03608qnlwjpwz] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [ssm03608qnlwjpwz] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [ssm03608qnlwjpwz] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [ssm03608qnlwjpwz] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [ssm03608qnlwjpwz] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [ssm03608qnlwjpwz] SET  DISABLE_BROKER
GO
ALTER DATABASE [ssm03608qnlwjpwz] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [ssm03608qnlwjpwz] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [ssm03608qnlwjpwz] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [ssm03608qnlwjpwz] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [ssm03608qnlwjpwz] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [ssm03608qnlwjpwz] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [ssm03608qnlwjpwz] SET  READ_WRITE
GO
ALTER DATABASE [ssm03608qnlwjpwz] SET RECOVERY SIMPLE
GO
ALTER DATABASE [ssm03608qnlwjpwz] SET  MULTI_USER
GO
ALTER DATABASE [ssm03608qnlwjpwz] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [ssm03608qnlwjpwz] SET DB_CHAINING OFF
GO
USE [ssm03608qnlwjpwz]
GO
/****** Object:  Table [dbo].[yonghu]    Script Date: 10/25/2020 14:52:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[yonghu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[yonghuming] [nvarchar](50) NOT NULL,
	[mima] [nvarchar](50) NOT NULL,
	[xingming] [nvarchar](50) NOT NULL,
	[xingbie] [nvarchar](255) NOT NULL,
	[shouji] [nvarchar](50) NOT NULL,
	[youxiang] [nvarchar](50) NOT NULL,
	[shenfenzheng] [nvarchar](50) NOT NULL,
	[addtime] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[yonghu] ON
INSERT [dbo].[yonghu] ([id], [yonghuming], [mima], [xingming], [xingbie], [shouji], [youxiang], [shenfenzheng], [addtime]) VALUES (1, N'001', N'001', N'张三', N'男', N'13800138111', N'123456@qq.com', N'132456789123456789', CAST(0x0000AC5B013DCD6C AS DateTime))
INSERT [dbo].[yonghu] ([id], [yonghuming], [mima], [xingming], [xingbie], [shouji], [youxiang], [shenfenzheng], [addtime]) VALUES (3, N'002', N'002', N'李四', N'女', N'13800138000', N'123456@qq.com', N'132456789123456789', CAST(0x0000AC5B01543F20 AS DateTime))
SET IDENTITY_INSERT [dbo].[yonghu] OFF
/****** Object:  Table [dbo].[jipiao]    Script Date: 10/25/2020 14:52:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[jipiao](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[piaowubianhao] [nvarchar](50) NOT NULL,
	[hangbanmingcheng] [nvarchar](255) NOT NULL,
	[chufadi] [nvarchar](50) NOT NULL,
	[mudidi] [nvarchar](50) NOT NULL,
	[qifeishijian] [nvarchar](25) NOT NULL,
	[piaojia] [decimal](18, 2) NOT NULL,
	[shengyuzuowei] [int] NOT NULL,
	[dengjikou] [nvarchar](50) NOT NULL,
	[addtime] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[jipiao] ON
INSERT [dbo].[jipiao] ([id], [piaowubianhao], [hangbanmingcheng], [chufadi], [mudidi], [qifeishijian], [piaojia], [shengyuzuowei], [dengjikou], [addtime]) VALUES (1, N'10211923469324', N'南方航空CZ3123', N'黄花国际机场T2', N'大兴国际机场', N'2020-10-21 19:24:06', CAST(600.00 AS Decimal(18, 2)), 0, N'T2', CAST(0x0000AC5B013FF560 AS DateTime))
INSERT [dbo].[jipiao] ([id], [piaowubianhao], [hangbanmingcheng], [chufadi], [mudidi], [qifeishijian], [piaojia], [shengyuzuowei], [dengjikou], [addtime]) VALUES (2, N'10211924561109', N'南方航空CZ3123', N'黄花国际机场T2', N'大兴国际机场', N'2020-10-21 19:25:02', CAST(1200.00 AS Decimal(18, 2)), 20, N'T2', CAST(0x0000AC5B014013D8 AS DateTime))
INSERT [dbo].[jipiao] ([id], [piaowubianhao], [hangbanmingcheng], [chufadi], [mudidi], [qifeishijian], [piaojia], [shengyuzuowei], [dengjikou], [addtime]) VALUES (3, N'10211925323295', N'山东航空SC4651', N'流亭国际机场T1', N'首都国际机场T3', N'2020-10-21 19:26:24', CAST(750.00 AS Decimal(18, 2)), 35, N'T3', CAST(0x0000AC5B0140751C AS DateTime))
INSERT [dbo].[jipiao] ([id], [piaowubianhao], [hangbanmingcheng], [chufadi], [mudidi], [qifeishijian], [piaojia], [shengyuzuowei], [dengjikou], [addtime]) VALUES (4, N'10211926462816', N'中国国航CA1701', N'萧山国际机场T1', N'首都国际机场T3', N'2020-10-22 19:27:29', CAST(800.00 AS Decimal(18, 2)), 50, N'T2', CAST(0x0000AC5B0140C5F8 AS DateTime))
INSERT [dbo].[jipiao] ([id], [piaowubianhao], [hangbanmingcheng], [chufadi], [mudidi], [qifeishijian], [piaojia], [shengyuzuowei], [dengjikou], [addtime]) VALUES (5, N'10211928211945', N'中国国航CA1701', N'萧山国际机场T1', N'首都国际机场T3', N'2020-10-22 19:28:30', CAST(1500.00 AS Decimal(18, 2)), 15, N'T2', CAST(0x0000AC5B01410090 AS DateTime))
INSERT [dbo].[jipiao] ([id], [piaowubianhao], [hangbanmingcheng], [chufadi], [mudidi], [qifeishijian], [piaojia], [shengyuzuowei], [dengjikou], [addtime]) VALUES (6, N'10211928471309', N'中国国航CA8169', N'萧山国际机场T1', N'大兴国际机场', N'2020-10-22 19:29:09', CAST(3500.00 AS Decimal(18, 2)), 10, N'T2', CAST(0x0000AC5B014131C8 AS DateTime))
INSERT [dbo].[jipiao] ([id], [piaowubianhao], [hangbanmingcheng], [chufadi], [mudidi], [qifeishijian], [piaojia], [shengyuzuowei], [dengjikou], [addtime]) VALUES (7, N'10211929331473', N'首都航空JD5578', N'凤凰国际机场T2', N'大兴国际机场', N'2020-10-23 19:30:02', CAST(700.00 AS Decimal(18, 2)), 27, N'T3', CAST(0x0000AC5B01417944 AS DateTime))
SET IDENTITY_INSERT [dbo].[jipiao] OFF
/****** Object:  Table [dbo].[goupiao]    Script Date: 10/25/2020 14:52:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[goupiao](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[jipiaoid] [int] NOT NULL,
	[piaowubianhao] [nvarchar](50) NOT NULL,
	[hangbanmingcheng] [nvarchar](255) NOT NULL,
	[chufadi] [nvarchar](50) NOT NULL,
	[mudidi] [nvarchar](50) NOT NULL,
	[qifeishijian] [nvarchar](25) NOT NULL,
	[piaojia] [decimal](18, 2) NOT NULL,
	[dengjikou] [nvarchar](50) NOT NULL,
	[goupiaorenxingming] [nvarchar](50) NOT NULL,
	[shouji] [nvarchar](50) NOT NULL,
	[shenfenzhenghao] [nvarchar](50) NOT NULL,
	[goupiaoren] [nvarchar](50) NOT NULL,
	[iszf] [nvarchar](10) NOT NULL,
	[addtime] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [goupiao_jipiaoid_index] ON [dbo].[goupiao] 
(
	[jipiaoid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[goupiao] ON
INSERT [dbo].[goupiao] ([id], [jipiaoid], [piaowubianhao], [hangbanmingcheng], [chufadi], [mudidi], [qifeishijian], [piaojia], [dengjikou], [goupiaorenxingming], [shouji], [shenfenzhenghao], [goupiaoren], [iszf], [addtime]) VALUES (1, 7, N'10211929331473', N'首都航空JD5578', N'凤凰国际机场T2', N'大兴国际机场', N'2020-10-23 19:30:02', CAST(700.00 AS Decimal(18, 2)), N'T3', N'张三', N'13800138000', N'123456798123456789', N'001', N'是', CAST(0x0000AC5B01425210 AS DateTime))
INSERT [dbo].[goupiao] ([id], [jipiaoid], [piaowubianhao], [hangbanmingcheng], [chufadi], [mudidi], [qifeishijian], [piaojia], [dengjikou], [goupiaorenxingming], [shouji], [shenfenzhenghao], [goupiaoren], [iszf], [addtime]) VALUES (2, 7, N'10211929331473', N'首都航空JD5578', N'凤凰国际机场T2', N'大兴国际机场', N'2020-10-23 19:30:02', CAST(700.00 AS Decimal(18, 2)), N'T3', N'张三', N'13800138000', N'123456798123456789', N'001', N'是', CAST(0x0000AC5B0153D92C AS DateTime))
INSERT [dbo].[goupiao] ([id], [jipiaoid], [piaowubianhao], [hangbanmingcheng], [chufadi], [mudidi], [qifeishijian], [piaojia], [dengjikou], [goupiaorenxingming], [shouji], [shenfenzhenghao], [goupiaoren], [iszf], [addtime]) VALUES (3, 7, N'10211929331473', N'首都航空JD5578', N'凤凰国际机场T2', N'大兴国际机场', N'2020-10-23 19:30:02', CAST(700.00 AS Decimal(18, 2)), N'T3', N'李四', N'13800138000', N'123456798123456789', N'002', N'是', CAST(0x0000AC5B01545FF0 AS DateTime))
SET IDENTITY_INSERT [dbo].[goupiao] OFF
/****** Object:  Table [dbo].[admins]    Script Date: 10/25/2020 14:52:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admins](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[pwd] [nvarchar](50) NOT NULL,
	[addtime] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[admins] ON
INSERT [dbo].[admins] ([id], [username], [pwd], [addtime]) VALUES (1, N'admin', N'admin', CAST(0x0000AC5B013D76B4 AS DateTime))
SET IDENTITY_INSERT [dbo].[admins] OFF
/****** Object:  Default [DF__yonghu__addtime__2B3F6F97]    Script Date: 10/25/2020 14:52:29 ******/
ALTER TABLE [dbo].[yonghu] ADD  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF__jipiao__addtime__2C3393D0]    Script Date: 10/25/2020 14:52:29 ******/
ALTER TABLE [dbo].[jipiao] ADD  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF__goupiao__iszf__2D27B809]    Script Date: 10/25/2020 14:52:29 ******/
ALTER TABLE [dbo].[goupiao] ADD  DEFAULT ('否') FOR [iszf]
GO
/****** Object:  Default [DF__goupiao__addtime__2E1BDC42]    Script Date: 10/25/2020 14:52:29 ******/
ALTER TABLE [dbo].[goupiao] ADD  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF__admins__addtime__2F10007B]    Script Date: 10/25/2020 14:52:29 ******/
ALTER TABLE [dbo].[admins] ADD  DEFAULT (getdate()) FOR [addtime]
GO
