USE [master]
GO
/****** Object:  Database [Spor_Salonu_Sistemi]    Script Date: 21.05.2021 01:18:09 ******/
CREATE DATABASE [Spor_Salonu_Sistemi]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Spor_Salonu_Sistemi', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Spor_Salonu_Sistemi.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Spor_Salonu_Sistemi_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Spor_Salonu_Sistemi_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Spor_Salonu_Sistemi] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Spor_Salonu_Sistemi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Spor_Salonu_Sistemi] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Spor_Salonu_Sistemi] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Spor_Salonu_Sistemi] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Spor_Salonu_Sistemi] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Spor_Salonu_Sistemi] SET ARITHABORT OFF 
GO
ALTER DATABASE [Spor_Salonu_Sistemi] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Spor_Salonu_Sistemi] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Spor_Salonu_Sistemi] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Spor_Salonu_Sistemi] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Spor_Salonu_Sistemi] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Spor_Salonu_Sistemi] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Spor_Salonu_Sistemi] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Spor_Salonu_Sistemi] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Spor_Salonu_Sistemi] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Spor_Salonu_Sistemi] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Spor_Salonu_Sistemi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Spor_Salonu_Sistemi] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Spor_Salonu_Sistemi] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Spor_Salonu_Sistemi] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Spor_Salonu_Sistemi] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Spor_Salonu_Sistemi] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Spor_Salonu_Sistemi] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Spor_Salonu_Sistemi] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Spor_Salonu_Sistemi] SET  MULTI_USER 
GO
ALTER DATABASE [Spor_Salonu_Sistemi] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Spor_Salonu_Sistemi] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Spor_Salonu_Sistemi] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Spor_Salonu_Sistemi] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Spor_Salonu_Sistemi] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Spor_Salonu_Sistemi] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Spor_Salonu_Sistemi] SET QUERY_STORE = OFF
GO
USE [Spor_Salonu_Sistemi]
GO
/****** Object:  Table [dbo].[Alır]    Script Date: 21.05.2021 01:18:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alır](
	[Alir_ID] [int] IDENTITY(1,1) NOT NULL,
	[Musteri_ID] [int] NOT NULL,
	[Program_ID] [int] NOT NULL,
 CONSTRAINT [PK_Alır] PRIMARY KEY CLUSTERED 
(
	[Alir_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mekan]    Script Date: 21.05.2021 01:18:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mekan](
	[Mekan_ID] [int] IDENTITY(1,1) NOT NULL,
	[Mekan_Adi] [nvarchar](50) NOT NULL,
	[Mekan_Tel] [nvarchar](20) NOT NULL,
	[Mekan_Adres] [nvarchar](100) NOT NULL,
	[Mekan_Mail] [nvarchar](50) NULL,
 CONSTRAINT [PK_Mekan] PRIMARY KEY CLUSTERED 
(
	[Mekan_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Müşteri]    Script Date: 21.05.2021 01:18:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Müşteri](
	[Musteri_ID] [int] IDENTITY(1,1) NOT NULL,
	[Musteri_Adi] [nvarchar](50) NOT NULL,
	[Musteri_Soyadi] [nvarchar](50) NOT NULL,
	[Musteri_Dogum_Tarihi] [date] NOT NULL,
	[Musteri_Cinsiyet] [nvarchar](10) NOT NULL,
	[Musteri_Tel] [nvarchar](20) NOT NULL,
	[Musteri_Adres] [nvarchar](100) NULL,
	[Musteri_Mail] [nvarchar](50) NULL,
	[Musteri_Boy] [int] NOT NULL,
	[Musteri_Kilo] [int] NOT NULL,
	[Islem] [nvarchar](50) NOT NULL,
	[Islem_Tarihi] [date] NOT NULL,
	[Hizmet_Bedeli] [int] NOT NULL,
	[Mekan_ID] [int] NOT NULL,
 CONSTRAINT [PK_Müşteri] PRIMARY KEY CLUSTERED 
(
	[Musteri_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personel]    Script Date: 21.05.2021 01:18:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personel](
	[Personel_ID] [int] IDENTITY(1,1) NOT NULL,
	[Personel_Adi] [nvarchar](50) NOT NULL,
	[Personel_Soyadi] [nvarchar](50) NOT NULL,
	[Personel_Cinsiyet] [nvarchar](10) NOT NULL,
	[Mekan_ID] [int] NOT NULL,
 CONSTRAINT [PK_Personel] PRIMARY KEY CLUSTERED 
(
	[Personel_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Program]    Script Date: 21.05.2021 01:18:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Program](
	[Program_ID] [int] IDENTITY(1,1) NOT NULL,
	[Program_Adi] [nvarchar](50) NOT NULL,
	[Mekan_ID] [int] NOT NULL,
 CONSTRAINT [PK_Program] PRIMARY KEY CLUSTERED 
(
	[Program_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Verir]    Script Date: 21.05.2021 01:18:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Verir](
	[Verir_ID] [int] IDENTITY(1,1) NOT NULL,
	[Personel_ID] [int] NOT NULL,
	[Program_ID] [int] NOT NULL,
 CONSTRAINT [PK_Verir] PRIMARY KEY CLUSTERED 
(
	[Verir_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Alır]  WITH CHECK ADD  CONSTRAINT [FK_Alır_Müşteri] FOREIGN KEY([Musteri_ID])
REFERENCES [dbo].[Müşteri] ([Musteri_ID])
GO
ALTER TABLE [dbo].[Alır] CHECK CONSTRAINT [FK_Alır_Müşteri]
GO
ALTER TABLE [dbo].[Alır]  WITH CHECK ADD  CONSTRAINT [FK_Alır_Program] FOREIGN KEY([Program_ID])
REFERENCES [dbo].[Program] ([Program_ID])
GO
ALTER TABLE [dbo].[Alır] CHECK CONSTRAINT [FK_Alır_Program]
GO
ALTER TABLE [dbo].[Müşteri]  WITH CHECK ADD  CONSTRAINT [FK_Müşteri_Mekan] FOREIGN KEY([Mekan_ID])
REFERENCES [dbo].[Mekan] ([Mekan_ID])
GO
ALTER TABLE [dbo].[Müşteri] CHECK CONSTRAINT [FK_Müşteri_Mekan]
GO
ALTER TABLE [dbo].[Personel]  WITH CHECK ADD  CONSTRAINT [FK_Personel_Mekan] FOREIGN KEY([Mekan_ID])
REFERENCES [dbo].[Mekan] ([Mekan_ID])
GO
ALTER TABLE [dbo].[Personel] CHECK CONSTRAINT [FK_Personel_Mekan]
GO
ALTER TABLE [dbo].[Program]  WITH CHECK ADD  CONSTRAINT [FK_Program_Mekan] FOREIGN KEY([Mekan_ID])
REFERENCES [dbo].[Mekan] ([Mekan_ID])
GO
ALTER TABLE [dbo].[Program] CHECK CONSTRAINT [FK_Program_Mekan]
GO
ALTER TABLE [dbo].[Verir]  WITH CHECK ADD  CONSTRAINT [FK_Verir_Personel] FOREIGN KEY([Personel_ID])
REFERENCES [dbo].[Personel] ([Personel_ID])
GO
ALTER TABLE [dbo].[Verir] CHECK CONSTRAINT [FK_Verir_Personel]
GO
ALTER TABLE [dbo].[Verir]  WITH CHECK ADD  CONSTRAINT [FK_Verir_Program] FOREIGN KEY([Program_ID])
REFERENCES [dbo].[Program] ([Program_ID])
GO
ALTER TABLE [dbo].[Verir] CHECK CONSTRAINT [FK_Verir_Program]
GO
USE [master]
GO
ALTER DATABASE [Spor_Salonu_Sistemi] SET  READ_WRITE 
GO
