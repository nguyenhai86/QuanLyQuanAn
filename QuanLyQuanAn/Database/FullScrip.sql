USE [master]
GO
/****** Object:  Database [QLTiecQuanAn]    Script Date: 12/17/2021 6:15:07 PM ******/
CREATE DATABASE [QLTiecQuanAn]
GO

ALTER DATABASE [QLTiecQuanAn] SET RECOVERY FULL 
GO

USE [QLTiecQuanAn]
GO
/****** Object:  Table [dbo].[Ban]    Script Date: 12/17/2021 6:15:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ban](
	[MaBan] [int] IDENTITY(1,1) NOT NULL,
	[TenBan] [nvarchar](500) NOT NULL,
	[TrangThai] [bit] NULL DEFAULT ((1)),
PRIMARY KEY CLUSTERED 
(
	[MaBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CTHoaDon]    Script Date: 12/17/2021 6:15:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTHoaDon](
	[MaHD] [int] NOT NULL,
	[MaMon] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[ThanhTien] [decimal](18, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 12/17/2021 6:15:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [int] NOT NULL,
	[MaNV] [int] NOT NULL,
	[MaBan] [int] NOT NULL,
	[NgayLap] [datetime] NULL DEFAULT (getdate()),
	[TongTien] [decimal](18, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 12/17/2021 6:15:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](100) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [nchar](5) NOT NULL,
	[DiaChi] [nvarchar](500) NULL,
	[SDT] [char](15) NOT NULL,
	[TrangThai] [bit] NULL DEFAULT ((1)),
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoaiMonAn]    Script Date: 12/17/2021 6:15:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiMonAn](
	[MaLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](100) NOT NULL,
	[TrangThai] [bit] NULL DEFAULT ((1)),
PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Menu]    Script Date: 12/17/2021 6:15:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[MaBan] [int] NOT NULL,
	[MaMon] [int] NOT NULL,
	[TenMon] [nvarchar](50) NULL,
	[SoLuong] [int] NULL,
	[GiaBan] [decimal](18, 0) NULL,
	[ThanhTien] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBan] ASC,
	[MaMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MonAn]    Script Date: 12/17/2021 6:15:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonAn](
	[MaMon] [int] IDENTITY(1,1) NOT NULL,
	[TenMon] [nvarchar](100) NOT NULL,
	[GiaBan] [decimal](18, 0) NOT NULL,
	[MaLoai] [int] NOT NULL,
	[TrangThai] [bit] NULL DEFAULT ((1)),
PRIMARY KEY CLUSTERED 
(
	[MaMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 12/17/2021 6:15:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [int] IDENTITY(1,1) NOT NULL,
	[MaNhomNV] [int] NOT NULL,
	[TenDangNhap] [nvarchar](100) NOT NULL,
	[MatKhau] [nvarchar](100) NOT NULL,
	[HoTen] [nvarchar](100) NOT NULL,
	[GioiTinh] [nchar](5) NOT NULL,
	[NgaySinh] [date] NULL,
	[DiaChi] [nvarchar](500) NULL,
	[SDT] [char](15) NULL,
	[TrangThai] [bit] NULL DEFAULT ((1)),
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhomNhanVien]    Script Date: 12/17/2021 6:15:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhomNhanVien](
	[MaNhomNV] [int] IDENTITY(1,1) NOT NULL,
	[TenNhom] [nvarchar](100) NULL,
	[TrangThai] [bit] NULL DEFAULT ((1)),
PRIMARY KEY CLUSTERED 
(
	[MaNhomNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Ban] ON 

INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai]) VALUES (1, N'Bàn số 1', 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai]) VALUES (2, N'Bàn số 2', 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai]) VALUES (3, N'Bàn số 3', 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai]) VALUES (4, N'Bàn số 4', 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai]) VALUES (5, N'Bàn số 5', 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai]) VALUES (6, N'Bàn số 6', 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai]) VALUES (7, N'Bàn số 7', 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai]) VALUES (8, N'Bàn số 8', 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai]) VALUES (9, N'Bàn số 9', 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai]) VALUES (10, N'Bàn số 10', 1)
SET IDENTITY_INSERT [dbo].[Ban] OFF
INSERT [dbo].[CTHoaDon] ([MaHD], [MaMon], [SoLuong], [ThanhTien]) VALUES (1, 1, 1, CAST(30000 AS Decimal(18, 0)))
INSERT [dbo].[CTHoaDon] ([MaHD], [MaMon], [SoLuong], [ThanhTien]) VALUES (1, 6, 2, CAST(50000 AS Decimal(18, 0)))
INSERT [dbo].[CTHoaDon] ([MaHD], [MaMon], [SoLuong], [ThanhTien]) VALUES (2, 3, 1, CAST(30000 AS Decimal(18, 0)))
INSERT [dbo].[CTHoaDon] ([MaHD], [MaMon], [SoLuong], [ThanhTien]) VALUES (2, 14, 1, CAST(12000 AS Decimal(18, 0)))
INSERT [dbo].[CTHoaDon] ([MaHD], [MaMon], [SoLuong], [ThanhTien]) VALUES (3, 1, 1, CAST(30000 AS Decimal(18, 0)))
INSERT [dbo].[CTHoaDon] ([MaHD], [MaMon], [SoLuong], [ThanhTien]) VALUES (3, 2, 1, CAST(20000 AS Decimal(18, 0)))
INSERT [dbo].[CTHoaDon] ([MaHD], [MaMon], [SoLuong], [ThanhTien]) VALUES (3, 5, 1, CAST(30000 AS Decimal(18, 0)))
INSERT [dbo].[CTHoaDon] ([MaHD], [MaMon], [SoLuong], [ThanhTien]) VALUES (3, 9, 3, CAST(90000 AS Decimal(18, 0)))
INSERT [dbo].[CTHoaDon] ([MaHD], [MaMon], [SoLuong], [ThanhTien]) VALUES (4, 3, 3, CAST(36000 AS Decimal(18, 0)))
INSERT [dbo].[CTHoaDon] ([MaHD], [MaMon], [SoLuong], [ThanhTien]) VALUES (4, 10, 2, CAST(30000 AS Decimal(18, 0)))
INSERT [dbo].[CTHoaDon] ([MaHD], [MaMon], [SoLuong], [ThanhTien]) VALUES (5, 1, 2, CAST(60000 AS Decimal(18, 0)))
INSERT [dbo].[CTHoaDon] ([MaHD], [MaMon], [SoLuong], [ThanhTien]) VALUES (5, 6, 2, CAST(50000 AS Decimal(18, 0)))
INSERT [dbo].[CTHoaDon] ([MaHD], [MaMon], [SoLuong], [ThanhTien]) VALUES (5, 7, 1, CAST(20000 AS Decimal(18, 0)))
INSERT [dbo].[CTHoaDon] ([MaHD], [MaMon], [SoLuong], [ThanhTien]) VALUES (6, 12, 3, CAST(36000 AS Decimal(18, 0)))
INSERT [dbo].[CTHoaDon] ([MaHD], [MaMon], [SoLuong], [ThanhTien]) VALUES (6, 13, 3, CAST(36000 AS Decimal(18, 0)))
INSERT [dbo].[CTHoaDon] ([MaHD], [MaMon], [SoLuong], [ThanhTien]) VALUES (6, 14, 1, CAST(12000 AS Decimal(18, 0)))
INSERT [dbo].[CTHoaDon] ([MaHD], [MaMon], [SoLuong], [ThanhTien]) VALUES (7, 5, 2, CAST(60000 AS Decimal(18, 0)))
INSERT [dbo].[CTHoaDon] ([MaHD], [MaMon], [SoLuong], [ThanhTien]) VALUES (8, 5, 1, CAST(30000 AS Decimal(18, 0)))
INSERT [dbo].[CTHoaDon] ([MaHD], [MaMon], [SoLuong], [ThanhTien]) VALUES (9, 6, 2, CAST(50000 AS Decimal(18, 0)))
INSERT [dbo].[CTHoaDon] ([MaHD], [MaMon], [SoLuong], [ThanhTien]) VALUES (9, 8, 3, CAST(75000 AS Decimal(18, 0)))
INSERT [dbo].[CTHoaDon] ([MaHD], [MaMon], [SoLuong], [ThanhTien]) VALUES (10, 3, 1, CAST(30000 AS Decimal(18, 0)))
INSERT [dbo].[CTHoaDon] ([MaHD], [MaMon], [SoLuong], [ThanhTien]) VALUES (10, 10, 1, CAST(15000 AS Decimal(18, 0)))
INSERT [dbo].[CTHoaDon] ([MaHD], [MaMon], [SoLuong], [ThanhTien]) VALUES (11, 2, 1, CAST(20000 AS Decimal(18, 0)))
INSERT [dbo].[CTHoaDon] ([MaHD], [MaMon], [SoLuong], [ThanhTien]) VALUES (11, 4, 2, CAST(60000 AS Decimal(18, 0)))
INSERT [dbo].[CTHoaDon] ([MaHD], [MaMon], [SoLuong], [ThanhTien]) VALUES (11, 9, 1, CAST(30000 AS Decimal(18, 0)))
INSERT [dbo].[CTHoaDon] ([MaHD], [MaMon], [SoLuong], [ThanhTien]) VALUES (11, 12, 3, CAST(36000 AS Decimal(18, 0)))
INSERT [dbo].[CTHoaDon] ([MaHD], [MaMon], [SoLuong], [ThanhTien]) VALUES (12, 13, 1, CAST(12000 AS Decimal(18, 0)))
INSERT [dbo].[CTHoaDon] ([MaHD], [MaMon], [SoLuong], [ThanhTien]) VALUES (12, 14, 3, CAST(36000 AS Decimal(18, 0)))
INSERT [dbo].[CTHoaDon] ([MaHD], [MaMon], [SoLuong], [ThanhTien]) VALUES (13, 3, 2, CAST(60000 AS Decimal(18, 0)))
INSERT [dbo].[CTHoaDon] ([MaHD], [MaMon], [SoLuong], [ThanhTien]) VALUES (13, 8, 1, CAST(25000 AS Decimal(18, 0)))
INSERT [dbo].[CTHoaDon] ([MaHD], [MaMon], [SoLuong], [ThanhTien]) VALUES (13, 14, 3, CAST(36000 AS Decimal(18, 0)))
INSERT [dbo].[CTHoaDon] ([MaHD], [MaMon], [SoLuong], [ThanhTien]) VALUES (14, 1, 3, CAST(90000 AS Decimal(18, 0)))
INSERT [dbo].[CTHoaDon] ([MaHD], [MaMon], [SoLuong], [ThanhTien]) VALUES (14, 2, 2, CAST(40000 AS Decimal(18, 0)))
INSERT [dbo].[CTHoaDon] ([MaHD], [MaMon], [SoLuong], [ThanhTien]) VALUES (14, 6, 1, CAST(25000 AS Decimal(18, 0)))
INSERT [dbo].[CTHoaDon] ([MaHD], [MaMon], [SoLuong], [ThanhTien]) VALUES (15, 1, 3, CAST(90000 AS Decimal(18, 0)))
INSERT [dbo].[CTHoaDon] ([MaHD], [MaMon], [SoLuong], [ThanhTien]) VALUES (15, 10, 1, CAST(15000 AS Decimal(18, 0)))
INSERT [dbo].[CTHoaDon] ([MaHD], [MaMon], [SoLuong], [ThanhTien]) VALUES (16, 1, 2, CAST(60000 AS Decimal(18, 0)))
INSERT [dbo].[CTHoaDon] ([MaHD], [MaMon], [SoLuong], [ThanhTien]) VALUES (16, 3, 2, CAST(60000 AS Decimal(18, 0)))
INSERT [dbo].[CTHoaDon] ([MaHD], [MaMon], [SoLuong], [ThanhTien]) VALUES (17, 1, 6, CAST(180000 AS Decimal(18, 0)))
INSERT [dbo].[CTHoaDon] ([MaHD], [MaMon], [SoLuong], [ThanhTien]) VALUES (17, 3, 5, CAST(150000 AS Decimal(18, 0)))
INSERT [dbo].[CTHoaDon] ([MaHD], [MaMon], [SoLuong], [ThanhTien]) VALUES (18, 1, 2, CAST(60000 AS Decimal(18, 0)))
INSERT [dbo].[CTHoaDon] ([MaHD], [MaMon], [SoLuong], [ThanhTien]) VALUES (18, 3, 2, CAST(60000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[HoaDon] ON 

INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [MaNV], [MaBan], [NgayLap], [TongTien]) VALUES (1, 1, 1, 4, CAST(N'2021-12-05 00:00:00.000' AS DateTime), CAST(125000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [MaNV], [MaBan], [NgayLap], [TongTien]) VALUES (2, 3, 2, 6, CAST(N'2021-12-05 00:00:00.000' AS DateTime), CAST(72000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [MaNV], [MaBan], [NgayLap], [TongTien]) VALUES (3, 6, 3, 10, CAST(N'2021-12-05 00:00:00.000' AS DateTime), CAST(170000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [MaNV], [MaBan], [NgayLap], [TongTien]) VALUES (4, 7, 4, 7, CAST(N'2021-12-06 00:00:00.000' AS DateTime), CAST(66000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [MaNV], [MaBan], [NgayLap], [TongTien]) VALUES (5, 11, 3, 1, CAST(N'2021-12-06 00:00:00.000' AS DateTime), CAST(130000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [MaNV], [MaBan], [NgayLap], [TongTien]) VALUES (6, 2, 3, 2, CAST(N'2021-12-07 00:00:00.000' AS DateTime), CAST(78000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [MaNV], [MaBan], [NgayLap], [TongTien]) VALUES (7, 4, 4, 3, CAST(N'2021-12-07 00:00:00.000' AS DateTime), CAST(60000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [MaNV], [MaBan], [NgayLap], [TongTien]) VALUES (8, 5, 5, 5, CAST(N'2021-12-07 00:00:00.000' AS DateTime), CAST(30000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [MaNV], [MaBan], [NgayLap], [TongTien]) VALUES (9, 8, 5, 8, CAST(N'2021-12-08 00:00:00.000' AS DateTime), CAST(125000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [MaNV], [MaBan], [NgayLap], [TongTien]) VALUES (10, 9, 6, 9, CAST(N'2021-12-08 00:00:00.000' AS DateTime), CAST(45000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [MaNV], [MaBan], [NgayLap], [TongTien]) VALUES (11, 10, 6, 10, CAST(N'2021-12-08 00:00:00.000' AS DateTime), CAST(146000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [MaNV], [MaBan], [NgayLap], [TongTien]) VALUES (12, 15, 7, 7, CAST(N'2021-12-09 00:00:00.000' AS DateTime), CAST(48000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [MaNV], [MaBan], [NgayLap], [TongTien]) VALUES (13, 12, 7, 1, CAST(N'2021-12-09 00:00:00.000' AS DateTime), CAST(121000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [MaNV], [MaBan], [NgayLap], [TongTien]) VALUES (14, 13, 8, 2, CAST(N'2021-12-09 00:00:00.000' AS DateTime), CAST(155000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [MaNV], [MaBan], [NgayLap], [TongTien]) VALUES (15, 14, 8, 9, CAST(N'2021-12-09 00:00:00.000' AS DateTime), CAST(105000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [MaNV], [MaBan], [NgayLap], [TongTien]) VALUES (16, 1, 3, 2, CAST(N'2021-12-17 18:01:28.027' AS DateTime), CAST(120000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [MaNV], [MaBan], [NgayLap], [TongTien]) VALUES (17, 1, 3, 1, CAST(N'2021-12-17 18:03:18.647' AS DateTime), CAST(330000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [MaNV], [MaBan], [NgayLap], [TongTien]) VALUES (18, 1, 3, 1, CAST(N'2021-12-17 18:04:26.730' AS DateTime), CAST(120000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [TrangThai]) VALUES (1, N'Khách vô danh', CAST(N'2021-12-17' AS Date), N'Nam  ', N'', N'0              ', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [TrangThai]) VALUES (2, N'Nguyễn Thành Minh', CAST(N'1969-05-25' AS Date), N'Nam  ', N'Đồng Tháp', N'0961900525     ', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [TrangThai]) VALUES (3, N'Trần Văn Thanh', CAST(N'1984-12-13' AS Date), N'Nam  ', N'TPHCM', N'0963213026     ', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [TrangThai]) VALUES (4, N'Lê Thị Hoa', CAST(N'1995-08-08' AS Date), N'Nữ   ', N'Bình Dương', N'0968100763     ', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [TrangThai]) VALUES (5, N'Nguyễn Quỳnh Thi', CAST(N'1980-02-19' AS Date), N'Nữ   ', N'Tây Ninh', N'0938356346     ', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [TrangThai]) VALUES (6, N'Trần Thị Kiều Diễm', CAST(N'1990-10-01' AS Date), N'Nữ   ', N'Tiền Giang', N'0862141511     ', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [TrangThai]) VALUES (7, N'Mai Quốc Tiến', CAST(N'1993-06-23' AS Date), N'Nam  ', N'Đà Nẵng', N'0979009541     ', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [TrangThai]) VALUES (8, N'Nguyễn Hoàng Anh', CAST(N'1990-11-23' AS Date), N'Nam  ', N'Hà Nội', N'0938351289     ', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [TrangThai]) VALUES (9, N'Nguyễn Thị Diệu An', CAST(N'1990-02-17' AS Date), N'Nữ   ', N'Vĩnh Long', N'0862143157     ', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [TrangThai]) VALUES (10, N'Trần Văn Lợi', CAST(N'1990-05-18' AS Date), N'Nam  ', N'Cà Mau', N'0979007423     ', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [TrangThai]) VALUES (11, N'Lê Thanh Trúc', CAST(N'1997-07-21' AS Date), N'Nữ   ', N'Khánh Hòa', N'0938359807     ', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [TrangThai]) VALUES (12, N'Nguyễn Thành Trí', CAST(N'1983-09-11' AS Date), N'Nam  ', N'Bình Thuận', N'0862145162     ', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [TrangThai]) VALUES (13, N'Nguyễn Thị Hồng Ngân', CAST(N'1982-06-04' AS Date), N'Nữ   ', N'Vĩnh Long', N'0979008087     ', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [TrangThai]) VALUES (14, N'Huỳnh Văn Hậu', CAST(N'1967-03-24' AS Date), N'Nam  ', N'TPHCM', N'0935909807     ', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [TrangThai]) VALUES (15, N'Nguyễn Thị Phượng', CAST(N'1973-07-18' AS Date), N'Nữ   ', N'Đồng Tháp', N'0861753162     ', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [TrangThai]) VALUES (16, N'Đặng Hoàng Tuấn', CAST(N'1993-06-05' AS Date), N'Nam  ', N'TPHCM', N'0976965087     ', 1)
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
SET IDENTITY_INSERT [dbo].[LoaiMonAn] ON 

INSERT [dbo].[LoaiMonAn] ([MaLoai], [TenLoai], [TrangThai]) VALUES (1, N'Salad', 1)
INSERT [dbo].[LoaiMonAn] ([MaLoai], [TenLoai], [TrangThai]) VALUES (2, N'Món hấp xào', 1)
INSERT [dbo].[LoaiMonAn] ([MaLoai], [TenLoai], [TrangThai]) VALUES (3, N'Món nóng', 1)
INSERT [dbo].[LoaiMonAn] ([MaLoai], [TenLoai], [TrangThai]) VALUES (4, N'Món tráng miệng', 1)
SET IDENTITY_INSERT [dbo].[LoaiMonAn] OFF
INSERT [dbo].[Menu] ([MaBan], [MaMon], [TenMon], [SoLuong], [GiaBan], [ThanhTien]) VALUES (3, 1, N'Gỏi cuốn tôm thịt', 3, CAST(30000 AS Decimal(18, 0)), CAST(90000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[MonAn] ON 

INSERT [dbo].[MonAn] ([MaMon], [TenMon], [GiaBan], [MaLoai], [TrangThai]) VALUES (1, N'Gỏi cuốn tôm thịt', CAST(30000 AS Decimal(18, 0)), 1, 1)
INSERT [dbo].[MonAn] ([MaMon], [TenMon], [GiaBan], [MaLoai], [TrangThai]) VALUES (2, N'Salad phô mai thịt xông khói', CAST(20000 AS Decimal(18, 0)), 1, 1)
INSERT [dbo].[MonAn] ([MaMon], [TenMon], [GiaBan], [MaLoai], [TrangThai]) VALUES (3, N'Gỏi bồn bồn tôm thịt', CAST(30000 AS Decimal(18, 0)), 1, 1)
INSERT [dbo].[MonAn] ([MaMon], [TenMon], [GiaBan], [MaLoai], [TrangThai]) VALUES (4, N'Nghêu hấp thái', CAST(30000 AS Decimal(18, 0)), 2, 1)
INSERT [dbo].[MonAn] ([MaMon], [TenMon], [GiaBan], [MaLoai], [TrangThai]) VALUES (5, N'Sò huyết xào me', CAST(30000 AS Decimal(18, 0)), 2, 1)
INSERT [dbo].[MonAn] ([MaMon], [TenMon], [GiaBan], [MaLoai], [TrangThai]) VALUES (6, N'Ốc dừa xào bơ', CAST(25000 AS Decimal(18, 0)), 2, 1)
INSERT [dbo].[MonAn] ([MaMon], [TenMon], [GiaBan], [MaLoai], [TrangThai]) VALUES (7, N'Há cảo xíu mại', CAST(20000 AS Decimal(18, 0)), 2, 1)
INSERT [dbo].[MonAn] ([MaMon], [TenMon], [GiaBan], [MaLoai], [TrangThai]) VALUES (8, N'Cơm chiên lá sen', CAST(25000 AS Decimal(18, 0)), 3, 1)
INSERT [dbo].[MonAn] ([MaMon], [TenMon], [GiaBan], [MaLoai], [TrangThai]) VALUES (9, N'Mì Ý sốt thịt bò', CAST(30000 AS Decimal(18, 0)), 3, 1)
INSERT [dbo].[MonAn] ([MaMon], [TenMon], [GiaBan], [MaLoai], [TrangThai]) VALUES (10, N'Bánh chanh dây', CAST(15000 AS Decimal(18, 0)), 4, 1)
INSERT [dbo].[MonAn] ([MaMon], [TenMon], [GiaBan], [MaLoai], [TrangThai]) VALUES (11, N'Pepsi', CAST(12000 AS Decimal(18, 0)), 4, 1)
INSERT [dbo].[MonAn] ([MaMon], [TenMon], [GiaBan], [MaLoai], [TrangThai]) VALUES (12, N'Nước Cam', CAST(12000 AS Decimal(18, 0)), 4, 1)
INSERT [dbo].[MonAn] ([MaMon], [TenMon], [GiaBan], [MaLoai], [TrangThai]) VALUES (13, N'String', CAST(12000 AS Decimal(18, 0)), 4, 1)
INSERT [dbo].[MonAn] ([MaMon], [TenMon], [GiaBan], [MaLoai], [TrangThai]) VALUES (14, N'Trà xanh', CAST(12000 AS Decimal(18, 0)), 4, 1)
SET IDENTITY_INSERT [dbo].[MonAn] OFF
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([MaNV], [MaNhomNV], [TenDangNhap], [MatKhau], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [TrangThai]) VALUES (1, 1, N'HaiNguyen', N'659cbbf1e02f19a7e2402df9d23be037', N'Nguyễn Duy Hải', N'Nam  ', CAST(N'2000-06-18' AS Date), N'TPHCM', N'0918353686     ', 1)
INSERT [dbo].[NhanVien] ([MaNV], [MaNhomNV], [TenDangNhap], [MatKhau], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [TrangThai]) VALUES (2, 1, N'ThaoHoang', N'659cbbf1e02f19a7e2402df9d23be037', N'Hoàng Minh Thảo', N'Nam  ', CAST(N'2000-04-15' AS Date), N'TPHCM', N'0338836275     ', 1)
INSERT [dbo].[NhanVien] ([MaNV], [MaNhomNV], [TenDangNhap], [MatKhau], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [TrangThai]) VALUES (3, 1, N'ThuNguyen', N'659CBBF1E02F19A7E2402DF9D23BE037', N'Nguyễn Anh Thư', N'Nữ   ', CAST(N'2001-04-29' AS Date), N'Đồng Tháp', N'0961327210     ', 1)
INSERT [dbo].[NhanVien] ([MaNV], [MaNhomNV], [TenDangNhap], [MatKhau], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [TrangThai]) VALUES (4, 2, N'NgocTran', N'659cbbf1e02f19a7e2402df9d23be037', N'Trần Mỹ Ngọc', N'Nữ   ', CAST(N'2000-05-03' AS Date), N'Đà Nẵng', N'0919864466     ', 1)
INSERT [dbo].[NhanVien] ([MaNV], [MaNhomNV], [TenDangNhap], [MatKhau], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [TrangThai]) VALUES (5, 2, N'AnhBui', N'659cbbf1e02f19a7e2402df9d23be037', N'Bùi Thái Anh', N'Nam  ', CAST(N'2000-07-29' AS Date), N'TPHCM', N'0352271239     ', 1)
INSERT [dbo].[NhanVien] ([MaNV], [MaNhomNV], [TenDangNhap], [MatKhau], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [TrangThai]) VALUES (6, 2, N'ThanhNguyen', N'659cbbf1e02f19a7e2402df9d23be037', N'Nguyễn Thị Kim Thanh', N'Nữ   ', CAST(N'2000-06-17' AS Date), N'Hà Nội', N'0961518900     ', 0)
INSERT [dbo].[NhanVien] ([MaNV], [MaNhomNV], [TenDangNhap], [MatKhau], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [TrangThai]) VALUES (7, 2, N'TuanNguyen', N'659cbbf1e02f19a7e2402df9d23be037', N'Nguyễn Hữu Tuấn', N'Nam  ', CAST(N'2000-09-21' AS Date), N'Kiên Giang', N'0919651346     ', 1)
INSERT [dbo].[NhanVien] ([MaNV], [MaNhomNV], [TenDangNhap], [MatKhau], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [TrangThai]) VALUES (8, 2, N'TranDuong', N'659cbbf1e02f19a7e2402df9d23be037', N'Dương Thị Huyền Trân', N'Nữ   ', CAST(N'2000-11-09' AS Date), N'TPHCM', N'0350965339     ', 1)
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
SET IDENTITY_INSERT [dbo].[NhomNhanVien] ON 

INSERT [dbo].[NhomNhanVien] ([MaNhomNV], [TenNhom], [TrangThai]) VALUES (1, N'Quản trị', 1)
INSERT [dbo].[NhomNhanVien] ([MaNhomNV], [TenNhom], [TrangThai]) VALUES (2, N'Nhân viên', 1)
SET IDENTITY_INSERT [dbo].[NhomNhanVien] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__Ban__31C246CA500DE82A]    Script Date: 12/17/2021 6:15:07 PM ******/
ALTER TABLE [dbo].[Ban] ADD UNIQUE NONCLUSTERED 
(
	[TenBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__LoaiMonA__E29B1042D75F9844]    Script Date: 12/17/2021 6:15:07 PM ******/
ALTER TABLE [dbo].[LoaiMonAn] ADD UNIQUE NONCLUSTERED 
(
	[TenLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__MonAn__332EF565E501D047]    Script Date: 12/17/2021 6:15:07 PM ******/
ALTER TABLE [dbo].[MonAn] ADD UNIQUE NONCLUSTERED 
(
	[TenMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__NhanVien__55F68FC024B488C5]    Script Date: 12/17/2021 6:15:07 PM ******/
ALTER TABLE [dbo].[NhanVien] ADD UNIQUE NONCLUSTERED 
(
	[TenDangNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CTHoaDon]  WITH CHECK ADD  CONSTRAINT [fk_CTHD_HD] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[CTHoaDon] CHECK CONSTRAINT [fk_CTHD_HD]
GO
ALTER TABLE [dbo].[CTHoaDon]  WITH CHECK ADD  CONSTRAINT [fk_CTHD_M] FOREIGN KEY([MaMon])
REFERENCES [dbo].[MonAn] ([MaMon])
GO
ALTER TABLE [dbo].[CTHoaDon] CHECK CONSTRAINT [fk_CTHD_M]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [fk_CTHD_B] FOREIGN KEY([MaBan])
REFERENCES [dbo].[Ban] ([MaBan])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [fk_CTHD_B]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [fk_HD_KH] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [fk_HD_KH]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [fk_HD_NV] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [fk_HD_NV]
GO
ALTER TABLE [dbo].[Menu]  WITH CHECK ADD FOREIGN KEY([MaBan])
REFERENCES [dbo].[Ban] ([MaBan])
GO
ALTER TABLE [dbo].[Menu]  WITH CHECK ADD FOREIGN KEY([MaMon])
REFERENCES [dbo].[MonAn] ([MaMon])
GO
ALTER TABLE [dbo].[MonAn]  WITH CHECK ADD  CONSTRAINT [fk_MA_Loai] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LoaiMonAn] ([MaLoai])
GO
ALTER TABLE [dbo].[MonAn] CHECK CONSTRAINT [fk_MA_Loai]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [fk_NV_NNV] FOREIGN KEY([MaNhomNV])
REFERENCES [dbo].[NhomNhanVien] ([MaNhomNV])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [fk_NV_NNV]
GO
ALTER TABLE [dbo].[Menu]  WITH CHECK ADD CHECK  (([SoLuong]>(0)))
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD CHECK  (([GioiTinh]=N'Nữ' OR [GioiTinh]=N'Nam'))
GO
/****** Object:  StoredProcedure [dbo].[insert_LoaiMon]    Script Date: 12/17/2021 6:15:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[insert_LoaiMon](@TenLoai nvarchar(100), @TrangThai bit)
as
	insert into LoaiMonAn(TenLoai, TrangThai)
	values(@TenLoai, @TrangThai)

GO
/****** Object:  StoredProcedure [dbo].[insert_MonAn]    Script Date: 12/17/2021 6:15:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[insert_MonAn](@TenMon nvarchar(100), @GiaBan decimal(18,0), @MaLoai int, @TrangThai bit)
as
	insert into MonAn(TenMon, GiaBan, MaLoai, TrangThai)
	values(@TenMon, @GiaBan, @MaLoai, @TrangThai)

GO
/****** Object:  StoredProcedure [dbo].[P_ChuyenBan]    Script Date: 12/17/2021 6:15:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[P_ChuyenBan]
	@MaBanCu INT, @MaBanMoi INT
AS
	UPDATE Menu SET MaBan = @MaBanMoi WHERE MaBan = @MaBanCu

GO
/****** Object:  StoredProcedure [dbo].[P_DiffBackup]    Script Date: 12/17/2021 6:15:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[P_DiffBackup] @link varchar(max)
AS
	DECLARE @database NVARCHAR(100)
	SELECT @database = DB_NAME()
	DECLARE @sqlCommand NVARCHAR(100)
	SET @sqlCommand = ' BACKUP DATABASE ' + @database + ' TO DISK = N''' + @link + '\DiffBackup.bak' +'''' + ' with differential '
	EXEC (@sqlCommand)

GO
/****** Object:  StoredProcedure [dbo].[P_FullBackup]    Script Date: 12/17/2021 6:15:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[P_FullBackup] @link varchar(max)
AS
	DECLARE @database NVARCHAR(100)
	SELECT @database = DB_NAME()
	DECLARE @sqlCommand NVARCHAR(100)
	SET @sqlCommand = ' BACKUP DATABASE ' + @database + ' TO DISK = N''' + @link + '\FullBackup.bak' +''''
	EXEC (@sqlCommand)

GO
/****** Object:  StoredProcedure [dbo].[P_LayCTHDTheoMaHD]    Script Date: 12/17/2021 6:15:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[P_LayCTHDTheoMaHD]
	@MaHD INT
AS
	SELECT MA.MaMon,MA.TenMon,CTHD.SoLuong,MA.GiaBan,CTHD.ThanhTien FROM dbo.CTHoaDon CTHD
	JOIN dbo.HoaDon HD ON HD.MaHD = CTHD.MaHD
	JOIN dbo.MonAn MA ON MA.MaMon = CTHD.MaMon
	WHERE HD.MaHD = @MaHD

GO
/****** Object:  StoredProcedure [dbo].[P_LayHoaDons]    Script Date: 12/17/2021 6:15:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[P_LayHoaDons]
AS
	SELECT HD.MaHD, KH.TenKH, B.TenBan, NV.HoTen, HD.NgayLap,HD.TongTien FROM dbo.HoaDon HD
	JOIN dbo.Ban B ON B.MaBan = HD.MaBan
	JOIN dbo.KhachHang KH ON KH.MaKH = HD.MaKH
	JOIN dbo.NhanVien NV ON NV.MaNV = HD.MaNV
	ORDER BY HD.MaHD DESC

GO
/****** Object:  StoredProcedure [dbo].[P_LayNhanVienDangNhap]    Script Date: 12/17/2021 6:15:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[P_LayNhanVienDangNhap]
	@Username NVARCHAR(100), @MatKhau NVARCHAR(100)
AS
	SELECT * FROM dbo.NhanVien
	WHERE TenDangNhap = @Username AND MatKhau = @MatKhau

GO
/****** Object:  StoredProcedure [dbo].[P_LogBackup]    Script Date: 12/17/2021 6:15:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[P_LogBackup] @link varchar(max)
AS
	DECLARE @database NVARCHAR(100)
	SELECT @database = DB_NAME()
	DECLARE @sqlCommand NVARCHAR(100)
	SET @sqlCommand = ' BACKUP LOG ' + @database + ' TO DISK = N''' + @link + '\LogBackup.trn' + ''''
	EXEC (@sqlCommand)

GO
/****** Object:  StoredProcedure [dbo].[P_SuaKhachHang]    Script Date: 12/17/2021 6:15:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[P_SuaKhachHang]
	@TenKH NVARCHAR(100), @NgaySinh DATE, @GioiTinh NCHAR(5), @DiaChi NVARCHAR(500), @TrangThai BIT, @SDT CHAR(12)
AS
	UPDATE dbo.KhachHang SET TenKH = @TenKH, NgaySinh = @NgaySinh, GioiTinh = @GioiTinh, DiaChi = @DiaChi, TrangThai = @TrangThai WHERE SDT = @SDT

GO
/****** Object:  StoredProcedure [dbo].[P_SuaNhanVien]    Script Date: 12/17/2021 6:15:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[P_SuaNhanVien]
	@MaNV INT,@MaNhomNV INT , @HoTen NVARCHAR(100), @GioiTinh NCHAR(5), @NgaySinh DATE, @DiaChi NVARCHAR(500), @SDT CHAR(15), @TrangThai BIT
AS
	UPDATE dbo.NhanVien SET MaNhomNV=@MaNhomNV,HoTen = @HoTen, GioiTinh = GioiTinh, DiaChi = @DiaChi, SDT= @SDT, NgaySinh = @NgaySinh, TrangThai = @TrangThai  WHERE MaNV = @MaNV

GO
/****** Object:  StoredProcedure [dbo].[P_SuaNhomNV]    Script Date: 12/17/2021 6:15:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[P_SuaNhomNV]
	@MaNhom INT,@TenNhom  NVARCHAR(100), @TrangThai BIT
AS
	UPDATE dbo.NhomNhanVien SET TenNhom = @TenNhom, TrangThai = @TrangThai WHERE MaNhomNV = @MaNhom

GO
/****** Object:  StoredProcedure [dbo].[P_TaoHoaDon]    Script Date: 12/17/2021 6:15:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[P_TaoHoaDon] @MaBan int, @MaKH int, @MaNV int
AS
	INSERT INTO dbo.HoaDon (MaKH, MaNV, MaBan, NgayLap, TongTien)
	VALUES
	     (@MaKH,@MaNV ,@MaBan , GETDATE(), 0)

GO
/****** Object:  StoredProcedure [dbo].[P_ThemCTHD]    Script Date: 12/17/2021 6:15:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[P_ThemCTHD]
	@MaHD INT
AS
BEGIN
	DECLARE @MaMon INT
	DECLARE @SoLuong INT
	DECLARE @ThanhTien INT
	DECLARE @MaBan INT  = (SELECT MaBan FROM dbo.HoaDon WHERE MaHD = @MaHD)
	DECLARE @TongTien INT = 0
	DECLARE cur_Menu CURSOR
	FORWARD_ONLY
	FOR SELECT MaMon,SoLuong,ThanhTien FROM dbo.Menu WHERE MaBan = @MaBan
	OPEN cur_Menu
	FETCH NEXT FROM cur_Menu INTO @MaMon, @SoLuong, @ThanhTien
	WHILE(@@FETCH_STATUS=0)
	BEGIN
		INSERT INTO dbo.CTHoaDon (MaHD, MaMon, SoLuong, ThanhTien)VALUES(@MaHD, @MaMon, @SoLuong, @ThanhTien)
		SET @TongTien = @TongTien + @ThanhTien
		FETCH NEXT FROM cur_Menu INTO @MaMon, @SoLuong, @ThanhTien
	END
	CLOSE cur_Menu
	DEALLOCATE cur_Menu
	DELETE dbo.Menu WHERE MaBan = @MaBan
	UPDATE dbo.HoaDon SET TongTien = @TongTien WHERE MaHD = @MaHD
END

GO
/****** Object:  StoredProcedure [dbo].[P_ThemKhachHang]    Script Date: 12/17/2021 6:15:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[P_ThemKhachHang]
	@TenKH NVARCHAR(100), @NgaySinh DATE, @GioiTinh NCHAR(5), @DiaChi NVARCHAR(500), @SDT CHAR(15), @TrangThai BIT
AS
	INSERT INTO dbo.KhachHang
	     (TenKH, NgaySinh, GioiTinh, DiaChi, SDT, TrangThai)
	VALUES
	(@TenKH, @NgaySinh, @GioiTinh, @DiaChi, @SDT, @TrangThai)

GO
/****** Object:  StoredProcedure [dbo].[P_ThemMonMenu]    Script Date: 12/17/2021 6:15:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROC [dbo].[P_ThemMonMenu]
	@MaBan INT, @MaMon INT, @SoLuong INT
AS
	IF(EXISTS(SELECT * FROM dbo.Menu WHERE MaMon = @MaMon AND MaBan = @MaBan))
	BEGIN
		IF(@SoLuong = 0)
			DELETE dbo.Menu WHERE MaMon = @MaMon AND MaBan = @MaBan
		ELSE
		BEGIN
		    UPDATE dbo.Menu SET SoLuong = @SoLuong WHERE MaMon = @MaMon AND MaBan = @MaBan
			UPDATE dbo.Menu SET ThanhTien = (SELECT SoLuong * GiaBan FROM dbo.Menu WHERE MaBan = @MaBan AND MaMon = @MaMon) WHERE MaBan = @MaBan AND MaMon = @MaMon
		END		
	END
	ELSE
    BEGIN
		DECLARE @TenMon NVARCHAR(50)
		DECLARE @GiaBan decimal(18, 0)
		SELECT @TenMon = TenMon,@GiaBan = GiaBan FROM dbo.MonAn WHERE MaMon = @MaMon
        INSERT INTO dbo.Menu (MaBan, MaMon, TenMon, SoLuong, GiaBan, ThanhTien)VALUES(@MaBan, @MaMon, @TenMon, @SoLuong, @GiaBan, @SoLuong * @GiaBan)
    END

GO
/****** Object:  StoredProcedure [dbo].[P_ThemNhanVien]    Script Date: 12/17/2021 6:15:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[P_ThemNhanVien]
	@MaNhomNV INT, @TenDanhNhap NVARCHAR(100), @MatKhau NVARCHAR(100), @HoTen NVARCHAR(100),@GioiTinh NCHAR(5), @NgaySinh DATE, @DiaChi NVARCHAR(500),@SDT CHAR(15), @TrangThai BIT
AS
	INSERT INTO dbo.NhanVien
	     (MaNhomNV, TenDangNhap, MatKhau, HoTen, GioiTinh, NgaySinh, DiaChi, SDT, TrangThai)
	VALUES
	(@MaNhomNV, @TenDanhNhap, @MatKhau, @HoTen, @GioiTinh, @NgaySinh, @DiaChi, @SDT, @TrangThai)

GO
/****** Object:  StoredProcedure [dbo].[P_ThemNhomNV]    Script Date: 12/17/2021 6:15:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[P_ThemNhomNV]
	@TenNhom NVARCHAR(100),@TrangThai BIT
AS
	INSERT INTO dbo.NhomNhanVien
	     (TenNhom, TrangThai)
	VALUES
	(@TenNhom, @TrangThai)

GO
/****** Object:  StoredProcedure [dbo].[P_TimHoaDon]    Script Date: 12/17/2021 6:15:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[P_TimHoaDon]
	@MaHD INT, @TenKH NVARCHAR(50), @TenNV NVARCHAR(50)
AS
	SELECT HD.MaHD, KH.TenKH, B.TenBan, NV.HoTen, HD.NgayLap,HD.TongTien FROM dbo.HoaDon HD
	JOIN dbo.Ban B ON B.MaBan = HD.MaBan
	JOIN dbo.KhachHang KH ON KH.MaKH = HD.MaKH
	JOIN dbo.NhanVien NV ON NV.MaNV = HD.MaNV
	WHERE HD.MaHD = @MaHD OR  NV.HoTen LIKE @TenNV OR KH.TenKH LIKE @TenKH
	ORDER BY HD.MaHD DESC

GO
/****** Object:  StoredProcedure [dbo].[P_UpdateNV]    Script Date: 12/17/2021 6:15:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[P_UpdateNV]
	@MaNV INT,@GioiTinh NCHAR(5), @NgaySinh DATE, @DiaChi NVARCHAR(500),@SDT CHAR(15)
AS
	UPDATE dbo.NhanVien SET GioiTinh = GioiTinh, DiaChi = @DiaChi, SDT= @SDT, NgaySinh = @NgaySinh WHERE MaNV = @MaNV

GO
/****** Object:  StoredProcedure [dbo].[P_UpdatePassword]    Script Date: 12/17/2021 6:15:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[P_UpdatePassword]
	@Username NVARCHAR(100),@MatKhau NVARCHAR(100)
AS
	UPDATE dbo.NhanVien SET MatKhau = @MatKhau WHERE TenDangNhap = @Username

GO
/****** Object:  StoredProcedure [dbo].[update_LoaiMon]    Script Date: 12/17/2021 6:15:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[update_LoaiMon](@MaLoai int, @TenLoai nvarchar(100), @TrangThai bit)
as
	update LoaiMonAn
	set TenLoai=@TenLoai, TrangThai=@TrangThai
	where MaLoai=@MaLoai

GO
/****** Object:  StoredProcedure [dbo].[update_MonAn]    Script Date: 12/17/2021 6:15:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[update_MonAn](@MaMon int, @TenMon nvarchar(100), @GiaBan decimal(18,0), @MaLoai int, @TrangThai bit)
as
	update MonAn
	set TenMon=@TenMon, GiaBan=@GiaBan,MaLoai=@MaLoai, TrangThai=@TrangThai
	where MaMon=@MaMon

GO
USE [master]
GO
ALTER DATABASE [QLTiecQuanAn] SET  READ_WRITE 
GO
