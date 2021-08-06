USE [master]
GO
/****** Object:  Database [HiuTech]    Script Date: 30-Thg7-20 6:30:11 PM ******/
CREATE DATABASE [HiuTech]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HiuTech', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\HiuTech.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HiuTech_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\HiuTech_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [HiuTech] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HiuTech].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HiuTech] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HiuTech] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HiuTech] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HiuTech] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HiuTech] SET ARITHABORT OFF 
GO
ALTER DATABASE [HiuTech] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HiuTech] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HiuTech] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HiuTech] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HiuTech] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HiuTech] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HiuTech] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HiuTech] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HiuTech] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HiuTech] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HiuTech] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HiuTech] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HiuTech] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HiuTech] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HiuTech] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HiuTech] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HiuTech] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HiuTech] SET RECOVERY FULL 
GO
ALTER DATABASE [HiuTech] SET  MULTI_USER 
GO
ALTER DATABASE [HiuTech] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HiuTech] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HiuTech] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HiuTech] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [HiuTech] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'HiuTech', N'ON'
GO
ALTER DATABASE [HiuTech] SET QUERY_STORE = OFF
GO
USE [HiuTech]
GO
/****** Object:  Table [dbo].[ChiTietSanPham]    Script Date: 30-Thg7-20 6:30:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietSanPham](
	[IDSanPham] [varchar](50) NOT NULL,
	[TenSanPham] [nvarchar](50) NULL,
	[Mausac] [nvarchar](50) NULL,
	[Xuatxu] [nvarchar](50) NULL,
	[LED] [nvarchar](50) NULL,
	[Hinh] [image] NULL,
 CONSTRAINT [PK_ChiTietSanPham] PRIMARY KEY CLUSTERED 
(
	[IDSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTHD]    Script Date: 30-Thg7-20 6:30:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTHD](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDHoadon] [int] NULL,
	[IDSanPham] [varchar](50) NULL,
	[Gia] [bigint] NULL,
	[Soluong] [int] NULL,
	[Total] [bigint] NULL,
 CONSTRAINT [PK_CTHD] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hoadon]    Script Date: 30-Thg7-20 6:30:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hoadon](
	[IDHoadon] [int] IDENTITY(1,1) NOT NULL,
	[Ngay] [varchar](255) NULL,
	[Total] [bigint] NULL,
	[Tienkhachtra] [int] NULL,
	[Tienthoi] [bigint] NULL,
	[IDKH] [varchar](50) NULL,
 CONSTRAINT [PK_Hoadon] PRIMARY KEY CLUSTERED 
(
	[IDHoadon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang1]    Script Date: 30-Thg7-20 6:30:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang1](
	[IDKH] [varchar](50) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[SDT] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
 CONSTRAINT [PK_KhachHang1] PRIMARY KEY CLUSTERED 
(
	[IDKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSanpham]    Script Date: 30-Thg7-20 6:30:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanpham](
	[IDLoai] [varchar](50) NOT NULL,
	[TenLoai] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiSanpham] PRIMARY KEY CLUSTERED 
(
	[IDLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nguoidung]    Script Date: 30-Thg7-20 6:30:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nguoidung](
	[TaiKhoan] [varchar](50) NOT NULL,
	[MatKhau] [varchar](50) NULL,
	[HoTen] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](50) NULL,
	[Phone] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Chucvu] [varchar](50) NULL,
	[luong] [int] NULL,
	[IDNhanVien] [varchar](50) NULL,
	[Hinh] [image] NULL,
 CONSTRAINT [PK_Nguoidung] PRIMARY KEY CLUSTERED 
(
	[TaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 30-Thg7-20 6:30:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[IDRole] [varchar](50) NOT NULL,
	[TenRole] [nvarchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[IDRole] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sanpham]    Script Date: 30-Thg7-20 6:30:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sanpham](
	[IDSanPham] [varchar](50) NOT NULL,
	[TenSanPham] [nvarchar](50) NULL,
	[IDLoai] [varchar](50) NULL,
	[Gia] [bigint] NULL,
	[Brand] [nvarchar](50) NULL,
	[Soluong] [int] NULL,
	[Hinh] [image] NULL,
 CONSTRAINT [PK_Sanpham] PRIMARY KEY CLUSTERED 
(
	[IDSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[CTHD]  WITH CHECK ADD  CONSTRAINT [FK_CTHD_Hoadon] FOREIGN KEY([IDHoadon])
REFERENCES [dbo].[Hoadon] ([IDHoadon])
GO
ALTER TABLE [dbo].[CTHD] CHECK CONSTRAINT [FK_CTHD_Hoadon]
GO
ALTER TABLE [dbo].[Hoadon]  WITH CHECK ADD  CONSTRAINT [FK_Hoadon_KhachHang1] FOREIGN KEY([IDKH])
REFERENCES [dbo].[KhachHang1] ([IDKH])
GO
ALTER TABLE [dbo].[Hoadon] CHECK CONSTRAINT [FK_Hoadon_KhachHang1]
GO
ALTER TABLE [dbo].[Nguoidung]  WITH CHECK ADD  CONSTRAINT [FK_Nguoidung_Role] FOREIGN KEY([Chucvu])
REFERENCES [dbo].[Role] ([IDRole])
GO
ALTER TABLE [dbo].[Nguoidung] CHECK CONSTRAINT [FK_Nguoidung_Role]
GO
ALTER TABLE [dbo].[Sanpham]  WITH CHECK ADD  CONSTRAINT [FK_Sanpham_LoaiSanpham] FOREIGN KEY([IDLoai])
REFERENCES [dbo].[LoaiSanpham] ([IDLoai])
GO
ALTER TABLE [dbo].[Sanpham] CHECK CONSTRAINT [FK_Sanpham_LoaiSanpham]
GO
USE [master]
GO
ALTER DATABASE [HiuTech] SET  READ_WRITE 
GO
