USE [master]
GO
/****** Object:  Database [db_OnlineShop]    Script Date: 03/08/2015 11:38:09 ******/
CREATE DATABASE [db_OnlineShop] ON  PRIMARY 
( NAME = N'db_OnlineShop', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.ANKAN\MSSQL\DATA\db_OnlineShop.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'db_OnlineShop_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.ANKAN\MSSQL\DATA\db_OnlineShop_1.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [db_OnlineShop] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [db_OnlineShop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [db_OnlineShop] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [db_OnlineShop] SET ANSI_NULLS OFF
GO
ALTER DATABASE [db_OnlineShop] SET ANSI_PADDING OFF
GO
ALTER DATABASE [db_OnlineShop] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [db_OnlineShop] SET ARITHABORT OFF
GO
ALTER DATABASE [db_OnlineShop] SET AUTO_CLOSE ON
GO
ALTER DATABASE [db_OnlineShop] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [db_OnlineShop] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [db_OnlineShop] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [db_OnlineShop] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [db_OnlineShop] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [db_OnlineShop] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [db_OnlineShop] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [db_OnlineShop] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [db_OnlineShop] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [db_OnlineShop] SET  DISABLE_BROKER
GO
ALTER DATABASE [db_OnlineShop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [db_OnlineShop] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [db_OnlineShop] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [db_OnlineShop] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [db_OnlineShop] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [db_OnlineShop] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [db_OnlineShop] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [db_OnlineShop] SET  READ_WRITE
GO
ALTER DATABASE [db_OnlineShop] SET RECOVERY SIMPLE
GO
ALTER DATABASE [db_OnlineShop] SET  MULTI_USER
GO
ALTER DATABASE [db_OnlineShop] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [db_OnlineShop] SET DB_CHAINING OFF
GO
USE [db_OnlineShop]
GO
/****** Object:  Table [dbo].[tbl_Guest]    Script Date: 03/08/2015 11:38:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Guest](
	[Cart] [int] NOT NULL,
	[Product ID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Gender]    Script Date: 03/08/2015 11:38:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Gender](
	[GenderID] [int] IDENTITY(1,1) NOT NULL,
	[Gender] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_Gender] PRIMARY KEY CLUSTERED 
(
	[GenderID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Customer]    Script Date: 03/08/2015 11:38:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Customer](
	[Customer ID] [int] IDENTITY(1,1) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Company/Name] [varchar](50) NOT NULL,
	[Organistation Number] [varchar](50) NULL,
	[Contact] [varchar](50) NOT NULL,
	[C/O] [varchar](50) NULL,
	[Street Address] [varchar](50) NOT NULL,
	[Postal Code] [varchar](50) NOT NULL,
	[City] [varchar](50) NOT NULL,
	[Country] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_Customer] PRIMARY KEY CLUSTERED 
(
	[Customer ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Cart]    Script Date: 03/08/2015 11:38:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Cart](
	[Cart ID] [int] IDENTITY(1,1) NOT NULL,
	[Email ID] [varchar](50) NULL,
	[Product ID] [int] NOT NULL,
 CONSTRAINT [PK_tbl_Cart] PRIMARY KEY CLUSTERED 
(
	[Cart ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Brand]    Script Date: 03/08/2015 11:38:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Brand](
	[Brand ID] [int] IDENTITY(1,1) NOT NULL,
	[Brand] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_Brand] PRIMARY KEY CLUSTERED 
(
	[Brand ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_ProductType]    Script Date: 03/08/2015 11:38:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_ProductType](
	[Product Type ID] [int] IDENTITY(1,1) NOT NULL,
	[Product Type] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_Product] PRIMARY KEY CLUSTERED 
(
	[Product Type ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Seller]    Script Date: 03/08/2015 11:38:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Seller](
	[Seller ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [varchar](50) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[BussinessName] [varchar](50) NULL,
	[GenderID] [int] NOT NULL,
	[DOB] [date] NOT NULL,
	[BussinessTelephone] [varchar](50) NULL,
	[HomeTelephone] [varchar](50) NULL,
	[Fax] [varchar](50) NULL,
	[Mobile] [varchar](50) NULL,
	[SkypeName] [varchar](50) NULL,
	[Email] [varchar](50) NOT NULL,
	[Website] [varchar](100) NULL,
	[AdditionalInfo] [varchar](900) NULL,
 CONSTRAINT [PK_tbl_AddSeller] PRIMARY KEY CLUSTERED 
(
	[Seller ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Product]    Script Date: 03/08/2015 11:38:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Product](
	[Product ID] [int] IDENTITY(1,1) NOT NULL,
	[Product Type ID] [int] NOT NULL,
	[Brand ID] [int] NOT NULL,
	[Product Name] [varchar](50) NOT NULL,
	[Product Info] [varchar](500) NOT NULL,
	[Product Cost] [int] NOT NULL,
	[Seller ID] [int] NOT NULL,
	[Product Image] [varchar](50) NOT NULL,
	[Product Offer Available] [varchar](50) NULL,
	[Product Offer Detail] [varchar](5000) NULL,
	[Product Replacement Garentee available] [varchar](50) NULL,
	[Cash on Delivery Available] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_AddProduct] PRIMARY KEY CLUSTERED 
(
	[Product ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Default [DF_tbl_AddProduct_Product Offer Available]    Script Date: 03/08/2015 11:38:10 ******/
ALTER TABLE [dbo].[tbl_Product] ADD  CONSTRAINT [DF_tbl_AddProduct_Product Offer Available]  DEFAULT ('NO') FOR [Product Offer Available]
GO
/****** Object:  Default [DF_tbl_AddProduct_Product Replacement Garentee available]    Script Date: 03/08/2015 11:38:10 ******/
ALTER TABLE [dbo].[tbl_Product] ADD  CONSTRAINT [DF_tbl_AddProduct_Product Replacement Garentee available]  DEFAULT ('NO') FOR [Product Replacement Garentee available]
GO
/****** Object:  Default [DF_tbl_AddProduct_Cash on Delivery Available]    Script Date: 03/08/2015 11:38:10 ******/
ALTER TABLE [dbo].[tbl_Product] ADD  CONSTRAINT [DF_tbl_AddProduct_Cash on Delivery Available]  DEFAULT ('NO') FOR [Cash on Delivery Available]
GO
/****** Object:  ForeignKey [FK_tbl_AddSeller_tbl_Gender]    Script Date: 03/08/2015 11:38:10 ******/
ALTER TABLE [dbo].[tbl_Seller]  WITH CHECK ADD  CONSTRAINT [FK_tbl_AddSeller_tbl_Gender] FOREIGN KEY([GenderID])
REFERENCES [dbo].[tbl_Gender] ([GenderID])
GO
ALTER TABLE [dbo].[tbl_Seller] CHECK CONSTRAINT [FK_tbl_AddSeller_tbl_Gender]
GO
/****** Object:  ForeignKey [FK_tbl_AddProduct_tbl_Brand]    Script Date: 03/08/2015 11:38:10 ******/
ALTER TABLE [dbo].[tbl_Product]  WITH CHECK ADD  CONSTRAINT [FK_tbl_AddProduct_tbl_Brand] FOREIGN KEY([Brand ID])
REFERENCES [dbo].[tbl_Brand] ([Brand ID])
GO
ALTER TABLE [dbo].[tbl_Product] CHECK CONSTRAINT [FK_tbl_AddProduct_tbl_Brand]
GO
/****** Object:  ForeignKey [FK_tbl_AddProduct_tbl_ProductType]    Script Date: 03/08/2015 11:38:10 ******/
ALTER TABLE [dbo].[tbl_Product]  WITH CHECK ADD  CONSTRAINT [FK_tbl_AddProduct_tbl_ProductType] FOREIGN KEY([Product Type ID])
REFERENCES [dbo].[tbl_ProductType] ([Product Type ID])
GO
ALTER TABLE [dbo].[tbl_Product] CHECK CONSTRAINT [FK_tbl_AddProduct_tbl_ProductType]
GO
/****** Object:  ForeignKey [FK_tbl_AddProduct_tbl_Seller]    Script Date: 03/08/2015 11:38:10 ******/
ALTER TABLE [dbo].[tbl_Product]  WITH CHECK ADD  CONSTRAINT [FK_tbl_AddProduct_tbl_Seller] FOREIGN KEY([Seller ID])
REFERENCES [dbo].[tbl_Seller] ([Seller ID])
GO
ALTER TABLE [dbo].[tbl_Product] CHECK CONSTRAINT [FK_tbl_AddProduct_tbl_Seller]
GO
