USE [master]
GO
/****** Object:  Database [testDE]    Script Date: 23.06.2023 21:07:39 ******/
CREATE DATABASE [testDE]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'testDE', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\testDE.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'testDE_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\testDE_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [testDE] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [testDE].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [testDE] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [testDE] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [testDE] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [testDE] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [testDE] SET ARITHABORT OFF 
GO
ALTER DATABASE [testDE] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [testDE] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [testDE] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [testDE] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [testDE] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [testDE] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [testDE] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [testDE] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [testDE] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [testDE] SET  DISABLE_BROKER 
GO
ALTER DATABASE [testDE] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [testDE] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [testDE] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [testDE] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [testDE] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [testDE] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [testDE] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [testDE] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [testDE] SET  MULTI_USER 
GO
ALTER DATABASE [testDE] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [testDE] SET DB_CHAINING OFF 
GO
ALTER DATABASE [testDE] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [testDE] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [testDE] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [testDE] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [testDE] SET QUERY_STORE = OFF
GO
USE [testDE]
GO
/****** Object:  Table [dbo].[Goroda]    Script Date: 23.06.2023 21:07:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Goroda](
	[IdGoroda] [int] NOT NULL,
	[Nazvanie] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Goroda] PRIMARY KEY CLUSTERED 
(
	[IdGoroda] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Napravleniya]    Script Date: 23.06.2023 21:07:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Napravleniya](
	[IdNapravleniya] [int] NOT NULL,
	[Nazvanie] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Napravleniya] PRIMARY KEY CLUSTERED 
(
	[IdNapravleniya] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pol]    Script Date: 23.06.2023 21:07:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pol](
	[IdPola] [int] NOT NULL,
	[Nazvanie] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Pol] PRIMARY KEY CLUSTERED 
(
	[IdPola] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Polsovateli]    Script Date: 23.06.2023 21:07:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Polsovateli](
	[IdPolzovatelya] [int] IDENTITY(1,1) NOT NULL,
	[Familiya] [nvarchar](max) NOT NULL,
	[Imya] [nvarchar](max) NOT NULL,
	[Otchestvo] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Telefon] [nchar](11) NOT NULL,
	[DataRojdeniya] [date] NOT NULL,
	[IdPola] [int] NOT NULL,
	[IdStrani] [int] NOT NULL,
	[IdNapravleniya] [int] NULL,
	[IdMeropriyatiya] [int] NULL,
	[Parol] [nchar](11) NOT NULL,
	[IdRoli] [int] NOT NULL,
 CONSTRAINT [PK_Polsovateli] PRIMARY KEY CLUSTERED 
(
	[IdPolzovatelya] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roli]    Script Date: 23.06.2023 21:07:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roli](
	[IdRoli] [int] NOT NULL,
	[Nazvanie] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Roli] PRIMARY KEY CLUSTERED 
(
	[IdRoli] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sobitiya]    Script Date: 23.06.2023 21:07:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sobitiya](
	[IdSobitiya] [int] NOT NULL,
	[Nazvanie] [nvarchar](max) NOT NULL,
	[Data] [date] NOT NULL,
	[Days] [int] NOT NULL,
	[IdGoroda] [int] NULL,
 CONSTRAINT [PK_Sobitiya] PRIMARY KEY CLUSTERED 
(
	[IdSobitiya] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Strani]    Script Date: 23.06.2023 21:07:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Strani](
	[IdStrani] [int] NOT NULL,
	[Nazvanie] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Strani] PRIMARY KEY CLUSTERED 
(
	[IdStrani] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Goroda] ([IdGoroda], [Nazvanie]) VALUES (1, N'Кострома')
INSERT [dbo].[Goroda] ([IdGoroda], [Nazvanie]) VALUES (2, N'Москва')
INSERT [dbo].[Goroda] ([IdGoroda], [Nazvanie]) VALUES (3, N'Ярославль')
INSERT [dbo].[Goroda] ([IdGoroda], [Nazvanie]) VALUES (4, N'Нерехта')
INSERT [dbo].[Goroda] ([IdGoroda], [Nazvanie]) VALUES (5, N'Санкт-Петербург')
GO
INSERT [dbo].[Napravleniya] ([IdNapravleniya], [Nazvanie]) VALUES (1, N'ИТ')
INSERT [dbo].[Napravleniya] ([IdNapravleniya], [Nazvanie]) VALUES (2, N'БигДата')
INSERT [dbo].[Napravleniya] ([IdNapravleniya], [Nazvanie]) VALUES (3, N'Дизайн')
INSERT [dbo].[Napravleniya] ([IdNapravleniya], [Nazvanie]) VALUES (4, N'Аналитика')
INSERT [dbo].[Napravleniya] ([IdNapravleniya], [Nazvanie]) VALUES (5, N'Информационная безопасность')
GO
INSERT [dbo].[Pol] ([IdPola], [Nazvanie]) VALUES (1, N'Мужской')
INSERT [dbo].[Pol] ([IdPola], [Nazvanie]) VALUES (2, N'Женский')
GO
SET IDENTITY_INSERT [dbo].[Polsovateli] ON 

INSERT [dbo].[Polsovateli] ([IdPolzovatelya], [Familiya], [Imya], [Otchestvo], [Email], [Telefon], [DataRojdeniya], [IdPola], [IdStrani], [IdNapravleniya], [IdMeropriyatiya], [Parol], [IdRoli]) VALUES (1, N'Смирнова', N'Варвара', N'Васильевна', N'ja1m6ekwls0x@mail.com', N'73369449615', CAST(N'1996-11-13' AS Date), 2, 1, NULL, NULL, N'0000000000 ', 1)
INSERT [dbo].[Polsovateli] ([IdPolzovatelya], [Familiya], [Imya], [Otchestvo], [Email], [Telefon], [DataRojdeniya], [IdPola], [IdStrani], [IdNapravleniya], [IdMeropriyatiya], [Parol], [IdRoli]) VALUES (2, N'Киселев', N'Марк', N'Вячеславович', N'jn8s3ao96et5@yahoo.com', N'70362243903', CAST(N'1993-03-19' AS Date), 1, 2, NULL, NULL, N'1111111111 ', 2)
INSERT [dbo].[Polsovateli] ([IdPolzovatelya], [Familiya], [Imya], [Otchestvo], [Email], [Telefon], [DataRojdeniya], [IdPola], [IdStrani], [IdNapravleniya], [IdMeropriyatiya], [Parol], [IdRoli]) VALUES (4, N'Беликов', N'Роман', N'Тимофеевич', N'874gri1p0cte@mail.com', N'73409270193', CAST(N'1963-02-09' AS Date), 1, 3, 1, 2, N'2222222222 ', 3)
INSERT [dbo].[Polsovateli] ([IdPolzovatelya], [Familiya], [Imya], [Otchestvo], [Email], [Telefon], [DataRojdeniya], [IdPola], [IdStrani], [IdNapravleniya], [IdMeropriyatiya], [Parol], [IdRoli]) VALUES (5, N'Яковлева', N'Марина', N'Всеволодовна', N'z3t0fbmq5vpw@outlook.com', N'77681884896', CAST(N'1952-11-09' AS Date), 2, 4, 3, NULL, N'3333333333 ', 4)
SET IDENTITY_INSERT [dbo].[Polsovateli] OFF
GO
INSERT [dbo].[Roli] ([IdRoli], [Nazvanie]) VALUES (1, N'Участник')
INSERT [dbo].[Roli] ([IdRoli], [Nazvanie]) VALUES (2, N'Модератор')
INSERT [dbo].[Roli] ([IdRoli], [Nazvanie]) VALUES (3, N'Организатор')
INSERT [dbo].[Roli] ([IdRoli], [Nazvanie]) VALUES (4, N'Жюри')
GO
INSERT [dbo].[Sobitiya] ([IdSobitiya], [Nazvanie], [Data], [Days], [IdGoroda]) VALUES (1, N'IT в бизнесе', CAST(N'2003-06-20' AS Date), 2, 1)
INSERT [dbo].[Sobitiya] ([IdSobitiya], [Nazvanie], [Data], [Days], [IdGoroda]) VALUES (2, N'Разработка приложений', CAST(N'2003-06-21' AS Date), 1, 2)
INSERT [dbo].[Sobitiya] ([IdSobitiya], [Nazvanie], [Data], [Days], [IdGoroda]) VALUES (3, N'IT-инфраструктура', CAST(N'2003-05-22' AS Date), 1, 3)
INSERT [dbo].[Sobitiya] ([IdSobitiya], [Nazvanie], [Data], [Days], [IdGoroda]) VALUES (4, N'Стартапы', CAST(N'2003-04-23' AS Date), 1, 4)
INSERT [dbo].[Sobitiya] ([IdSobitiya], [Nazvanie], [Data], [Days], [IdGoroda]) VALUES (5, N'Информационная безопасность', CAST(N'2003-07-23' AS Date), 1, 5)
GO
INSERT [dbo].[Strani] ([IdStrani], [Nazvanie]) VALUES (1, N'Россия')
INSERT [dbo].[Strani] ([IdStrani], [Nazvanie]) VALUES (2, N'Германия')
INSERT [dbo].[Strani] ([IdStrani], [Nazvanie]) VALUES (3, N'Казахстан')
INSERT [dbo].[Strani] ([IdStrani], [Nazvanie]) VALUES (4, N'Польша')
GO
ALTER TABLE [dbo].[Polsovateli]  WITH CHECK ADD  CONSTRAINT [FK_Polsovateli_Napravleniya] FOREIGN KEY([IdNapravleniya])
REFERENCES [dbo].[Napravleniya] ([IdNapravleniya])
GO
ALTER TABLE [dbo].[Polsovateli] CHECK CONSTRAINT [FK_Polsovateli_Napravleniya]
GO
ALTER TABLE [dbo].[Polsovateli]  WITH CHECK ADD  CONSTRAINT [FK_Polsovateli_Pol] FOREIGN KEY([IdPola])
REFERENCES [dbo].[Pol] ([IdPola])
GO
ALTER TABLE [dbo].[Polsovateli] CHECK CONSTRAINT [FK_Polsovateli_Pol]
GO
ALTER TABLE [dbo].[Polsovateli]  WITH CHECK ADD  CONSTRAINT [FK_Polsovateli_Roli] FOREIGN KEY([IdRoli])
REFERENCES [dbo].[Roli] ([IdRoli])
GO
ALTER TABLE [dbo].[Polsovateli] CHECK CONSTRAINT [FK_Polsovateli_Roli]
GO
ALTER TABLE [dbo].[Polsovateli]  WITH CHECK ADD  CONSTRAINT [FK_Polsovateli_Sobitiya] FOREIGN KEY([IdMeropriyatiya])
REFERENCES [dbo].[Sobitiya] ([IdSobitiya])
GO
ALTER TABLE [dbo].[Polsovateli] CHECK CONSTRAINT [FK_Polsovateli_Sobitiya]
GO
ALTER TABLE [dbo].[Polsovateli]  WITH CHECK ADD  CONSTRAINT [FK_Polsovateli_Strani] FOREIGN KEY([IdStrani])
REFERENCES [dbo].[Strani] ([IdStrani])
GO
ALTER TABLE [dbo].[Polsovateli] CHECK CONSTRAINT [FK_Polsovateli_Strani]
GO
ALTER TABLE [dbo].[Sobitiya]  WITH CHECK ADD  CONSTRAINT [FK_Sobitiya_Goroda] FOREIGN KEY([IdGoroda])
REFERENCES [dbo].[Goroda] ([IdGoroda])
GO
ALTER TABLE [dbo].[Sobitiya] CHECK CONSTRAINT [FK_Sobitiya_Goroda]
GO
USE [master]
GO
ALTER DATABASE [testDE] SET  READ_WRITE 
GO
