USE [master]
GO
/****** Object:  Database [databaseBanhang]    Script Date: 03/17/2022 10:39:32 ******/
CREATE DATABASE [databaseBanhang] ON  PRIMARY 
( NAME = N'databaseBanhang', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\databaseBanhang.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'databaseBanhang_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\databaseBanhang_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [databaseBanhang] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [databaseBanhang].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [databaseBanhang] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [databaseBanhang] SET ANSI_NULLS OFF
GO
ALTER DATABASE [databaseBanhang] SET ANSI_PADDING OFF
GO
ALTER DATABASE [databaseBanhang] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [databaseBanhang] SET ARITHABORT OFF
GO
ALTER DATABASE [databaseBanhang] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [databaseBanhang] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [databaseBanhang] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [databaseBanhang] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [databaseBanhang] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [databaseBanhang] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [databaseBanhang] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [databaseBanhang] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [databaseBanhang] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [databaseBanhang] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [databaseBanhang] SET  DISABLE_BROKER
GO
ALTER DATABASE [databaseBanhang] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [databaseBanhang] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [databaseBanhang] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [databaseBanhang] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [databaseBanhang] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [databaseBanhang] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [databaseBanhang] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [databaseBanhang] SET  READ_WRITE
GO
ALTER DATABASE [databaseBanhang] SET RECOVERY SIMPLE
GO
ALTER DATABASE [databaseBanhang] SET  MULTI_USER
GO
ALTER DATABASE [databaseBanhang] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [databaseBanhang] SET DB_CHAINING OFF
GO
USE [databaseBanhang]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 03/17/2022 10:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[cate_ID] [int] NOT NULL,
	[cate_Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[cate_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 03/17/2022 10:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Account](
	[uID] [int] IDENTITY(1,1) NOT NULL,
	[user] [varchar](255) NULL,
	[pass] [varchar](255) NULL,
	[isSell] [int] NULL,
	[isAdmin] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[uID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Order]    Script Date: 03/17/2022 10:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[AccountID] [int] NOT NULL,
	[Order Date] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 03/17/2022 10:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[image] [nvarchar](max) NULL,
	[price] [float] NULL,
	[title] [nvarchar](max) NULL,
	[decription] [nvarchar](max) NULL,
	[cateID] [int] NULL,
	[seller_ID] [int] NULL,
	[amount] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 03/17/2022 10:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NULL,
	[price] [float] NULL,
 CONSTRAINT [pk_OrderLine] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [fk_Order_Account]    Script Date: 03/17/2022 10:39:33 ******/
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [fk_Order_Account] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Account] ([uID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [fk_Order_Account]
GO
/****** Object:  ForeignKey [FK_Product_Category]    Script Date: 03/17/2022 10:39:33 ******/
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([cateID])
REFERENCES [dbo].[Category] ([cate_ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
/****** Object:  ForeignKey [fk_OrderDetails_Order]    Script Date: 03/17/2022 10:39:33 ******/
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [fk_OrderDetails_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [fk_OrderDetails_Order]
GO
/****** Object:  ForeignKey [fk_OrderDetails_Product]    Script Date: 03/17/2022 10:39:33 ******/
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [fk_OrderDetails_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [fk_OrderDetails_Product]
GO
