USE [databasequanao]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 18-Mar-18 11:54:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Size]    Script Date: 18-Mar-18 11:54:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Size](
	[SizeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Size] PRIMARY KEY CLUSTERED 
(
	[SizeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Account]    Script Date: 18-Mar-18 11:54:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Account](
	[AccountID] [int] NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Power] [nvarchar](50) NULL,
	[RoleID] [int] NOT NULL,
 CONSTRAINT [PK_tbl_Account] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Customer]    Script Date: 18-Mar-18 11:54:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Customer](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Usermame] [varchar](250) NOT NULL,
	[Password] [varchar](250) NOT NULL,
	[FullName] [nvarchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Address] [nvarchar](100) NOT NULL,
	[Phone] [int] NULL,
	[IsLock] [bit] NOT NULL,
	[RoleID] [int] NOT NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_tbl_Customer_1] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Import]    Script Date: 18-Mar-18 11:54:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Import](
	[Import_ID] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NOT NULL,
	[Money] [float] NULL,
	[Supplier_ID] [int] NOT NULL,
 CONSTRAINT [PK_tbl_Import] PRIMARY KEY CLUSTERED 
(
	[Import_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_ImportDetail]    Script Date: 18-Mar-18 11:54:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ImportDetail](
	[Import_ID] [int] NOT NULL,
	[Product_ID] [int] NOT NULL,
	[Price_Import] [float] NULL,
	[Amount] [int] NULL,
	[Money] [float] NULL,
 CONSTRAINT [PK_tbl_ImportDetail] PRIMARY KEY CLUSTERED 
(
	[Import_ID] ASC,
	[Product_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Order]    Script Date: 18-Mar-18 11:54:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Order](
	[Order_ID] [nchar](10) NOT NULL,
	[UserID] [int] NULL,
	[Date] [datetime] NOT NULL,
	[Pay_ID] [int] NOT NULL,
	[Transport_ID] [int] NOT NULL,
	[Name_Received] [nvarchar](50) NOT NULL,
	[Address_Received] [nvarchar](50) NOT NULL,
	[Phone_Received] [int] NULL,
	[Name_Pay] [nvarchar](50) NOT NULL,
	[Address_Pay] [nvarchar](50) NOT NULL,
	[Phone_Pay] [int] NULL,
	[Mesage] [nvarchar](max) NULL,
	[VAT_Gift] [float] NULL,
	[SumWeight] [float] NULL,
	[VAT_Transport] [float] NULL,
	[SumMoney] [float] NULL,
	[State] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_Order] PRIMARY KEY CLUSTERED 
(
	[Order_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_OrderDetial]    Script Date: 18-Mar-18 11:54:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_OrderDetial](
	[Order_ID] [nchar](10) NOT NULL,
	[Product_ID] [int] NOT NULL,
	[Price_Export] [float] NULL,
	[Amount] [int] NULL,
	[Money] [float] NULL,
	[State] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_OrderDetial] PRIMARY KEY CLUSTERED 
(
	[Order_ID] ASC,
	[Product_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Payment]    Script Date: 18-Mar-18 11:54:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Payment](
	[Pay_ID] [int] IDENTITY(1,1) NOT NULL,
	[Pay_Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_Payment] PRIMARY KEY CLUSTERED 
(
	[Pay_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Producer]    Script Date: 18-Mar-18 11:54:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Producer](
	[Producer_ID] [int] IDENTITY(1,1) NOT NULL,
	[Producer_Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_Producer] PRIMARY KEY CLUSTERED 
(
	[Producer_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Product]    Script Date: 18-Mar-18 11:54:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Product](
	[Product_ID] [int] IDENTITY(1,1) NOT NULL,
	[Product_Name] [nvarchar](50) NOT NULL,
	[Type_ID] [int] NOT NULL,
	[Style_ID] [int] NOT NULL,
	[Producer_ID] [int] NOT NULL,
	[Supplier_ID] [int] NOT NULL,
	[Image] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](50) NULL,
	[Material] [nvarchar](50) NULL,
	[Size] [nchar](10) NULL,
	[Price_Import] [float] NULL,
	[Price_Export] [float] NOT NULL,
	[Amount] [int] NULL,
	[Weight] [float] NOT NULL,
	[CreateDate] [datetime] NULL,
	[SizeID] [int] NULL,
	[Order] [int] NOT NULL,
	[Quantium] [int] NULL,
	[Description] [nvarchar](250) NULL,
 CONSTRAINT [PK_tbl_Product] PRIMARY KEY CLUSTERED 
(
	[Product_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Style]    Script Date: 18-Mar-18 11:54:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Style](
	[Style_ID] [int] IDENTITY(1,1) NOT NULL,
	[Style_Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_Style] PRIMARY KEY CLUSTERED 
(
	[Style_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Supplier]    Script Date: 18-Mar-18 11:54:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Supplier](
	[Supplier_ID] [int] IDENTITY(1,1) NOT NULL,
	[Supplier_Name] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[Phone] [int] NULL,
	[Email] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_Supplier] PRIMARY KEY CLUSTERED 
(
	[Supplier_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Transport]    Script Date: 18-Mar-18 11:54:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Transport](
	[Transport_ID] [int] IDENTITY(1,1) NOT NULL,
	[Transport_Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_Transport] PRIMARY KEY CLUSTERED 
(
	[Transport_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Type]    Script Date: 18-Mar-18 11:54:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Type](
	[Type_ID] [int] IDENTITY(1,1) NOT NULL,
	[Type_Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_Type] PRIMARY KEY CLUSTERED 
(
	[Type_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleID], [Name]) VALUES (1, N'Admin')
INSERT [dbo].[Role] ([RoleID], [Name]) VALUES (2, N'User')
SET IDENTITY_INSERT [dbo].[Role] OFF
SET IDENTITY_INSERT [dbo].[Size] ON 

INSERT [dbo].[Size] ([SizeID], [Name]) VALUES (1, N'S')
INSERT [dbo].[Size] ([SizeID], [Name]) VALUES (2, N'M')
INSERT [dbo].[Size] ([SizeID], [Name]) VALUES (3, N'L')
INSERT [dbo].[Size] ([SizeID], [Name]) VALUES (4, N'XL')
SET IDENTITY_INSERT [dbo].[Size] OFF
SET IDENTITY_INSERT [dbo].[tbl_Customer] ON 

INSERT [dbo].[tbl_Customer] ([UserID], [Usermame], [Password], [FullName], [Email], [Address], [Phone], [IsLock], [RoleID], [IsDelete]) VALUES (1, N'admin', N'21232f297a57a5a743894a0e4a801fc3', N'admin', N'admin', N'admin', NULL, 0, 1, 0)
INSERT [dbo].[tbl_Customer] ([UserID], [Usermame], [Password], [FullName], [Email], [Address], [Phone], [IsLock], [RoleID], [IsDelete]) VALUES (2, N'user', N'ee11cbb19052e40b07aac0ca060c23ee', N'user', N'user', N'user', NULL, 0, 2, 0)
SET IDENTITY_INSERT [dbo].[tbl_Customer] OFF
INSERT [dbo].[tbl_Order] ([Order_ID], [UserID], [Date], [Pay_ID], [Transport_ID], [Name_Received], [Address_Received], [Phone_Received], [Name_Pay], [Address_Pay], [Phone_Pay], [Mesage], [VAT_Gift], [SumWeight], [VAT_Transport], [SumMoney], [State]) VALUES (N'1         ', NULL, CAST(N'2018-03-16T11:35:07.867' AS DateTime), 1, 1, N'admin', N'admin', 1666476535, N'admin', N'admin', 1666476535, N'', 0, 150, 20000, 105000, N'Chưa xử lý')
INSERT [dbo].[tbl_Order] ([Order_ID], [UserID], [Date], [Pay_ID], [Transport_ID], [Name_Received], [Address_Received], [Phone_Received], [Name_Pay], [Address_Pay], [Phone_Pay], [Mesage], [VAT_Gift], [SumWeight], [VAT_Transport], [SumMoney], [State]) VALUES (N'2         ', NULL, CAST(N'2018-03-18T23:42:29.630' AS DateTime), 1, 1, N'admin', N'admin', 0, N'admin', N'admin', 0, N'', 0, 1, 20000, 120000, N'Chưa xử lý')
INSERT [dbo].[tbl_OrderDetial] ([Order_ID], [Product_ID], [Price_Export], [Amount], [Money], [State]) VALUES (N'1         ', 4, 105000, 1, 105000, N'Đã xử lý')
INSERT [dbo].[tbl_OrderDetial] ([Order_ID], [Product_ID], [Price_Export], [Amount], [Money], [State]) VALUES (N'2         ', 6, 120000, 45, 5400000, N'chưa xử lý')
SET IDENTITY_INSERT [dbo].[tbl_Payment] ON 

INSERT [dbo].[tbl_Payment] ([Pay_ID], [Pay_Name]) VALUES (1, N'Chuyển khoản')
INSERT [dbo].[tbl_Payment] ([Pay_ID], [Pay_Name]) VALUES (2, N'Trực tiếp')
SET IDENTITY_INSERT [dbo].[tbl_Payment] OFF
SET IDENTITY_INSERT [dbo].[tbl_Producer] ON 

INSERT [dbo].[tbl_Producer] ([Producer_ID], [Producer_Name]) VALUES (1, N'Hãng thứ nhất')
INSERT [dbo].[tbl_Producer] ([Producer_ID], [Producer_Name]) VALUES (2, N'Hãng thứ 2')
INSERT [dbo].[tbl_Producer] ([Producer_ID], [Producer_Name]) VALUES (3, N'Hãng thứ 3')
SET IDENTITY_INSERT [dbo].[tbl_Producer] OFF
SET IDENTITY_INSERT [dbo].[tbl_Product] ON 

INSERT [dbo].[tbl_Product] ([Product_ID], [Product_Name], [Type_ID], [Style_ID], [Producer_ID], [Supplier_ID], [Image], [Color], [Material], [Size], [Price_Import], [Price_Export], [Amount], [Weight], [CreateDate], [SizeID], [Order], [Quantium], [Description]) VALUES (1, N'Sản phẩm 1', 1, 2, 3, 1, N'phong6.jpg', N'Kẻ đen', N'Len', N'S         ', 90000, 105000, 1, 150, CAST(N'2018-02-20T00:00:00.000' AS DateTime), 1, 1, 1, NULL)
INSERT [dbo].[tbl_Product] ([Product_ID], [Product_Name], [Type_ID], [Style_ID], [Producer_ID], [Supplier_ID], [Image], [Color], [Material], [Size], [Price_Import], [Price_Export], [Amount], [Weight], [CreateDate], [SizeID], [Order], [Quantium], [Description]) VALUES (3, N'Sản phẩm 2', 1, 1, 2, 2, N'Ao_Cuoi_2010_01_0018-10.jpg', N'Tím', N'Nhung', N'S         ', 90000, 105000, 1, 150, CAST(N'2018-02-15T00:00:00.000' AS DateTime), 2, 1, 1, N'Nam tempus turpis at metus scelerisque placerat nulla deumantos solicitud felis. Pellentesque diam dolor, elementum etos lobortis des mollis ut...')
INSERT [dbo].[tbl_Product] ([Product_ID], [Product_Name], [Type_ID], [Style_ID], [Producer_ID], [Supplier_ID], [Image], [Color], [Material], [Size], [Price_Import], [Price_Export], [Amount], [Weight], [CreateDate], [SizeID], [Order], [Quantium], [Description]) VALUES (4, N'Sản phẩm 3', 4, 2, 1, 1, N'Aokieu4.jpg', N'Nâu', N'Len', N'S         ', 90000, 105000, 1, 150, CAST(N'2018-03-05T00:00:00.000' AS DateTime), 3, 2, 1, NULL)
INSERT [dbo].[tbl_Product] ([Product_ID], [Product_Name], [Type_ID], [Style_ID], [Producer_ID], [Supplier_ID], [Image], [Color], [Material], [Size], [Price_Import], [Price_Export], [Amount], [Weight], [CreateDate], [SizeID], [Order], [Quantium], [Description]) VALUES (5, N'Sản phẩm 4', 3, 2, 2, 2, N'phong19.jpg', N'Đỏ', N'Len', N'S         ', 90000, 105000, 1, 150, CAST(N'2018-03-10T00:00:00.000' AS DateTime), 1, 2, 1, NULL)
INSERT [dbo].[tbl_Product] ([Product_ID], [Product_Name], [Type_ID], [Style_ID], [Producer_ID], [Supplier_ID], [Image], [Color], [Material], [Size], [Price_Import], [Price_Export], [Amount], [Weight], [CreateDate], [SizeID], [Order], [Quantium], [Description]) VALUES (6, N'sản phẩm 5', 4, 2, 2, 1, N'Vest.jpg', N'Vàng', N'Tuyn', N'XL        ', 100000, 120000, 45, 1, CAST(N'2018-02-27T00:00:00.000' AS DateTime), 4, 2, 1, N'Nam tempus turpis at metus scelerisque placerat nulla deumantos solicitud felis. Pellentesque diam dolor, elementum etos lobortis des mollis ut...')
INSERT [dbo].[tbl_Product] ([Product_ID], [Product_Name], [Type_ID], [Style_ID], [Producer_ID], [Supplier_ID], [Image], [Color], [Material], [Size], [Price_Import], [Price_Export], [Amount], [Weight], [CreateDate], [SizeID], [Order], [Quantium], [Description]) VALUES (7, N'Sản phẩm 5', 1, 1, 1, 1, N'vay8.jpg', N'Xanh', N'Vải', N'S         ', 150000, 175000, 15, 1, NULL, 1, 1, 1, N'')
SET IDENTITY_INSERT [dbo].[tbl_Product] OFF
SET IDENTITY_INSERT [dbo].[tbl_Style] ON 

INSERT [dbo].[tbl_Style] ([Style_ID], [Style_Name]) VALUES (1, N'Style 1')
INSERT [dbo].[tbl_Style] ([Style_ID], [Style_Name]) VALUES (2, N'Style 2')
INSERT [dbo].[tbl_Style] ([Style_ID], [Style_Name]) VALUES (3, N'Style 3')
SET IDENTITY_INSERT [dbo].[tbl_Style] OFF
SET IDENTITY_INSERT [dbo].[tbl_Supplier] ON 

INSERT [dbo].[tbl_Supplier] ([Supplier_ID], [Supplier_Name], [Address], [Phone], [Email]) VALUES (1, N'Nhà cung cấp 1', N'Hà nội', 977206532, N'nhacungcap1@gmail.com')
INSERT [dbo].[tbl_Supplier] ([Supplier_ID], [Supplier_Name], [Address], [Phone], [Email]) VALUES (2, N'Nhà cung cấp 2', N'Bắc Ninh', 1666476535, N'nhacungcap2@gmail.com')
SET IDENTITY_INSERT [dbo].[tbl_Supplier] OFF
SET IDENTITY_INSERT [dbo].[tbl_Transport] ON 

INSERT [dbo].[tbl_Transport] ([Transport_ID], [Transport_Name]) VALUES (1, N'Xe máy')
INSERT [dbo].[tbl_Transport] ([Transport_ID], [Transport_Name]) VALUES (2, N'Chuyển phát nhanh')
INSERT [dbo].[tbl_Transport] ([Transport_ID], [Transport_Name]) VALUES (3, N'Máy Bay')
INSERT [dbo].[tbl_Transport] ([Transport_ID], [Transport_Name]) VALUES (4, N'Tàu Thủy')
INSERT [dbo].[tbl_Transport] ([Transport_ID], [Transport_Name]) VALUES (5, N'Tàu Hỏa')
INSERT [dbo].[tbl_Transport] ([Transport_ID], [Transport_Name]) VALUES (6, N'Oto')
SET IDENTITY_INSERT [dbo].[tbl_Transport] OFF
SET IDENTITY_INSERT [dbo].[tbl_Type] ON 

INSERT [dbo].[tbl_Type] ([Type_ID], [Type_Name]) VALUES (1, N'Kiểu 1')
INSERT [dbo].[tbl_Type] ([Type_ID], [Type_Name]) VALUES (2, N'Kiểu 2')
INSERT [dbo].[tbl_Type] ([Type_ID], [Type_Name]) VALUES (3, N'Kiểu 3')
INSERT [dbo].[tbl_Type] ([Type_ID], [Type_Name]) VALUES (4, N'Kiểu 4')
SET IDENTITY_INSERT [dbo].[tbl_Type] OFF
ALTER TABLE [dbo].[tbl_Product] ADD  CONSTRAINT [DF_tbl_Product_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[tbl_Product] ADD  CONSTRAINT [DF_tbl_Product_Order]  DEFAULT ((0)) FOR [Order]
GO
ALTER TABLE [dbo].[tbl_Product] ADD  CONSTRAINT [DF_tbl_Product_Quantium]  DEFAULT ((1)) FOR [Quantium]
GO
ALTER TABLE [dbo].[tbl_Account]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Account_Role] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([RoleID])
GO
ALTER TABLE [dbo].[tbl_Account] CHECK CONSTRAINT [FK_tbl_Account_Role]
GO
ALTER TABLE [dbo].[tbl_Customer]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Customer_Role] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([RoleID])
GO
ALTER TABLE [dbo].[tbl_Customer] CHECK CONSTRAINT [FK_tbl_Customer_Role]
GO
ALTER TABLE [dbo].[tbl_Import]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Import_tbl_Supplier] FOREIGN KEY([Supplier_ID])
REFERENCES [dbo].[tbl_Supplier] ([Supplier_ID])
GO
ALTER TABLE [dbo].[tbl_Import] CHECK CONSTRAINT [FK_tbl_Import_tbl_Supplier]
GO
ALTER TABLE [dbo].[tbl_ImportDetail]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ImportDetail_tbl_Product] FOREIGN KEY([Product_ID])
REFERENCES [dbo].[tbl_Product] ([Product_ID])
GO
ALTER TABLE [dbo].[tbl_ImportDetail] CHECK CONSTRAINT [FK_tbl_ImportDetail_tbl_Product]
GO
ALTER TABLE [dbo].[tbl_Order]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Order_tbl_Payment] FOREIGN KEY([Pay_ID])
REFERENCES [dbo].[tbl_Payment] ([Pay_ID])
GO
ALTER TABLE [dbo].[tbl_Order] CHECK CONSTRAINT [FK_tbl_Order_tbl_Payment]
GO
ALTER TABLE [dbo].[tbl_Order]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Order_tbl_Transport] FOREIGN KEY([Transport_ID])
REFERENCES [dbo].[tbl_Transport] ([Transport_ID])
GO
ALTER TABLE [dbo].[tbl_Order] CHECK CONSTRAINT [FK_tbl_Order_tbl_Transport]
GO
ALTER TABLE [dbo].[tbl_OrderDetial]  WITH CHECK ADD  CONSTRAINT [FK_tbl_OrderDetial_tbl_Order] FOREIGN KEY([Order_ID])
REFERENCES [dbo].[tbl_Order] ([Order_ID])
GO
ALTER TABLE [dbo].[tbl_OrderDetial] CHECK CONSTRAINT [FK_tbl_OrderDetial_tbl_Order]
GO
ALTER TABLE [dbo].[tbl_OrderDetial]  WITH CHECK ADD  CONSTRAINT [FK_tbl_OrderDetial_tbl_Product] FOREIGN KEY([Product_ID])
REFERENCES [dbo].[tbl_Product] ([Product_ID])
GO
ALTER TABLE [dbo].[tbl_OrderDetial] CHECK CONSTRAINT [FK_tbl_OrderDetial_tbl_Product]
GO
ALTER TABLE [dbo].[tbl_Product]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Product_Size] FOREIGN KEY([SizeID])
REFERENCES [dbo].[Size] ([SizeID])
GO
ALTER TABLE [dbo].[tbl_Product] CHECK CONSTRAINT [FK_tbl_Product_Size]
GO
ALTER TABLE [dbo].[tbl_Product]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Product_tbl_Producer] FOREIGN KEY([Producer_ID])
REFERENCES [dbo].[tbl_Producer] ([Producer_ID])
GO
ALTER TABLE [dbo].[tbl_Product] CHECK CONSTRAINT [FK_tbl_Product_tbl_Producer]
GO
ALTER TABLE [dbo].[tbl_Product]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Product_tbl_Style] FOREIGN KEY([Style_ID])
REFERENCES [dbo].[tbl_Style] ([Style_ID])
GO
ALTER TABLE [dbo].[tbl_Product] CHECK CONSTRAINT [FK_tbl_Product_tbl_Style]
GO
ALTER TABLE [dbo].[tbl_Product]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Product_tbl_Supplier] FOREIGN KEY([Supplier_ID])
REFERENCES [dbo].[tbl_Supplier] ([Supplier_ID])
GO
ALTER TABLE [dbo].[tbl_Product] CHECK CONSTRAINT [FK_tbl_Product_tbl_Supplier]
GO
ALTER TABLE [dbo].[tbl_Product]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Product_tbl_Type] FOREIGN KEY([Type_ID])
REFERENCES [dbo].[tbl_Type] ([Type_ID])
GO
ALTER TABLE [dbo].[tbl_Product] CHECK CONSTRAINT [FK_tbl_Product_tbl_Type]
GO
