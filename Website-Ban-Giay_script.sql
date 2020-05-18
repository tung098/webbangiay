USE [master]
GO
/****** Object:  Database [WebBanGiay]    Script Date: 5/23/2019 4:00:44 AM ******/
CREATE DATABASE [WebBanGiay]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WebBanGiay', FILENAME = N'D:\Năm 3 kì 2\Thực tập nhóm\SQL\WebBanGiay.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WebBanGiay_log', FILENAME = N'D:\Năm 3 kì 2\Thực tập nhóm\SQL\WebBanGiay_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [WebBanGiay] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WebBanGiay].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WebBanGiay] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WebBanGiay] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WebBanGiay] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WebBanGiay] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WebBanGiay] SET ARITHABORT OFF 
GO
ALTER DATABASE [WebBanGiay] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [WebBanGiay] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WebBanGiay] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WebBanGiay] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WebBanGiay] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WebBanGiay] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WebBanGiay] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WebBanGiay] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WebBanGiay] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WebBanGiay] SET  ENABLE_BROKER 
GO
ALTER DATABASE [WebBanGiay] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WebBanGiay] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WebBanGiay] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WebBanGiay] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WebBanGiay] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WebBanGiay] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WebBanGiay] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WebBanGiay] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WebBanGiay] SET  MULTI_USER 
GO
ALTER DATABASE [WebBanGiay] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WebBanGiay] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WebBanGiay] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WebBanGiay] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [WebBanGiay] SET DELAYED_DURABILITY = DISABLED 
GO
USE [WebBanGiay]
GO
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 5/23/2019 4:00:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonHang](
	[Madh] [int] NOT NULL,
	[Magiay] [int] NOT NULL,
	[Mau] [nvarchar](50) NULL,
	[Size] [int] NULL,
	[SoLuong] [int] NULL,
	[Dongia] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[Madh] ASC,
	[Magiay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietMau]    Script Date: 5/23/2019 4:00:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietMau](
	[MachitietMau] [int] IDENTITY(1,1) NOT NULL,
	[Mamau] [int] NULL,
	[Magiay] [int] NULL,
	[Ghichu] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MachitietMau] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietSize]    Script Date: 5/23/2019 4:00:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietSize](
	[MachitietSize] [int] IDENTITY(1,1) NOT NULL,
	[Masize] [int] NULL,
	[Magiay] [int] NULL,
	[Ghichu] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MachitietSize] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 5/23/2019 4:00:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DonHang](
	[Madh] [int] IDENTITY(1,1) NOT NULL,
	[Tenkh] [nvarchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Sdt] [varchar](20) NULL,
	[Diachi] [nvarchar](500) NULL,
	[Ngaydat] [datetime] NULL,
	[Ngaygiao] [datetime] NULL,
	[Tinhtranggh] [nvarchar](50) NULL,
	[Dathanhtoan] [nvarchar](50) NULL,
	[Ghichu] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[Madh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Giay]    Script Date: 5/23/2019 4:00:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Giay](
	[Magiay] [int] IDENTITY(1,1) NOT NULL,
	[Manhacc] [int] NULL,
	[Manhasx] [int] NULL,
	[Maloaigiay] [int] NULL,
	[Tengiay] [nvarchar](50) NULL,
	[Soluongton] [int] NULL,
	[Giaban] [float] NULL,
	[Hinhanh] [nvarchar](50) NULL,
	[Mota] [nvarchar](4000) NULL,
PRIMARY KEY CLUSTERED 
(
	[Magiay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiGiay]    Script Date: 5/23/2019 4:00:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiGiay](
	[Maloaigiay] [int] IDENTITY(1,1) NOT NULL,
	[Tenloaigiay] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Maloaigiay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Mau]    Script Date: 5/23/2019 4:00:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mau](
	[Mamau] [int] IDENTITY(1,1) NOT NULL,
	[Tenmau] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Mamau] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 5/23/2019 4:00:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[Manhacc] [int] IDENTITY(1,1) NOT NULL,
	[Tennhacc] [nvarchar](50) NULL,
	[Diachi] [nvarchar](50) NULL,
	[Sdt] [varchar](20) NULL,
	[Website] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Manhacc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 5/23/2019 4:00:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhaSanXuat](
	[Manhasx] [int] IDENTITY(1,1) NOT NULL,
	[Tennhasx] [nvarchar](50) NULL,
	[Diachi] [nvarchar](50) NULL,
	[Sdt] [varchar](20) NULL,
	[Website] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Manhasx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Size]    Script Date: 5/23/2019 4:00:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Size](
	[Masize] [int] IDENTITY(1,1) NOT NULL,
	[Sosize] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Masize] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 5/23/2019 4:00:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[Matk] [int] IDENTITY(1,1) NOT NULL,
	[Tentk] [varchar](50) NULL,
	[Matkhau] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Matk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ChiTietDonHang] ([Madh], [Magiay], [Mau], [Size], [SoLuong], [Dongia]) VALUES (1, 1, N'Xanh', 14, 3, 500000)
INSERT [dbo].[ChiTietDonHang] ([Madh], [Magiay], [Mau], [Size], [SoLuong], [Dongia]) VALUES (1, 2, N'Xanh', 14, 2, 600000)
INSERT [dbo].[ChiTietDonHang] ([Madh], [Magiay], [Mau], [Size], [SoLuong], [Dongia]) VALUES (2, 6, N'Xanh', 36, 4, 625000)
INSERT [dbo].[ChiTietDonHang] ([Madh], [Magiay], [Mau], [Size], [SoLuong], [Dongia]) VALUES (3, 1, N'Xanh', 14, 1, 500000)
INSERT [dbo].[ChiTietDonHang] ([Madh], [Magiay], [Mau], [Size], [SoLuong], [Dongia]) VALUES (4, 1, N'Xanh', 14, 1, 500000)
SET IDENTITY_INSERT [dbo].[ChiTietMau] ON 

