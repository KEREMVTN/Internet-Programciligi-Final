USE [master]
GO
/****** Object:  Database [Görsel Programlama Vize]    Script Date: 8.12.2022 17:56:59 ******/
CREATE DATABASE [Görsel Programlama Vize]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Görsel Programlama Vize', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS01\MSSQL\DATA\Görsel Programlama Vize.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Görsel Programlama Vize_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS01\MSSQL\DATA\Görsel Programlama Vize_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Görsel Programlama Vize] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Görsel Programlama Vize].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Görsel Programlama Vize] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Görsel Programlama Vize] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Görsel Programlama Vize] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Görsel Programlama Vize] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Görsel Programlama Vize] SET ARITHABORT OFF 
GO
ALTER DATABASE [Görsel Programlama Vize] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Görsel Programlama Vize] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Görsel Programlama Vize] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Görsel Programlama Vize] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Görsel Programlama Vize] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Görsel Programlama Vize] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Görsel Programlama Vize] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Görsel Programlama Vize] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Görsel Programlama Vize] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Görsel Programlama Vize] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Görsel Programlama Vize] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Görsel Programlama Vize] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Görsel Programlama Vize] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Görsel Programlama Vize] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Görsel Programlama Vize] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Görsel Programlama Vize] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Görsel Programlama Vize] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Görsel Programlama Vize] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Görsel Programlama Vize] SET  MULTI_USER 
GO
ALTER DATABASE [Görsel Programlama Vize] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Görsel Programlama Vize] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Görsel Programlama Vize] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Görsel Programlama Vize] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Görsel Programlama Vize] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Görsel Programlama Vize] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Görsel Programlama Vize] SET QUERY_STORE = OFF
GO
USE [Görsel Programlama Vize]
GO
/****** Object:  Table [dbo].[OkulYönetimi]    Script Date: 8.12.2022 17:56:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OkulYönetimi](
	[ID] [int] NOT NULL,
	[Ad Soyad] [nvarchar](50) NULL,
	[Görevi] [nvarchar](50) NULL,
	[Görev Tipi] [nvarchar](50) NULL,
 CONSTRAINT [PK_Okul_Yönetimi1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ÖDers]    Script Date: 8.12.2022 17:56:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ÖDers](
	[ID] [int] NOT NULL,
	[Ders ID] [int] NULL,
	[Öğrenci ID] [int] NULL,
 CONSTRAINT [PK_ÖğrenciDers1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Öğrenci]    Script Date: 8.12.2022 17:56:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Öğrenci](
	[ID] [int] NOT NULL,
	[Ad Soyad] [nvarchar](50) NULL,
	[Kayıt Tarihi] [nvarchar](50) NULL,
	[Öğrenci No] [nvarchar](50) NULL,
	[Doğum Tarihi] [datetime] NULL,
	[Bölüm] [nvarchar](50) NULL,
 CONSTRAINT [PK_Öğrenci1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[YönetimDers]    Script Date: 8.12.2022 17:56:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YönetimDers](
	[ID] [int] NOT NULL,
	[Ders Adı] [nvarchar](50) NULL,
	[Ders Kredisi] [nvarchar](50) NULL,
	[Okul Yönetim ID] [int] NULL,
 CONSTRAINT [PK_Ders1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ÖDers]  WITH CHECK ADD  CONSTRAINT [FK_ÖDers_Öğrenci] FOREIGN KEY([Öğrenci ID])
REFERENCES [dbo].[Öğrenci] ([ID])
GO
ALTER TABLE [dbo].[ÖDers] CHECK CONSTRAINT [FK_ÖDers_Öğrenci]
GO
ALTER TABLE [dbo].[ÖDers]  WITH CHECK ADD  CONSTRAINT [FK_ÖDers_YönetimDers] FOREIGN KEY([Ders ID])
REFERENCES [dbo].[YönetimDers] ([ID])
GO
ALTER TABLE [dbo].[ÖDers] CHECK CONSTRAINT [FK_ÖDers_YönetimDers]
GO
ALTER TABLE [dbo].[YönetimDers]  WITH CHECK ADD  CONSTRAINT [FK_YönetimDers_OkulYönetimi] FOREIGN KEY([Okul Yönetim ID])
REFERENCES [dbo].[OkulYönetimi] ([ID])
GO
ALTER TABLE [dbo].[YönetimDers] CHECK CONSTRAINT [FK_YönetimDers_OkulYönetimi]
GO
USE [master]
GO
ALTER DATABASE [Görsel Programlama Vize] SET  READ_WRITE 
GO
