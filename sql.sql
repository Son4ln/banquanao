CREATE DATABASE BanQuanAo
go
USE [BanQuanAo]
GO
/****** Object:  Table [dbo].[BaiViet]    Script Date: 9/3/2019 12:31:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BaiViet](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](100) NOT NULL,
	[TomTat] [nvarchar](300) NULL,
	[NoiDung] [nvarchar](max) NULL,
	[NgayDang] [date] NULL,
	[Hinh] [varchar](max) NULL,
	[ID_LoaiBV] [int] NULL,
	[ID_ND] [int] NULL,
 CONSTRAINT [PK_BaiViet] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChiTietHD]    Script Date: 9/3/2019 12:31:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHD](
	[ID_HD] [int] NOT NULL,
	[ID_SP] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonGia] [int] NULL,
	[GiamGia] [int] NULL,
 CONSTRAINT [PK_ChiTietHD] PRIMARY KEY CLUSTERED 
(
	[ID_HD] ASC,
	[ID_SP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 9/3/2019 12:31:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[ID] [int] NOT NULL,
	[TongTien] [int] NULL,
	[NgayDat] [date] NULL,
	[NgayGiao] [date] NULL,
	[TinhTrang] [bit] NULL,
	[ID_KH] [int] NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 9/3/2019 12:31:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](100) NOT NULL,
	[Email] [varchar](100) NULL,
	[SDT] [varchar](10) NULL,
	[DiaChi] [nvarchar](100) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoaiBV]    Script Date: 9/3/2019 12:31:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LoaiBV](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[Hinh] [varchar](max) NULL,
 CONSTRAINT [PK_LoaiBV] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoaiSP]    Script Date: 9/3/2019 12:31:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LoaiSP](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[Hinh] [varchar](max) NULL,
 CONSTRAINT [PK_LoaiSP] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 9/3/2019 12:31:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Pass] [varchar](50) NOT NULL,
	[HoTen] [nvarchar](100) NOT NULL,
	[NgaySinh] [date] NULL,
	[DiaChi] [nvarchar](100) NULL,
	[SDT] [varchar](10) NULL,
	[TinhTrang] [bit] NULL,
	[isAdmin] [bit] NULL,
 CONSTRAINT [PK_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 9/3/2019 12:31:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SanPham](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](100) NOT NULL,
	[DonGia] [int] NULL,
	[GiamGia] [int] NULL,
	[NgayDang] [date] NULL,
	[Hinh] [varchar](max) NULL,
	[MoTa] [nvarchar](500) NULL,
	[ID_LoaiSP] [int] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[BaiViet] ON 

INSERT [dbo].[BaiViet] ([ID], [Ten], [TomTat], [NoiDung], [NgayDang], [Hinh], [ID_LoaiBV], [ID_ND]) VALUES (1, N'MỪNG QUỐC KHÁNH – SALE THẢ PHANH', N'Lễ Quốc Khánh 2/9 này, bạn đã có kế hoạch gì chưa ????<br/>
Cùng rủ cả nhà tha hồ lên đồ đi chơi cực đô với giá siêu hời từ TOTOSHOP thôi nào!', N'Giảm giá 10% toàn bộ sản phẩm, đồng thời áp dụng cộng dồn chiết khấu thẻ VIP.<br/>
- Giảm 15% cho VIP 5 <br/>
- Giảm 17% cho VIP 7 <br/>
- Giảm 20% cho VIP 10 <br/>
Thời gian: Từ ngày 29/8/19 đến hết ngày 2/9/19<br/>
Địa điểm: Chương trình áp dụng tại Hệ thống 20 cửa hàng TOTOSHOP trên toàn quốc và Đặt hàng Online.<br/>
Quý khách lưu ý:<br/>
- Chương trình không áp dụng đồng thời với các Voucher giảm giá và Chương trình khuyến mãi khác.<br/>
- Totoshop hỗ trợ đổi hàng trong vòng 6 ngày kể từ thời điểm xuất hóa đơn<br/>
Liên hệ: 1900 633 501
Hãy chia sẻ ngay thông tin hấp dẫn đến người thân, bạn bè và cùng nhau ghé TOTOSHOP sắm đồ đi chơi lễ nhé!', CAST(0x12400B00 AS Date), N'/images/bv/km1.png', 1, 1)
INSERT [dbo].[BaiViet] ([ID], [Ten], [TomTat], [NoiDung], [NgayDang], [Hinh], [ID_LoaiBV], [ID_ND]) VALUES (2, N'Chọn Số Đúng-Trúng 5 Triệu Mỗi Ngày', N'MINIGAME: XỔ SỐ TỰ CHỌN <br/>
Chơi hoàn toàn miễn phí, người chơi chọn 5 số từ 0-9 để tạo thành dãy số may mắn dự thưởng với cơ hội trúng 5 TRIỆU đồng mỗi ngày.', N'CÁCH THỨC THAM GIA <br/>
- Người chơi tham gia bình luận 1 số gồm 5 chữ số tự chọn dưới bài post Minigame up vào lúc 20h mỗi ngày tại FANPAGE <br/>
Với cú pháp: xxxxx là dãy số bạn chọn. Ví dụ 12345 <br/>
- Chốt bình luận vào lúc 18h ngày hôm sau <br/>
- Mỗi bình luận chỉ chứa 1 số với 5 chữ số viết liền, không dấu cách <br/>
- Người chơi CÓ hóa đơn mua hàng tại Totoshop được bình luận tối đa 5 lần <br/>
- Người chơi KHÔNG CÓ hóa đơn mua hàng tại Totoshop được bình luận 1 lần duy nhất <br/>
- Người chơi không chỉnh sửa bình luận hoặc gian lận. Nếu phát hiện, Totoshop được quyền hủy bình luận mà không cần thông báo <br/>
THỂ LỆ TRAO THƯỞNG <br/>
- Dựa vào Kết quả XSKT Miền Bắc giải đặc biệt để xét trao thưởng: <br/>
1.Đúng 5 chữ số trúng 2.500.000đ. Nếu bạn có trong tay hóa đơn mua hàng hợp lệ tại hệ thống cửa hàng TotoShop => Giải thưởng nhân đôi thành 5.000.000đ. Không có người trúng, xét tiếp <br/>
2.Đúng 4 chữ số cuối trúng 1.000.000đ. Nếu bạn có trong tay hóa đơn mua hàng hợp lệ tại hệ thống cửa hàng TotoShop => Giải thưởng nhân đôi thành 2.000.000đ. Không có người trúng, xét tiếp <br/>
3.Đúng 3 chữ số cuối trúng 250.000đ. Nếu bạn có trong tay hóa đơn mua hàng hợp lệ tại hệ thống cửa hàng TotoShop => Giải thưởng nhân đôi thành 500.000đ <br/>
- Giải thưởng được trao bằng tiền mặt hoặc voucher mua hàng <br/>
- Trường hợp có nhiều người trúng, giải thưởng sẽ chia đều <br/>
- Người chơi trúng thưởng liên hệ Totoshop nhận giải trong vòng 24h đính kèm ảnh chụp Hóa đơn mua hàng hợp lệ (nếu có). Trong mọi trường hợp, quyết định cuối cùng thuộc về Totoshop. <br/>
(*) Hóa đơn mua hàng hợp lệ <br/>
- Hóa đơn chính chủ, mua hàng Online và Offline tại Totoshop <br/>
- Hóa đơn không có dấu hiệu chắp vá, tẩy sửa dưới mọi hình thức <br/>
- Hóa đơn được xác nhận mua hàng trước 18h (ngày công bố kết quả của kì xổ số) <br/>
Hãy dành vài phút tham gia chương trình “Làm giàu không khó” mỗi ngày và đừng quên chia sẻ bí kiếp kiến tiền quá dễ này với bạn bè của mình. Tham gia ngay tại ĐÂY nhé ✌✌', CAST(0xF73F0B00 AS Date), N'/images/bv/tt1.png', 2, 2)
INSERT [dbo].[BaiViet] ([ID], [Ten], [TomTat], [NoiDung], [NgayDang], [Hinh], [ID_LoaiBV], [ID_ND]) VALUES (4, N'Giới thiệu về Totoshop', N'', N'', CAST(0x9C3F0B00 AS Date), N'/images/bv/gt1.png', 4, 1)
INSERT [dbo].[BaiViet] ([ID], [Ten], [TomTat], [NoiDung], [NgayDang], [Hinh], [ID_LoaiBV], [ID_ND]) VALUES (5, N'HỆ THỐNG CỬA HÀNG', N'Tính đến tháng 8/2019, với sự xuất hiện của 3 chi nhánh mới toanh trong Tây Ninh, Quang Trung và Long An.<br/>
Sau đây là hệ thống 20 cửa hàng của TOTOSHOP trên toàn quốc cập nhật đến thời điểm hiện tại. 
Ghim ngay địa chỉ #TOTO gần nhà mình ghé ngay khi cần các bạn nhé!', N'', CAST(0xF43F0B00 AS Date), N'/images/bv/tb1.png', 3, 1)
SET IDENTITY_INSERT [dbo].[BaiViet] OFF
SET IDENTITY_INSERT [dbo].[LoaiBV] ON 

INSERT [dbo].[LoaiBV] ([ID], [Ten], [Hinh]) VALUES (1, N'Khuyến mãi', N'/images/bv/km1.png')
INSERT [dbo].[LoaiBV] ([ID], [Ten], [Hinh]) VALUES (2, N'Thời Trang', N'/images/bv/tt1.png')
INSERT [dbo].[LoaiBV] ([ID], [Ten], [Hinh]) VALUES (3, N'Thông báo', N'/images/bv/tb1.png')
INSERT [dbo].[LoaiBV] ([ID], [Ten], [Hinh]) VALUES (4, N'Giới thiệu', N'/images/bv/gt1.png')
SET IDENTITY_INSERT [dbo].[LoaiBV] OFF
SET IDENTITY_INSERT [dbo].[LoaiSP] ON 

INSERT [dbo].[LoaiSP] ([ID], [Ten], [Hinh]) VALUES (1, N'Áo', N'/images/loaisp/ao.jpg')
INSERT [dbo].[LoaiSP] ([ID], [Ten], [Hinh]) VALUES (2, N'Quần', N'/images/loaisp/quan.jpg')
INSERT [dbo].[LoaiSP] ([ID], [Ten], [Hinh]) VALUES (3, N'Váy', N'/images/loaisp/vay.jpg')
INSERT [dbo].[LoaiSP] ([ID], [Ten], [Hinh]) VALUES (4, N'Đầm', N'/images/loaisp/dam.jpg')
SET IDENTITY_INSERT [dbo].[LoaiSP] OFF
SET IDENTITY_INSERT [dbo].[NguoiDung] ON 

INSERT [dbo].[NguoiDung] ([ID], [Name], [Pass], [HoTen], [NgaySinh], [DiaChi], [SDT], [TinhTrang], [isAdmin]) VALUES (1, N'admin', N'admin', N'Phạm Thị Bảo Phương', CAST(0x671B0B00 AS Date), N'346/B4 Phan Văn Trị, P.13, Q.Bình Thạnh', N'0924645654', 1, 1)
INSERT [dbo].[NguoiDung] ([ID], [Name], [Pass], [HoTen], [NgaySinh], [DiaChi], [SDT], [TinhTrang], [isAdmin]) VALUES (2, N'admin1', N'admin1', N'Đặng Ngọc Sơn', CAST(0x061C0B00 AS Date), N'346/B4 Phan Văn Trị, P.13, Q.Bình Thạnh', N'0924645644', 1, 0)
SET IDENTITY_INSERT [dbo].[NguoiDung] OFF
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([ID], [Ten], [DonGia], [GiamGia], [NgayDang], [Hinh], [MoTa], [ID_LoaiSP]) VALUES (1, N'Áo phông nữ', 249000, 0, CAST(0xFE3F0B00 AS Date), N'/images/sp/ao1.jpg', N'Áo phông polyester pha co giãn.<br/>
Phom Regular fit, cổ tròn bo rib, tay ngắn.<br/>
Dáng đơn giản phù hợp mặc nhiều hoàn cảnh, kết hợp với quần , chân váy.', 1)
INSERT [dbo].[SanPham] ([ID], [Ten], [DonGia], [GiamGia], [NgayDang], [Hinh], [MoTa], [ID_LoaiSP]) VALUES (2, N'Áo sơ mi Linen', 400000, 3, CAST(0x16400B00 AS Date), N'/images/sp/ao2.jpg', N'Áo sơ mi linen mỏng.<br/>
Phom regular, cổ đức, sát nách.<br/>
Mặc thoải mái , dễ chịu có thể kết hợp với quần jeans, khaki ', 1)
INSERT [dbo].[SanPham] ([ID], [Ten], [DonGia], [GiamGia], [NgayDang], [Hinh], [MoTa], [ID_LoaiSP]) VALUES (3, N'Quần jeans rách', 300000, 2, CAST(0x05400B00 AS Date), N'/images/sp/quan1.jpg', N'Quần jeans  Cotton USA.<br/>
Phom Momjeans, cạp cao, 5 túi.<br/>
Cài phía trước bằng khóa kéo và khuy kim loại.<br/>
Thân cào rách, gấu xỏa rách tự nhiên,hiệu ứng giặt hạ màu và axit.', 2)
INSERT [dbo].[SanPham] ([ID], [Ten], [DonGia], [GiamGia], [NgayDang], [Hinh], [MoTa], [ID_LoaiSP]) VALUES (4, N'Quần short kaki', 350000, 0, CAST(0x0B400B00 AS Date), N'/images/sp/quan2.jpg', N'Quần khaki chất liệu co giãn.<br/>
Phom regular, cạp thường, 4 túi.<br/>
Cài phía trước bằng khóa kéo và khuy nhựa.', 2)
INSERT [dbo].[SanPham] ([ID], [Ten], [DonGia], [GiamGia], [NgayDang], [Hinh], [MoTa], [ID_LoaiSP]) VALUES (5, N'Chân váy jeans', 450000, 5, CAST(0x13400B00 AS Date), N'/images/sp/vay1.jpg', N'Chân váy denim chất liệu co giãn nhẹ.<br/>
Phom regular, cạp cao, dáng A, 5 túi.<br/>
Cài phía trước bằng khóa kéo và khuy kim loại', 3)
INSERT [dbo].[SanPham] ([ID], [Ten], [DonGia], [GiamGia], [NgayDang], [Hinh], [MoTa], [ID_LoaiSP]) VALUES (6, N'Chân váy kaki', 250000, 0, CAST(0x09400B00 AS Date), N'/images/sp/vay2.jpg', N'Chân váy khaki cotton có co giãn.<br/>
Phom regular, cạp cao, dáng A, 5 túi.<br/>
Cúc dập, khóa kim loại.', 3)
INSERT [dbo].[SanPham] ([ID], [Ten], [DonGia], [GiamGia], [NgayDang], [Hinh], [MoTa], [ID_LoaiSP]) VALUES (7, N'Đầm Linen kẻ sọc', 500000, 5, CAST(0x0F400B00 AS Date), N'/images/sp/dam1.jpg', N'Váy liền linen cotton kẻ sọc.<br/>
Phom regular,kiểu sơ mi cài khuy, cổ tim, sát nách.<br/>
Thắt đai ở eo, nẹp cài cúc.', 4)
INSERT [dbo].[SanPham] ([ID], [Ten], [DonGia], [GiamGia], [NgayDang], [Hinh], [MoTa], [ID_LoaiSP]) VALUES (8, N'Đầm đơn sắc', 300000, 0, CAST(0x14400B00 AS Date), N'/images/sp/dam2.jpg', N'Váy liền hai lớp polyester có co giãn.<br/>
Phom slimfit, thân trên ôm sát, thân dưới xếp ly, cổ tròn, sát nách.<br/>
Đơn giản, lịch sự rất phù hợp mặc nơi công sở.', 4)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
ALTER TABLE [dbo].[BaiViet]  WITH CHECK ADD  CONSTRAINT [FK_LoaiBV_BaiViet] FOREIGN KEY([ID_LoaiBV])
REFERENCES [dbo].[LoaiBV] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BaiViet] CHECK CONSTRAINT [FK_LoaiBV_BaiViet]
GO
ALTER TABLE [dbo].[BaiViet]  WITH CHECK ADD  CONSTRAINT [FK_NguoiDung_BaiViet] FOREIGN KEY([ID_ND])
REFERENCES [dbo].[NguoiDung] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BaiViet] CHECK CONSTRAINT [FK_NguoiDung_BaiViet]
GO
ALTER TABLE [dbo].[ChiTietHD]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_ChiTietHD] FOREIGN KEY([ID_HD])
REFERENCES [dbo].[HoaDon] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietHD] CHECK CONSTRAINT [FK_HoaDon_ChiTietHD]
GO
ALTER TABLE [dbo].[ChiTietHD]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_ChiTietHD] FOREIGN KEY([ID_SP])
REFERENCES [dbo].[SanPham] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietHD] CHECK CONSTRAINT [FK_SanPham_ChiTietHD]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_KhachHang_HoaDon] FOREIGN KEY([ID_KH])
REFERENCES [dbo].[KhachHang] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_KhachHang_HoaDon]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_LoaiSP_SanPham] FOREIGN KEY([ID_LoaiSP])
REFERENCES [dbo].[LoaiSP] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_LoaiSP_SanPham]
GO