INSERT [dbo].[ChiTietMau] ([MachitietMau], [Mamau], [Magiay], [Ghichu]) VALUES (1, 1, 1, NULL)
INSERT [dbo].[ChiTietMau] ([MachitietMau], [Mamau], [Magiay], [Ghichu]) VALUES (2, 1, 2, NULL)
INSERT [dbo].[ChiTietMau] ([MachitietMau], [Mamau], [Magiay], [Ghichu]) VALUES (3, 1, 3, NULL)
INSERT [dbo].[ChiTietMau] ([MachitietMau], [Mamau], [Magiay], [Ghichu]) VALUES (4, 1, 4, NULL)
INSERT [dbo].[ChiTietMau] ([MachitietMau], [Mamau], [Magiay], [Ghichu]) VALUES (5, 2, 1, NULL)
INSERT [dbo].[ChiTietMau] ([MachitietMau], [Mamau], [Magiay], [Ghichu]) VALUES (6, 1, 9, NULL)
INSERT [dbo].[ChiTietMau] ([MachitietMau], [Mamau], [Magiay], [Ghichu]) VALUES (7, 2, 8, NULL)
INSERT [dbo].[ChiTietMau] ([MachitietMau], [Mamau], [Magiay], [Ghichu]) VALUES (8, 2, 4, NULL)
INSERT [dbo].[ChiTietMau] ([MachitietMau], [Mamau], [Magiay], [Ghichu]) VALUES (12, 3, 10, NULL)
INSERT [dbo].[ChiTietMau] ([MachitietMau], [Mamau], [Magiay], [Ghichu]) VALUES (13, 7, 12, NULL)
INSERT [dbo].[ChiTietMau] ([MachitietMau], [Mamau], [Magiay], [Ghichu]) VALUES (14, 1, 6, NULL)
INSERT [dbo].[ChiTietMau] ([MachitietMau], [Mamau], [Magiay], [Ghichu]) VALUES (16, 6, 2, NULL)
INSERT [dbo].[ChiTietMau] ([MachitietMau], [Mamau], [Magiay], [Ghichu]) VALUES (17, 2, 2, NULL)
INSERT [dbo].[ChiTietMau] ([MachitietMau], [Mamau], [Magiay], [Ghichu]) VALUES (18, 3, 2, NULL)
INSERT [dbo].[ChiTietMau] ([MachitietMau], [Mamau], [Magiay], [Ghichu]) VALUES (19, 4, 2, NULL)
INSERT [dbo].[ChiTietMau] ([MachitietMau], [Mamau], [Magiay], [Ghichu]) VALUES (20, 2, 3, NULL)
INSERT [dbo].[ChiTietMau] ([MachitietMau], [Mamau], [Magiay], [Ghichu]) VALUES (21, 6, 3, NULL)
INSERT [dbo].[ChiTietMau] ([MachitietMau], [Mamau], [Magiay], [Ghichu]) VALUES (22, 7, 3, NULL)
INSERT [dbo].[ChiTietMau] ([MachitietMau], [Mamau], [Magiay], [Ghichu]) VALUES (24, 6, 4, NULL)
INSERT [dbo].[ChiTietMau] ([MachitietMau], [Mamau], [Magiay], [Ghichu]) VALUES (25, 7, 4, NULL)
INSERT [dbo].[ChiTietMau] ([MachitietMau], [Mamau], [Magiay], [Ghichu]) VALUES (26, 1, 5, NULL)
INSERT [dbo].[ChiTietMau] ([MachitietMau], [Mamau], [Magiay], [Ghichu]) VALUES (27, 2, 5, NULL)
INSERT [dbo].[ChiTietMau] ([MachitietMau], [Mamau], [Magiay], [Ghichu]) VALUES (28, 6, 5, NULL)
INSERT [dbo].[ChiTietMau] ([MachitietMau], [Mamau], [Magiay], [Ghichu]) VALUES (29, 2, 6, NULL)
INSERT [dbo].[ChiTietMau] ([MachitietMau], [Mamau], [Magiay], [Ghichu]) VALUES (30, 6, 6, NULL)
INSERT [dbo].[ChiTietMau] ([MachitietMau], [Mamau], [Magiay], [Ghichu]) VALUES (31, 1, 7, NULL)
INSERT [dbo].[ChiTietMau] ([MachitietMau], [Mamau], [Magiay], [Ghichu]) VALUES (32, 1, 8, NULL)
INSERT [dbo].[ChiTietMau] ([MachitietMau], [Mamau], [Magiay], [Ghichu]) VALUES (33, 6, 8, NULL)
INSERT [dbo].[ChiTietMau] ([MachitietMau], [Mamau], [Magiay], [Ghichu]) VALUES (34, 6, 9, NULL)
INSERT [dbo].[ChiTietMau] ([MachitietMau], [Mamau], [Magiay], [Ghichu]) VALUES (35, 1, 10, NULL)
INSERT [dbo].[ChiTietMau] ([MachitietMau], [Mamau], [Magiay], [Ghichu]) VALUES (36, 1, 11, NULL)
INSERT [dbo].[ChiTietMau] ([MachitietMau], [Mamau], [Magiay], [Ghichu]) VALUES (37, 6, 11, NULL)
INSERT [dbo].[ChiTietMau] ([MachitietMau], [Mamau], [Magiay], [Ghichu]) VALUES (38, 6, 12, NULL)
INSERT [dbo].[ChiTietMau] ([MachitietMau], [Mamau], [Magiay], [Ghichu]) VALUES (39, 1, 13, NULL)
INSERT [dbo].[ChiTietMau] ([MachitietMau], [Mamau], [Magiay], [Ghichu]) VALUES (40, 6, 13, NULL)
INSERT [dbo].[ChiTietMau] ([MachitietMau], [Mamau], [Magiay], [Ghichu]) VALUES (41, 1, 14, NULL)
INSERT [dbo].[ChiTietMau] ([MachitietMau], [Mamau], [Magiay], [Ghichu]) VALUES (42, 6, 14, NULL)
INSERT [dbo].[ChiTietMau] ([MachitietMau], [Mamau], [Magiay], [Ghichu]) VALUES (43, 1, 15, NULL)
INSERT [dbo].[ChiTietMau] ([MachitietMau], [Mamau], [Magiay], [Ghichu]) VALUES (44, 6, 15, NULL)
INSERT [dbo].[ChiTietMau] ([MachitietMau], [Mamau], [Magiay], [Ghichu]) VALUES (45, 1, 16, NULL)
INSERT [dbo].[ChiTietMau] ([MachitietMau], [Mamau], [Magiay], [Ghichu]) VALUES (46, 6, 16, NULL)
INSERT [dbo].[ChiTietMau] ([MachitietMau], [Mamau], [Magiay], [Ghichu]) VALUES (47, 1, 17, NULL)
INSERT [dbo].[ChiTietMau] ([MachitietMau], [Mamau], [Magiay], [Ghichu]) VALUES (48, 6, 17, NULL)
INSERT [dbo].[ChiTietMau] ([MachitietMau], [Mamau], [Magiay], [Ghichu]) VALUES (49, 1, 18, NULL)
INSERT [dbo].[ChiTietMau] ([MachitietMau], [Mamau], [Magiay], [Ghichu]) VALUES (50, 6, 18, NULL)
INSERT [dbo].[ChiTietMau] ([MachitietMau], [Mamau], [Magiay], [Ghichu]) VALUES (51, 1, 19, NULL)
INSERT [dbo].[ChiTietMau] ([MachitietMau], [Mamau], [Magiay], [Ghichu]) VALUES (52, 6, 19, NULL)
INSERT [dbo].[ChiTietMau] ([MachitietMau], [Mamau], [Magiay], [Ghichu]) VALUES (53, 1, 20, NULL)
INSERT [dbo].[ChiTietMau] ([MachitietMau], [Mamau], [Magiay], [Ghichu]) VALUES (54, 6, 20, NULL)
INSERT [dbo].[ChiTietMau] ([MachitietMau], [Mamau], [Magiay], [Ghichu]) VALUES (55, 1, 21, NULL)
INSERT [dbo].[ChiTietMau] ([MachitietMau], [Mamau], [Magiay], [Ghichu]) VALUES (56, 6, 21, NULL)
INSERT [dbo].[ChiTietMau] ([MachitietMau], [Mamau], [Magiay], [Ghichu]) VALUES (57, 2, 22, NULL)
INSERT [dbo].[ChiTietMau] ([MachitietMau], [Mamau], [Magiay], [Ghichu]) VALUES (58, 7, 22, NULL)
INSERT [dbo].[ChiTietMau] ([MachitietMau], [Mamau], [Magiay], [Ghichu]) VALUES (59, 3, 23, NULL)
INSERT [dbo].[ChiTietMau] ([MachitietMau], [Mamau], [Magiay], [Ghichu]) VALUES (60, 4, 23, NULL)
INSERT [dbo].[ChiTietMau] ([MachitietMau], [Mamau], [Magiay], [Ghichu]) VALUES (61, 1, 24, NULL)
INSERT [dbo].[ChiTietMau] ([MachitietMau], [Mamau], [Magiay], [Ghichu]) VALUES (62, 6, 24, NULL)
INSERT [dbo].[ChiTietMau] ([MachitietMau], [Mamau], [Magiay], [Ghichu]) VALUES (64, 2, 24, NULL)
INSERT [dbo].[ChiTietMau] ([MachitietMau], [Mamau], [Magiay], [Ghichu]) VALUES (70, 6, 1, NULL)
INSERT [dbo].[ChiTietMau] ([MachitietMau], [Mamau], [Magiay], [Ghichu]) VALUES (71, 3, 1, NULL)
INSERT [dbo].[ChiTietMau] ([MachitietMau], [Mamau], [Magiay], [Ghichu]) VALUES (72, 4, 1, NULL)
INSERT [dbo].[ChiTietMau] ([MachitietMau], [Mamau], [Magiay], [Ghichu]) VALUES (73, 7, 6, NULL)
INSERT [dbo].[ChiTietMau] ([MachitietMau], [Mamau], [Magiay], [Ghichu]) VALUES (74, 6, 7, NULL)
INSERT [dbo].[ChiTietMau] ([MachitietMau], [Mamau], [Magiay], [Ghichu]) VALUES (75, 6, 10, NULL)
INSERT [dbo].[ChiTietMau] ([MachitietMau], [Mamau], [Magiay], [Ghichu]) VALUES (76, 3, NULL, NULL)
INSERT [dbo].[ChiTietMau] ([MachitietMau], [Mamau], [Magiay], [Ghichu]) VALUES (77, 7, NULL, NULL)
INSERT [dbo].[ChiTietMau] ([MachitietMau], [Mamau], [Magiay], [Ghichu]) VALUES (78, 5, 1, NULL)
INSERT [dbo].[ChiTietMau] ([MachitietMau], [Mamau], [Magiay], [Ghichu]) VALUES (79, 7, 9, NULL)
SET IDENTITY_INSERT [dbo].[ChiTietMau] OFF
SET IDENTITY_INSERT [dbo].[ChiTietSize] ON 

INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (1, 9, 1, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (2, 9, 2, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (3, 10, 1, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (4, 9, 3, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (5, 9, 4, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (6, 9, 5, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (7, 9, 6, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (8, 9, 8, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (10, 4, 10, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (11, 4, 11, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (12, 4, 15, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (13, 9, 7, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (14, 10, 2, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (15, 10, 7, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (16, 11, 1, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (17, 12, 1, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (18, 13, 1, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (20, 11, 2, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (21, 12, 2, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (22, 13, 2, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (23, 10, 3, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (24, 11, 3, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (25, 12, 3, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (26, 10, 4, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (27, 11, 4, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (28, 12, 4, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (29, 10, 5, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (30, 11, 5, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (31, 12, 5, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (32, 10, 6, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (33, 11, 6, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (34, 12, 6, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (35, 11, 7, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (36, 10, 8, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (37, 11, 8, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (38, 5, 9, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (39, 6, 9, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (40, 5, 10, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (41, 6, 10, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (42, 4, 11, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (43, 5, 11, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (44, 6, 11, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (45, 5, 12, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (46, 6, 12, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (47, 7, 12, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (48, 4, 13, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (49, 6, 13, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (50, 7, 14, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (51, 4, 14, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (52, 5, 14, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (53, 4, 15, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (54, 5, 15, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (55, 6, 15, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (56, 5, 16, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (57, 6, 16, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (58, 7, 16, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (59, 1, 17, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (60, 2, 17, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (61, 3, 17, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (62, 1, 18, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (63, 2, 18, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (64, 3, 18, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (65, 1, 19, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (66, 2, 19, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (67, 3, 19, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (68, 1, 20, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (69, 2, 20, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (70, 3, 20, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (71, 1, 21, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (72, 2, 21, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (73, 3, 21, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (74, 1, 22, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (75, 2, 22, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (76, 3, 22, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (77, 1, 23, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (78, 2, 23, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (79, 3, 23, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (80, 1, 24, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (81, 2, 24, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (82, 3, 24, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (84, 7, 9, NULL)
INSERT [dbo].[ChiTietSize] ([MachitietSize], [Masize], [Magiay], [Ghichu]) VALUES (85, 13, 5, NULL)
SET IDENTITY_INSERT [dbo].[ChiTietSize] OFF
SET IDENTITY_INSERT [dbo].[DonHang] ON 

INSERT [dbo].[DonHang] ([Madh], [Tenkh], [Email], [Sdt], [Diachi], [Ngaydat], [Ngaygiao], [Tinhtranggh], [Dathanhtoan], [Ghichu]) VALUES (1, N'Chu Hải Đăng', N'dangchu.itvn@gmail.com', N'0961590436', N'236 Hoàng Quốc Việt', CAST(N'2019-05-22 21:33:22.000' AS DateTime), CAST(N'2019-05-26 00:00:00.000' AS DateTime), N'Đang xử lý', N'Chưa thanh toán', NULL)
INSERT [dbo].[DonHang] ([Madh], [Tenkh], [Email], [Sdt], [Diachi], [Ngaydat], [Ngaygiao], [Tinhtranggh], [Dathanhtoan], [Ghichu]) VALUES (2, N'Nguyễn Thanh Tùng ', N'dangchu.itvn@gmail.com', N'0987654321', N'195 Trần Cung', CAST(N'2019-05-22 22:16:59.987' AS DateTime), CAST(N'2019-05-26 22:16:59.987' AS DateTime), N'Đang xử lý', N'Đã thanh toán', N'')
INSERT [dbo].[DonHang] ([Madh], [Tenkh], [Email], [Sdt], [Diachi], [Ngaydat], [Ngaygiao], [Tinhtranggh], [Dathanhtoan], [Ghichu]) VALUES (3, N'Vũ Hải Hậu', N'dangchu.itvn@gmail.com', N'0987654321', N'195 Trần Cung', CAST(N'2019-05-22 22:38:32.353' AS DateTime), CAST(N'2019-05-26 22:38:32.353' AS DateTime), N'Đang xử lý', N'Đã thanh toán', N'')
INSERT [dbo].[DonHang] ([Madh], [Tenkh], [Email], [Sdt], [Diachi], [Ngaydat], [Ngaygiao], [Tinhtranggh], [Dathanhtoan], [Ghichu]) VALUES (4, N'Vũ Hải Hậu', N'dangchu.itvn@gmail.com', N'0987654321', N'sa', CAST(N'2019-05-22 23:20:15.163' AS DateTime), CAST(N'2019-05-26 23:20:15.163' AS DateTime), N'Đang xử lý', N'Đã thanh toán', N'')
SET IDENTITY_INSERT [dbo].[DonHang] OFF
SET IDENTITY_INSERT [dbo].[Giay] ON 

INSERT [dbo].[Giay] ([Magiay], [Manhacc], [Manhasx], [Maloaigiay], [Tengiay], [Soluongton], [Giaban], [Hinhanh], [Mota]) VALUES (1, NULL, 2, 1, N'Giày  Adidas Ultra Boost ST S80616 1', NULL, 500000, N'giay_1.png', N' Giày  Adidas Ultra Boost ST S80616 1. Mẫu giày hot nhất 2019, là mẫu giày đáng mua nhất 2019, giá cả hợp lý, bảo hành chính hãng 1 đổi 1 trong 30 ngày, bảo hành 1 năm. Mang đến cho bạn sự thoải mái khi di chuyển, vận động mạnh, tạo cảm giác thoải mái nhất cho bạn, là sự lựa chọn hợp lý là lý tưởng bạn không thẻ bỏ qua.')
INSERT [dbo].[Giay] ([Magiay], [Manhacc], [Manhasx], [Maloaigiay], [Tengiay], [Soluongton], [Giaban], [Hinhanh], [Mota]) VALUES (2, NULL, 2, 1, N'Giày Adidas Pure Boost X CP8886', NULL, 600000, N'giay_2.jpg', N'Giày Adidas Pure Boost X CP8886. Mẫu giày hot nhất 2019, là mẫu giày đáng mua nhất 2019, giá cả hợp lý, bảo hành chính hãng 1 đổi 1 trong 30 ngày, bảo hành 1 năm. Mang đến cho bạn sự thoải mái khi di chuyển, vận động mạnh, tạo cảm giác thoải mái nhất cho bạn, là sự lựa chọn hợp lý là lý tưởng bạn không thẻ bỏ qua.')
INSERT [dbo].[Giay] ([Magiay], [Manhacc], [Manhasx], [Maloaigiay], [Tengiay], [Soluongton], [Giaban], [Hinhanh], [Mota]) VALUES (3, NULL, 2, 1, N'Giày Adidas EQTCQ2396', NULL, 700000, N'giay_3.jpg', N'Giày Adidas EQTCQ2396. Mẫu giày hot nhất 2019, là mẫu giày đáng mua nhất 2019, giá cả hợp lý, bảo hành chính hãng 1 đổi 1 trong 30 ngày, bảo hành 1 năm. Mang đến cho bạn sự thoải mái khi di chuyển, vận động mạnh, tạo cảm giác thoải mái nhất cho bạn, là sự lựa chọn hợp lý là lý tưởng bạn không thẻ bỏ qua.')
INSERT [dbo].[Giay] ([Magiay], [Manhacc], [Manhasx], [Maloaigiay], [Tengiay], [Soluongton], [Giaban], [Hinhanh], [Mota]) VALUES (4, NULL, 2, 1, N'Giày Adidas Ultra Boost X', NULL, 800000, N'giay_4.jpg', N'Giày Adidas Ultra Boost X. Mẫu giày hot nhất 2019, là mẫu giày đáng mua nhất 2019, giá cả hợp lý, bảo hành chính hãng 1 đổi 1 trong 30 ngày, bảo hành 1 năm. Mang đến cho bạn sự thoải mái khi di chuyển, vận động mạnh, tạo cảm giác thoải mái nhất cho bạn, là sự lựa chọn hợp lý là lý tưởng bạn không thẻ bỏ qua.')
INSERT [dbo].[Giay] ([Magiay], [Manhacc], [Manhasx], [Maloaigiay], [Tengiay], [Soluongton], [Giaban], [Hinhanh], [Mota]) VALUES (5, NULL, 2, 1, N'Giày Adidas Adizero X Stella', NULL, 750000, N'giay_5.jpg', N'Giày Adidas Adizero X Stella. Mẫu giày hot nhất 2019, là mẫu giày đáng mua nhất 2019, giá cả hợp lý, bảo hành chính hãng 1 đổi 1 trong 30 ngày, bảo hành 1 năm. Mang đến cho bạn sự thoải mái khi di chuyển, vận động mạnh, tạo cảm giác thoải mái nhất cho bạn, là sự lựa chọn hợp lý là lý tưởng bạn không thẻ bỏ qua.')
INSERT [dbo].[Giay] ([Magiay], [Manhacc], [Manhasx], [Maloaigiay], [Tengiay], [Soluongton], [Giaban], [Hinhanh], [Mota]) VALUES (6, NULL, 4, 1, N'Giày Bitis Hunter X 2018', NULL, 625000, N'giay_6.jpg', N'Giày Bitis Hunter X 2018. Mẫu giày hot nhất 2019, là mẫu giày đáng mua nhất 2019, giá cả hợp lý, bảo hành chính hãng 1 đổi 1 trong 30 ngày, bảo hành 1 năm. Mang đến cho bạn sự thoải mái khi di chuyển, vận động mạnh, tạo cảm giác thoải mái nhất cho bạn, là sự lựa chọn hợp lý là lý tưởng bạn không thẻ bỏ qua.')
INSERT [dbo].[Giay] ([Magiay], [Manhacc], [Manhasx], [Maloaigiay], [Tengiay], [Soluongton], [Giaban], [Hinhanh], [Mota]) VALUES (7, NULL, 4, 1, N'Giày Bitis Hunter Feast', NULL, 400000, N'giay_7.jpg', N'Giày Bitis Hunter Feast. Mẫu giày hot nhất 2019, là mẫu giày đáng mua nhất 2019, giá cả hợp lý, bảo hành chính hãng 1 đổi 1 trong 30 ngày, bảo hành 1 năm. Mang đến cho bạn sự thoải mái khi di chuyển, vận động mạnh, tạo cảm giác thoải mái nhất cho bạn, là sự lựa chọn hợp lý là lý tưởng bạn không thẻ bỏ qua.')
INSERT [dbo].[Giay] ([Magiay], [Manhacc], [Manhasx], [Maloaigiay], [Tengiay], [Soluongton], [Giaban], [Hinhanh], [Mota]) VALUES (8, NULL, 4, 1, N'Giày Bitis Hunter DSMH00601', NULL, 550000, N'giay_8.jpg', N'Giày Bitis Hunter DSMH00601. Mẫu giày hot nhất 2019, là mẫu giày đáng mua nhất 2019, giá cả hợp lý, bảo hành chính hãng 1 đổi 1 trong 30 ngày, bảo hành 1 năm. Mang đến cho bạn sự thoải mái khi di chuyển, vận động mạnh, tạo cảm giác thoải mái nhất cho bạn, là sự lựa chọn hợp lý là lý tưởng bạn không thẻ bỏ qua.')
INSERT [dbo].[Giay] ([Magiay], [Manhacc], [Manhasx], [Maloaigiay], [Tengiay], [Soluongton], [Giaban], [Hinhanh], [Mota]) VALUES (9, NULL, 4, 2, N'Giày Bitis Hunter DSWH01000', NULL, 900000, N'giay_9.jpg', N'Giày Bitis Hunter DSWH01000. Mẫu giày hot nhất 2019, là mẫu giày đáng mua nhất 2019, giá cả hợp lý, bảo hành chính hãng 1 đổi 1 trong 30 ngày, bảo hành 1 năm. Mang đến cho bạn sự thoải mái khi di chuyển, vận động mạnh, tạo cảm giác thoải mái nhất cho bạn, là sự lựa chọn hợp lý là lý tưởng bạn không thẻ bỏ qua.')
INSERT [dbo].[Giay] ([Magiay], [Manhacc], [Manhasx], [Maloaigiay], [Tengiay], [Soluongton], [Giaban], [Hinhanh], [Mota]) VALUES (10, NULL, 4, 2, N'Giày Bitis Hunter Originals', NULL, 2000000, N'giay_10.jpg', N'Giày Bitis Hunter Originals. Mẫu giày hot nhất 2019, là mẫu giày đáng mua nhất 2019, giá cả hợp lý, bảo hành chính hãng 1 đổi 1 trong 30 ngày, bảo hành 1 năm. Mang đến cho bạn sự thoải mái khi di chuyển, vận động mạnh, tạo cảm giác thoải mái nhất cho bạn, là sự lựa chọn hợp lý là lý tưởng bạn không thẻ bỏ qua.')
INSERT [dbo].[Giay] ([Magiay], [Manhacc], [Manhasx], [Maloaigiay], [Tengiay], [Soluongton], [Giaban], [Hinhanh], [Mota]) VALUES (11, NULL, 1, 2, N'Giày Nike Epic React Flyknit', NULL, 1150000, N'giay_11.jpg', N'Giày Nike Epic React Flyknit. Mẫu giày hot nhất 2019, là mẫu giày đáng mua nhất 2019, giá cả hợp lý, bảo hành chính hãng 1 đổi 1 trong 30 ngày, bảo hành 1 năm. Mang đến cho bạn sự thoải mái khi di chuyển, vận động mạnh, tạo cảm giác thoải mái nhất cho bạn, là sự lựa chọn hợp lý là lý tưởng bạn không thẻ bỏ qua.')
INSERT [dbo].[Giay] ([Magiay], [Manhacc], [Manhasx], [Maloaigiay], [Tengiay], [Soluongton], [Giaban], [Hinhanh], [Mota]) VALUES (12, NULL, 1, 2, N'Giày Nike Roshe Run 511881', NULL, 2500000, N'giay_12.jpg', N'Giày Nike Roshe Run 511881. Mẫu giày hot nhất 2019, là mẫu giày đáng mua nhất 2019, giá cả hợp lý, bảo hành chính hãng 1 đổi 1 trong 30 ngày, bảo hành 1 năm. Mang đến cho bạn sự thoải mái khi di chuyển, vận động mạnh, tạo cảm giác thoải mái nhất cho bạn, là sự lựa chọn hợp lý là lý tưởng bạn không thẻ bỏ qua.')
INSERT [dbo].[Giay] ([Magiay], [Manhacc], [Manhasx], [Maloaigiay], [Tengiay], [Soluongton], [Giaban], [Hinhanh], [Mota]) VALUES (13, NULL, 1, 2, N'Giày NIKE CAO CẤP KV281', NULL, 1490000, N'giay_13.jpg', N'Giày NIKE CAO CẤP KV281. Mẫu giày hot nhất 2019, là mẫu giày đáng mua nhất 2019, giá cả hợp lý, bảo hành chính hãng 1 đổi 1 trong 30 ngày, bảo hành 1 năm. Mang đến cho bạn sự thoải mái khi di chuyển, vận động mạnh, tạo cảm giác thoải mái nhất cho bạn, là sự lựa chọn hợp lý là lý tưởng bạn không thẻ bỏ qua.')
INSERT [dbo].[Giay] ([Magiay], [Manhacc], [Manhasx], [Maloaigiay], [Tengiay], [Soluongton], [Giaban], [Hinhanh], [Mota]) VALUES (14, NULL, 1, 2, N'Giày Nike  KV391', NULL, 999000, N'giay_14.jpg', N'Giày Nike  KV391. Mẫu giày hot nhất 2019, là mẫu giày đáng mua nhất 2019, giá cả hợp lý, bảo hành chính hãng 1 đổi 1 trong 30 ngày, bảo hành 1 năm. Mang đến cho bạn sự thoải mái khi di chuyển, vận động mạnh, tạo cảm giác thoải mái nhất cho bạn, là sự lựa chọn hợp lý là lý tưởng bạn không thẻ bỏ qua.')
INSERT [dbo].[Giay] ([Magiay], [Manhacc], [Manhasx], [Maloaigiay], [Tengiay], [Soluongton], [Giaban], [Hinhanh], [Mota]) VALUES (15, NULL, 1, 2, N'Giày Nike KV399', NULL, 890000, N'giay_15.jpg', N'Giày Nike KV399. Mẫu giày hot nhất 2019, là mẫu giày đáng mua nhất 2019, giá cả hợp lý, bảo hành chính hãng 1 đổi 1 trong 30 ngày, bảo hành 1 năm. Mang đến cho bạn sự thoải mái khi di chuyển, vận động mạnh, tạo cảm giác thoải mái nhất cho bạn, là sự lựa chọn hợp lý là lý tưởng bạn không thẻ bỏ qua.')
INSERT [dbo].[Giay] ([Magiay], [Manhacc], [Manhasx], [Maloaigiay], [Tengiay], [Soluongton], [Giaban], [Hinhanh], [Mota]) VALUES (16, NULL, 6, 2, N'Giày Sneaker SN391', NULL, 399000, N'giay_16.jpg', N'Giày Sneaker SN391. Mẫu giày hot nhất 2019, là mẫu giày đáng mua nhất 2019, giá cả hợp lý, bảo hành chính hãng 1 đổi 1 trong 30 ngày, bảo hành 1 năm. Mang đến cho bạn sự thoải mái khi di chuyển, vận động mạnh, tạo cảm giác thoải mái nhất cho bạn, là sự lựa chọn hợp lý là lý tưởng bạn không thẻ bỏ qua.')
INSERT [dbo].[Giay] ([Magiay], [Manhacc], [Manhasx], [Maloaigiay], [Tengiay], [Soluongton], [Giaban], [Hinhanh], [Mota]) VALUES (17, NULL, 6, 3, N'Giày Sneaker SC142', NULL, 299000, N'giay_17.jpg', N'Giày Sneaker SC142. Mẫu giày hot nhất 2019, là mẫu giày đáng mua nhất 2019, giá cả hợp lý, bảo hành chính hãng 1 đổi 1 trong 30 ngày, bảo hành 1 năm. Mang đến cho bạn sự thoải mái khi di chuyển, vận động mạnh, tạo cảm giác thoải mái nhất cho bạn, là sự lựa chọn hợp lý là lý tưởng bạn không thẻ bỏ qua.')
INSERT [dbo].[Giay] ([Magiay], [Manhacc], [Manhasx], [Maloaigiay], [Tengiay], [Soluongton], [Giaban], [Hinhanh], [Mota]) VALUES (18, NULL, 6, 3, N'Giày Sneaker SC149', NULL, 289000, N'giay_18.jpg', N'Giày Sneaker SC149. Mẫu giày hot nhất 2019, là mẫu giày đáng mua nhất 2019, giá cả hợp lý, bảo hành chính hãng 1 đổi 1 trong 30 ngày, bảo hành 1 năm. Mang đến cho bạn sự thoải mái khi di chuyển, vận động mạnh, tạo cảm giác thoải mái nhất cho bạn, là sự lựa chọn hợp lý là lý tưởng bạn không thẻ bỏ qua.')
INSERT [dbo].[Giay] ([Magiay], [Manhacc], [Manhasx], [Maloaigiay], [Tengiay], [Soluongton], [Giaban], [Hinhanh], [Mota]) VALUES (19, NULL, 6, 3, N'Giày Sneaker SC148', NULL, 259000, N'giay_19.jpg', N'Giày Sneaker SC148. Mẫu giày hot nhất 2019, là mẫu giày đáng mua nhất 2019, giá cả hợp lý, bảo hành chính hãng 1 đổi 1 trong 30 ngày, bảo hành 1 năm. Mang đến cho bạn sự thoải mái khi di chuyển, vận động mạnh, tạo cảm giác thoải mái nhất cho bạn, là sự lựa chọn hợp lý là lý tưởng bạn không thẻ bỏ qua.')
INSERT [dbo].[Giay] ([Magiay], [Manhacc], [Manhasx], [Maloaigiay], [Tengiay], [Soluongton], [Giaban], [Hinhanh], [Mota]) VALUES (20, NULL, 6, 3, N'Giày Sneaker SC216', NULL, 199000, N'giay_20.jpg', N'Giày Sneaker SC216. Mẫu giày hot nhất 2019, là mẫu giày đáng mua nhất 2019, giá cả hợp lý, bảo hành chính hãng 1 đổi 1 trong 30 ngày, bảo hành 1 năm. Mang đến cho bạn sự thoải mái khi di chuyển, vận động mạnh, tạo cảm giác thoải mái nhất cho bạn, là sự lựa chọn hợp lý là lý tưởng bạn không thẻ bỏ qua.')
INSERT [dbo].[Giay] ([Magiay], [Manhacc], [Manhasx], [Maloaigiay], [Tengiay], [Soluongton], [Giaban], [Hinhanh], [Mota]) VALUES (21, NULL, 3, 3, N'Giày Convert CC393', NULL, 419000, N'giay_21.jpg', N'Giày Convert CC393. Mẫu giày hot nhất 2019, là mẫu giày đáng mua nhất 2019, giá cả hợp lý, bảo hành chính hãng 1 đổi 1 trong 30 ngày, bảo hành 1 năm. Mang đến cho bạn sự thoải mái khi di chuyển, vận động mạnh, tạo cảm giác thoải mái nhất cho bạn, là sự lựa chọn hợp lý là lý tưởng bạn không thẻ bỏ qua.')
INSERT [dbo].[Giay] ([Magiay], [Manhacc], [Manhasx], [Maloaigiay], [Tengiay], [Soluongton], [Giaban], [Hinhanh], [Mota]) VALUES (22, NULL, 6, 3, N'Giày Sneaker SC146', NULL, 269000, N'giay_22.jpg', N'Giày Sneaker SC146. Mẫu giày hot nhất 2019, là mẫu giày đáng mua nhất 2019, giá cả hợp lý, bảo hành chính hãng 1 đổi 1 trong 30 ngày, bảo hành 1 năm. Mang đến cho bạn sự thoải mái khi di chuyển, vận động mạnh, tạo cảm giác thoải mái nhất cho bạn, là sự lựa chọn hợp lý là lý tưởng bạn không thẻ bỏ qua.')
INSERT [dbo].[Giay] ([Magiay], [Manhacc], [Manhasx], [Maloaigiay], [Tengiay], [Soluongton], [Giaban], [Hinhanh], [Mota]) VALUES (23, NULL, 2, 3, N'Giày Adidas AC237', NULL, 339000, N'giay_23.jpg', N'Giày Adidas AC237. Mẫu giày hot nhất 2019, là mẫu giày đáng mua nhất 2019, giá cả hợp lý, bảo hành chính hãng 1 đổi 1 trong 30 ngày, bảo hành 1 năm. Mang đến cho bạn sự thoải mái khi di chuyển, vận động mạnh, tạo cảm giác thoải mái nhất cho bạn, là sự lựa chọn hợp lý là lý tưởng bạn không thẻ bỏ qua.')
INSERT [dbo].[Giay] ([Magiay], [Manhacc], [Manhasx], [Maloaigiay], [Tengiay], [Soluongton], [Giaban], [Hinhanh], [Mota]) VALUES (24, NULL, 2, 3, N'Giày Adidas AC249', NULL, 169000, N'giay_24.jpg', N'Giày Adidas AC249. Mẫu giày hot nhất 2019, là mẫu giày đáng mua nhất 2019, giá cả hợp lý, bảo hành chính hãng 1 đổi 1 trong 30 ngày, bảo hành 1 năm. Mang đến cho bạn sự thoải mái khi di chuyển, vận động mạnh, tạo cảm giác thoải mái nhất cho bạn, là sự lựa chọn hợp lý là lý tưởng bạn không thẻ bỏ qua.')
SET IDENTITY_INSERT [dbo].[Giay] OFF
SET IDENTITY_INSERT [dbo].[LoaiGiay] ON 

INSERT [dbo].[LoaiGiay] ([Maloaigiay], [Tenloaigiay]) VALUES (1, N'Nam')
INSERT [dbo].[LoaiGiay] ([Maloaigiay], [Tenloaigiay]) VALUES (2, N'Nữ')
INSERT [dbo].[LoaiGiay] ([Maloaigiay], [Tenloaigiay]) VALUES (3, N'Trẻ em')
SET IDENTITY_INSERT [dbo].[LoaiGiay] OFF
SET IDENTITY_INSERT [dbo].[Mau] ON 

INSERT [dbo].[Mau] ([Mamau], [Tenmau]) VALUES (1, N'Xanh')
INSERT [dbo].[Mau] ([Mamau], [Tenmau]) VALUES (2, N'Đỏ')
INSERT [dbo].[Mau] ([Mamau], [Tenmau]) VALUES (3, N'Tím')
INSERT [dbo].[Mau] ([Mamau], [Tenmau]) VALUES (4, N'Vàng')
INSERT [dbo].[Mau] ([Mamau], [Tenmau]) VALUES (5, N'Nâu')
INSERT [dbo].[Mau] ([Mamau], [Tenmau]) VALUES (6, N'Đen')
INSERT [dbo].[Mau] ([Mamau], [Tenmau]) VALUES (7, N'Trắng')
SET IDENTITY_INSERT [dbo].[Mau] OFF
SET IDENTITY_INSERT [dbo].[NhaCungCap] ON 

INSERT [dbo].[NhaCungCap] ([Manhacc], [Tennhacc], [Diachi], [Sdt], [Website]) VALUES (1, N'Chợ Đen', N'Hà Nội, Việt Nam', N'0943578234', NULL)
INSERT [dbo].[NhaCungCap] ([Manhacc], [Tennhacc], [Diachi], [Sdt], [Website]) VALUES (2, N'Công ty TNHH Bitis VN', N'Hà Nội, Việt Nam', N'0943578234', N'bitis.com.vn')
INSERT [dbo].[NhaCungCap] ([Manhacc], [Tennhacc], [Diachi], [Sdt], [Website]) VALUES (3, N'Công ty TNHH Adidas VN', N'Hà Nội, Việt Nam', N'0943514234', N'adidas.com.vn')
INSERT [dbo].[NhaCungCap] ([Manhacc], [Tennhacc], [Diachi], [Sdt], [Website]) VALUES (4, N'Công ty TNHH Nike VN', N'Hà Nội, Việt Nam', N'0943128234', N'nike.com.vn')
INSERT [dbo].[NhaCungCap] ([Manhacc], [Tennhacc], [Diachi], [Sdt], [Website]) VALUES (5, N'Công ty TNHH Convert VN', N'Hà Nội, Việt Nam', N'0943579834', N'nike.com.vn')
SET IDENTITY_INSERT [dbo].[NhaCungCap] OFF
SET IDENTITY_INSERT [dbo].[NhaSanXuat] ON 

INSERT [dbo].[NhaSanXuat] ([Manhasx], [Tennhasx], [Diachi], [Sdt], [Website]) VALUES (1, N'Nike', N'Los Angerles', N'0987654321', N'nike.com')
INSERT [dbo].[NhaSanXuat] ([Manhasx], [Tennhasx], [Diachi], [Sdt], [Website]) VALUES (2, N'Adidas', N'Paris', N'0987654321', N'adidas.com')
INSERT [dbo].[NhaSanXuat] ([Manhasx], [Tennhasx], [Diachi], [Sdt], [Website]) VALUES (3, N'Convert', N'Moscow', N'0987654321', N'convert.com')
INSERT [dbo].[NhaSanXuat] ([Manhasx], [Tennhasx], [Diachi], [Sdt], [Website]) VALUES (4, N'Bitis', N'Việt Nam', N'0987654321', N'bitis.com.vn')
INSERT [dbo].[NhaSanXuat] ([Manhasx], [Tennhasx], [Diachi], [Sdt], [Website]) VALUES (5, N'Không', N'Việt Nam', NULL, NULL)
INSERT [dbo].[NhaSanXuat] ([Manhasx], [Tennhasx], [Diachi], [Sdt], [Website]) VALUES (6, N'Sneaker', N'Việt Nam', N'0987654123', N'sneaker.com')
SET IDENTITY_INSERT [dbo].[NhaSanXuat] OFF
SET IDENTITY_INSERT [dbo].[Size] ON 

INSERT [dbo].[Size] ([Masize], [Sosize]) VALUES (1, 14)
INSERT [dbo].[Size] ([Masize], [Sosize]) VALUES (2, 15)
INSERT [dbo].[Size] ([Masize], [Sosize]) VALUES (3, 16)
INSERT [dbo].[Size] ([Masize], [Sosize]) VALUES (4, 34)
INSERT [dbo].[Size] ([Masize], [Sosize]) VALUES (5, 35)
INSERT [dbo].[Size] ([Masize], [Sosize]) VALUES (6, 36)
INSERT [dbo].[Size] ([Masize], [Sosize]) VALUES (7, 37)
INSERT [dbo].[Size] ([Masize], [Sosize]) VALUES (8, 38)
INSERT [dbo].[Size] ([Masize], [Sosize]) VALUES (9, 39)
INSERT [dbo].[Size] ([Masize], [Sosize]) VALUES (10, 40)
INSERT [dbo].[Size] ([Masize], [Sosize]) VALUES (11, 41)
INSERT [dbo].[Size] ([Masize], [Sosize]) VALUES (12, 42)
INSERT [dbo].[Size] ([Masize], [Sosize]) VALUES (13, 43)
INSERT [dbo].[Size] ([Masize], [Sosize]) VALUES (14, 44)
SET IDENTITY_INSERT [dbo].[Size] OFF
SET IDENTITY_INSERT [dbo].[TaiKhoan] ON 

INSERT [dbo].[TaiKhoan] ([Matk], [Tentk], [Matkhau]) VALUES (1, N'dang98', N'dang')
SET IDENTITY_INSERT [dbo].[TaiKhoan] OFF
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD FOREIGN KEY([Magiay])
REFERENCES [dbo].[Giay] ([Magiay])
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD FOREIGN KEY([Madh])
REFERENCES [dbo].[DonHang] ([Madh])
GO
ALTER TABLE [dbo].[ChiTietMau]  WITH CHECK ADD FOREIGN KEY([Magiay])
REFERENCES [dbo].[Giay] ([Magiay])
GO
ALTER TABLE [dbo].[ChiTietMau]  WITH CHECK ADD FOREIGN KEY([Mamau])
REFERENCES [dbo].[Mau] ([Mamau])
GO
ALTER TABLE [dbo].[ChiTietSize]  WITH CHECK ADD FOREIGN KEY([Magiay])
REFERENCES [dbo].[Giay] ([Magiay])
GO
ALTER TABLE [dbo].[ChiTietSize]  WITH CHECK ADD FOREIGN KEY([Masize])
REFERENCES [dbo].[Size] ([Masize])
GO
ALTER TABLE [dbo].[Giay]  WITH CHECK ADD FOREIGN KEY([Maloaigiay])
REFERENCES [dbo].[LoaiGiay] ([Maloaigiay])
GO
ALTER TABLE [dbo].[Giay]  WITH CHECK ADD FOREIGN KEY([Manhacc])
REFERENCES [dbo].[NhaCungCap] ([Manhacc])
GO
ALTER TABLE [dbo].[Giay]  WITH CHECK ADD FOREIGN KEY([Manhasx])
REFERENCES [dbo].[NhaSanXuat] ([Manhasx])
GO
USE [master]
GO
ALTER DATABASE [WebBanGiay] SET  READ_WRITE 
GO
