USE [master]
GO

CREATE DATABASE [QUANLYTHPT]

USE [QUANLYTHPT]
GO
/****** Object:  Table [dbo].[GIAOVIEN]    Script Date: 9/25/2020 9:30:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GIAOVIEN](
	[MAGIAOVIEN] [char](10) NOT NULL,
	[TENGIAOVIEN] [nvarchar](30) NULL,
	[NGAYSINH] [date] NULL,
	[GIOITINH] [nchar](5) NULL,
	[DIACHI] [nvarchar](100) NULL,
	[SDT] [char](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MAGIAOVIEN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOCSINH]    Script Date: 9/25/2020 9:30:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOCSINH](
	[MAHOCSINH] [char](10) NOT NULL,
	[HOTENHOCSINH] [nvarchar](30) NULL,
	[NGAYSINH] [date] NULL,
	[GIOITINH] [nchar](5) NULL,
	[DIACHI] [nvarchar](100) NULL,
	[SDTPH] [char](10) NULL,
	[MALOP] [char](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MAHOCSINH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOCTAP]    Script Date: 9/25/2020 9:30:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOCTAP](
	[MALOP] [char](10) NOT NULL,
	[MAMONHOC] [char](10) NOT NULL,
	[THOIGIAN] [nchar](20) NULL,
 CONSTRAINT [HOCTAP_PK] PRIMARY KEY CLUSTERED 
(
	[MALOP] ASC,
	[MAMONHOC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOP]    Script Date: 9/25/2020 9:30:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOP](
	[MALOP] [char](10) NOT NULL,
	[TENLOP] [nvarchar](30) NULL,
	[SISO] [int] NULL,
	[MAGVCN] [char](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MALOP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MONHOC]    Script Date: 9/25/2020 9:30:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MONHOC](
	[MAMONHOC] [char](10) NOT NULL,
	[TENMONHOC] [nvarchar](30) NULL,
	[MATOTRUONG] [char](10) NULL,
	[MAGIAOVIEN] [char](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MAMONHOC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[GIAOVIEN] ([MAGIAOVIEN], [TENGIAOVIEN], [NGAYSINH], [GIOITINH], [DIACHI], [SDT]) VALUES (N'GV001     ', N'Nguyễn Thị Lan', CAST(N'1987-10-29' AS Date), N'Nữ   ', N'Tam Điệp, Ninh Bình', N'0981627123')
INSERT [dbo].[GIAOVIEN] ([MAGIAOVIEN], [TENGIAOVIEN], [NGAYSINH], [GIOITINH], [DIACHI], [SDT]) VALUES (N'GV002     ', N'Vũ Thị Thùy Linh', CAST(N'1976-02-15' AS Date), N'Nữ   ', N'Yên Mô, Ninh BÌnh', N'0916123763')
INSERT [dbo].[GIAOVIEN] ([MAGIAOVIEN], [TENGIAOVIEN], [NGAYSINH], [GIOITINH], [DIACHI], [SDT]) VALUES (N'GV003     ', N'Lê Văn Linh', CAST(N'1985-03-26' AS Date), N'Nam  ', N'Tam Điệp, Ninh Bình', N'0971271892')
INSERT [dbo].[GIAOVIEN] ([MAGIAOVIEN], [TENGIAOVIEN], [NGAYSINH], [GIOITINH], [DIACHI], [SDT]) VALUES (N'GV004     ', N'Vũ Đức Khánh', CAST(N'1984-12-04' AS Date), N'Nam  ', N'Tam Điệp, Ninh Bình', N'0183902139')
INSERT [dbo].[GIAOVIEN] ([MAGIAOVIEN], [TENGIAOVIEN], [NGAYSINH], [GIOITINH], [DIACHI], [SDT]) VALUES (N'GV005     ', N'Đinh Thị Quỳnh', CAST(N'1993-04-27' AS Date), N'Nữ   ', N'Kim Sơn, Ninh Bình', N'0913782193')
INSERT [dbo].[GIAOVIEN] ([MAGIAOVIEN], [TENGIAOVIEN], [NGAYSINH], [GIOITINH], [DIACHI], [SDT]) VALUES (N'GV006     ', N'Đinh Văn Vũ', CAST(N'1095-03-15' AS Date), N'Nam  ', N'Yên Khánh, Ninh Bình', N'0918378932')
GO
INSERT [dbo].[HOCSINH] ([MAHOCSINH], [HOTENHOCSINH], [NGAYSINH], [GIOITINH], [DIACHI], [SDTPH], [MALOP]) VALUES (N'10001     ', N'Vũ Thị Kim Như', CAST(N'2005-06-27' AS Date), N'Nữ   ', N'Yên Sơn, Tam Điệp, Ninh Bình', N'0982173821', NULL)
INSERT [dbo].[HOCSINH] ([MAHOCSINH], [HOTENHOCSINH], [NGAYSINH], [GIOITINH], [DIACHI], [SDTPH], [MALOP]) VALUES (N'10002     ', N'Nguyễn Thị Thanh Thúy', CAST(N'2005-02-24' AS Date), N'Nữ   ', N'Yên Sơn, Tam Điệp, Ninh Bình', N'0918372127', NULL)
GO
INSERT [dbo].[LOP] ([MALOP], [TENLOP], [SISO], [MAGVCN]) VALUES (N'10A       ', N'Lớp 10A', 30, N'GV001     ')
INSERT [dbo].[LOP] ([MALOP], [TENLOP], [SISO], [MAGVCN]) VALUES (N'10B       ', N'Lớp 10B', 33, N'GV003     ')
INSERT [dbo].[LOP] ([MALOP], [TENLOP], [SISO], [MAGVCN]) VALUES (N'10C       ', N'Lớp 10C', 34, N'GV002     ')
GO
INSERT [dbo].[MONHOC] ([MAMONHOC], [TENMONHOC], [MATOTRUONG], [MAGIAOVIEN]) VALUES (N'TOAN10    ', N'Toán lớp 10', N'GV003     ', N'GV001     ')
INSERT [dbo].[MONHOC] ([MAMONHOC], [TENMONHOC], [MATOTRUONG], [MAGIAOVIEN]) VALUES (N'TOAN11    ', N'Toán lớp 11', N'GV003     ', N'GV005     ')
INSERT [dbo].[MONHOC] ([MAMONHOC], [TENMONHOC], [MATOTRUONG], [MAGIAOVIEN]) VALUES (N'VATLY10   ', N'Vật Lý lớp 10', N'GV004     ', N'GV002     ')
GO
ALTER TABLE [dbo].[HOCSINH]  WITH CHECK ADD  CONSTRAINT [FK_HOCSINH_LOP] FOREIGN KEY([MALOP])
REFERENCES [dbo].[LOP] ([MALOP])
GO
ALTER TABLE [dbo].[HOCSINH] CHECK CONSTRAINT [FK_HOCSINH_LOP]
GO
ALTER TABLE [dbo].[HOCTAP]  WITH CHECK ADD  CONSTRAINT [FK_HOCTAP_LOP] FOREIGN KEY([MALOP])
REFERENCES [dbo].[LOP] ([MALOP])
GO
ALTER TABLE [dbo].[HOCTAP] CHECK CONSTRAINT [FK_HOCTAP_LOP]
GO
ALTER TABLE [dbo].[HOCTAP]  WITH CHECK ADD  CONSTRAINT [FK_HOCTAP_MONHOC] FOREIGN KEY([MAMONHOC])
REFERENCES [dbo].[MONHOC] ([MAMONHOC])
GO
ALTER TABLE [dbo].[HOCTAP] CHECK CONSTRAINT [FK_HOCTAP_MONHOC]
GO
ALTER TABLE [dbo].[LOP]  WITH CHECK ADD  CONSTRAINT [FK_LOP_GIAOVIEN] FOREIGN KEY([MAGVCN])
REFERENCES [dbo].[GIAOVIEN] ([MAGIAOVIEN])
GO
ALTER TABLE [dbo].[LOP] CHECK CONSTRAINT [FK_LOP_GIAOVIEN]
GO
ALTER TABLE [dbo].[MONHOC]  WITH CHECK ADD  CONSTRAINT [FK_MONHOC_GIAOVIEN] FOREIGN KEY([MAGIAOVIEN])
REFERENCES [dbo].[GIAOVIEN] ([MAGIAOVIEN])
GO
ALTER TABLE [dbo].[MONHOC] CHECK CONSTRAINT [FK_MONHOC_GIAOVIEN]
GO
ALTER TABLE [dbo].[GIAOVIEN]  WITH CHECK ADD CHECK  (([GIOITINH]=N'Nữ' OR [GIOITINH]=N'Nam'))
GO
ALTER TABLE [dbo].[HOCSINH]  WITH CHECK ADD CHECK  (([GIOITINH]=N'Nữ' OR [GIOITINH]=N'Nam'))
GO
