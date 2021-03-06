USE [oos]
GO
/****** Object:  Table [dbo].[user_table]    Script Date: 05/15/2018 00:41:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[user_table](
	[uId] [bigint] IDENTITY(1,1) NOT NULL,
	[mobile] [varchar](20) NULL,
	[username] [varchar](20) NULL,
	[sex] [varchar](20) NULL,
	[creatorTime] [varchar](50) NULL,
	[updateTime] [varchar](50) NULL,
	[password] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[uId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[mobile] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[user_table] ON
INSERT [dbo].[user_table] ([uId], [mobile], [username], [sex], [creatorTime], [updateTime], [password]) VALUES (2, N'18477062310', N'陈宣锦', N'先生', N'2018-05-11 18:23:41', N'2018-05-11 18:23:41', N'123456')
SET IDENTITY_INSERT [dbo].[user_table] OFF
/****** Object:  Table [dbo].[user_address_table]    Script Date: 05/15/2018 00:41:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[user_address_table](
	[aId] [bigint] IDENTITY(1,1) NOT NULL,
	[uId] [bigint] NULL,
	[detailAddress] [varchar](200) NULL,
	[updateTime] [timestamp] NOT NULL,
	[creatorTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[aId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[meal_type_table]    Script Date: 05/15/2018 00:41:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[meal_type_table](
	[mtId] [bigint] IDENTITY(1,1) NOT NULL,
	[mealTypeName] [varchar](30) NULL,
	[startTime] [varchar](20) NULL,
	[endTime] [varchar](20) NULL,
	[mgId] [bigint] NULL,
	[createTime] [varchar](20) NULL,
	[updatetime] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[mtId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[mealTypeName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[meal_type_table] ON
INSERT [dbo].[meal_type_table] ([mtId], [mealTypeName], [startTime], [endTime], [mgId], [createTime], [updatetime]) VALUES (1, N'早餐', N'5:45', N'9:14', 1, N'2018-05-01 03:36:40', N'2018-05-01 03:36:40')
INSERT [dbo].[meal_type_table] ([mtId], [mealTypeName], [startTime], [endTime], [mgId], [createTime], [updatetime]) VALUES (2, N'正餐', N'9:15', N'22:44', 1, N'2018-05-01 03:36:54', N'2018-05-01 03:36:54')
INSERT [dbo].[meal_type_table] ([mtId], [mealTypeName], [startTime], [endTime], [mgId], [createTime], [updatetime]) VALUES (3, N'夜宵', N'22:45', N'5:44', 1, N'2018-05-01 03:37:10', N'2018-05-01 03:37:10')
SET IDENTITY_INSERT [dbo].[meal_type_table] OFF
/****** Object:  Table [dbo].[dishes_type_table]    Script Date: 05/15/2018 00:41:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dishes_type_table](
	[dtId] [bigint] IDENTITY(1,1) NOT NULL,
	[dishesTypeName] [varchar](20) NULL,
	[mealTypeName] [varchar](20) NULL,
	[mgId] [bigint] NULL,
	[createTime] [varchar](20) NULL,
	[updateTime] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[dtId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[dishes_type_table] ON
INSERT [dbo].[dishes_type_table] ([dtId], [dishesTypeName], [mealTypeName], [mgId], [createTime], [updateTime]) VALUES (5, N'早餐天天1元', N'早餐', 1, N'2018-05-01 03:57:12', N'2018-05-01 03:57:12')
INSERT [dbo].[dishes_type_table] ([dtId], [dishesTypeName], [mealTypeName], [mgId], [createTime], [updateTime]) VALUES (6, N'握的大饭团', N'早餐', 1, N'2018-05-01 03:57:23', N'2018-05-01 03:57:23')
INSERT [dbo].[dishes_type_table] ([dtId], [dishesTypeName], [mealTypeName], [mgId], [createTime], [updateTime]) VALUES (7, N'全新帕尼尼', N'早餐', 1, N'2018-05-01 03:57:32', N'2018-05-01 03:57:32')
INSERT [dbo].[dishes_type_table] ([dtId], [dishesTypeName], [mealTypeName], [mgId], [createTime], [updateTime]) VALUES (8, N'法风烧烤', N'早餐', 1, N'2018-05-01 03:57:47', N'2018-05-01 03:57:47')
INSERT [dbo].[dishes_type_table] ([dtId], [dishesTypeName], [mealTypeName], [mgId], [createTime], [updateTime]) VALUES (9, N'现熬好粥', N'早餐', 1, N'2018-05-01 03:58:04', N'2018-05-01 03:58:04')
INSERT [dbo].[dishes_type_table] ([dtId], [dishesTypeName], [mealTypeName], [mgId], [createTime], [updateTime]) VALUES (10, N'小食配餐', N'早餐', 1, N'2018-05-01 03:58:20', N'2018-05-01 03:58:20')
INSERT [dbo].[dishes_type_table] ([dtId], [dishesTypeName], [mealTypeName], [mgId], [createTime], [updateTime]) VALUES (11, N'缤纷饮料', N'早餐', 1, N'2018-05-01 03:58:32', N'2018-05-01 03:58:32')
INSERT [dbo].[dishes_type_table] ([dtId], [dishesTypeName], [mealTypeName], [mgId], [createTime], [updateTime]) VALUES (12, N'天天1元', N'正餐', 1, N'2018-05-01 03:58:45', N'2018-05-01 03:58:45')
INSERT [dbo].[dishes_type_table] ([dtId], [dishesTypeName], [mealTypeName], [mgId], [createTime], [updateTime]) VALUES (13, N'当季主打', N'正餐', 1, N'2018-05-01 03:58:57', N'2018-05-01 03:58:57')
INSERT [dbo].[dishes_type_table] ([dtId], [dishesTypeName], [mealTypeName], [mgId], [createTime], [updateTime]) VALUES (14, N'桶', N'正餐', 1, N'2018-05-01 03:59:04', N'2018-05-01 03:59:04')
INSERT [dbo].[dishes_type_table] ([dtId], [dishesTypeName], [mealTypeName], [mgId], [createTime], [updateTime]) VALUES (15, N'美味汉堡/卷', N'正餐', 1, N'2018-05-01 03:59:15', N'2018-05-01 03:59:15')
INSERT [dbo].[dishes_type_table] ([dtId], [dishesTypeName], [mealTypeName], [mgId], [createTime], [updateTime]) VALUES (16, N'人气明星餐', N'正餐', 1, N'2018-05-01 03:59:24', N'2018-05-01 03:59:24')
INSERT [dbo].[dishes_type_table] ([dtId], [dishesTypeName], [mealTypeName], [mgId], [createTime], [updateTime]) VALUES (17, N'K记饭桶', N'正餐', 1, N'2018-05-01 03:59:40', N'2018-05-01 03:59:40')
INSERT [dbo].[dishes_type_table] ([dtId], [dishesTypeName], [mealTypeName], [mgId], [createTime], [updateTime]) VALUES (18, N'鸡翅/鸡排', N'正餐', 1, N'2018-05-01 03:59:51', N'2018-05-01 03:59:51')
INSERT [dbo].[dishes_type_table] ([dtId], [dishesTypeName], [mealTypeName], [mgId], [createTime], [updateTime]) VALUES (19, N'吮指原味鸡', N'正餐', 1, N'2018-05-01 04:00:22', N'2018-05-01 04:00:22')
INSERT [dbo].[dishes_type_table] ([dtId], [dishesTypeName], [mealTypeName], [mgId], [createTime], [updateTime]) VALUES (20, N'小食/配餐', N'正餐', 1, N'2018-05-01 04:00:40', N'2018-05-01 04:00:40')
INSERT [dbo].[dishes_type_table] ([dtId], [dishesTypeName], [mealTypeName], [mgId], [createTime], [updateTime]) VALUES (21, N'甜品/冰淇淋', N'正餐', 1, N'2018-05-01 04:00:52', N'2018-05-01 04:00:52')
INSERT [dbo].[dishes_type_table] ([dtId], [dishesTypeName], [mealTypeName], [mgId], [createTime], [updateTime]) VALUES (22, N'K Coffee', N'正餐', 1, N'2018-05-01 04:01:02', N'2018-05-01 04:01:02')
INSERT [dbo].[dishes_type_table] ([dtId], [dishesTypeName], [mealTypeName], [mgId], [createTime], [updateTime]) VALUES (24, N'团享餐', N'正餐', 1, N'2018-05-01 04:01:33', N'2018-05-01 04:01:33')
INSERT [dbo].[dishes_type_table] ([dtId], [dishesTypeName], [mealTypeName], [mgId], [createTime], [updateTime]) VALUES (25, N'童书套餐', N'正餐', 1, N'2018-05-01 04:01:45', N'2018-05-01 04:01:45')
INSERT [dbo].[dishes_type_table] ([dtId], [dishesTypeName], [mealTypeName], [mgId], [createTime], [updateTime]) VALUES (26, N'夜宵天天1元', N'夜宵', 1, N'2018-05-01 04:02:19', N'2018-05-01 04:02:19')
INSERT [dbo].[dishes_type_table] ([dtId], [dishesTypeName], [mealTypeName], [mgId], [createTime], [updateTime]) VALUES (27, N'限时特惠', N'夜宵', 1, N'2018-05-01 04:02:30', N'2018-05-01 04:02:30')
INSERT [dbo].[dishes_type_table] ([dtId], [dishesTypeName], [mealTypeName], [mgId], [createTime], [updateTime]) VALUES (34, N'美味汉堡/卷', N'夜宵', 1, N'2018-05-03 22:01:04', N'2018-05-03 22:01:04')
INSERT [dbo].[dishes_type_table] ([dtId], [dishesTypeName], [mealTypeName], [mgId], [createTime], [updateTime]) VALUES (35, N'现熬好粥', N'夜宵', 1, N'2018-05-03 22:01:18', N'2018-05-03 22:01:18')
INSERT [dbo].[dishes_type_table] ([dtId], [dishesTypeName], [mealTypeName], [mgId], [createTime], [updateTime]) VALUES (37, N'缤纷饮料', N'夜宵', 1, N'2018-05-03 22:01:48', N'2018-05-03 22:01:48')
INSERT [dbo].[dishes_type_table] ([dtId], [dishesTypeName], [mealTypeName], [mgId], [createTime], [updateTime]) VALUES (38, N'小食配餐', N'夜宵', 1, N'2018-05-03 22:53:42', N'2018-05-03 22:53:42')
INSERT [dbo].[dishes_type_table] ([dtId], [dishesTypeName], [mealTypeName], [mgId], [createTime], [updateTime]) VALUES (39, N'哇哈哈', N'早餐', 1, N'2018-05-14 21:24:33', N'2018-05-14 21:24:33')
SET IDENTITY_INSERT [dbo].[dishes_type_table] OFF
/****** Object:  Table [dbo].[dishes_table]    Script Date: 05/15/2018 00:41:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dishes_table](
	[dsId] [bigint] IDENTITY(1,1) NOT NULL,
	[mgId] [bigint] NULL,
	[price] [float] NULL,
	[stock] [bigint] NULL,
	[dishesType] [varchar](20) NULL,
	[dishesName] [varchar](20) NULL,
	[describe] [varchar](250) NULL,
	[picAddress] [varchar](100) NULL,
	[createTime] [varchar](20) NULL,
	[updateTime] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[dsId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[dishesName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[dishes_table] ON
INSERT [dbo].[dishes_table] ([dsId], [mgId], [price], [stock], [dishesType], [dishesName], [describe], [picAddress], [createTime], [updateTime]) VALUES (8, 1, 1, 100, N'早餐天天1元', N'1元葡式蛋挞', N'产品满39元（不含外送费）加1元可享葡式蛋挞1只，每单仅限1份。', N'80f6fc3b-fff2-40e2-9f52-b9e2a2b52b1b.jpg', N'2018-05-02 01:31:48', N'2018-05-02 01:31:48')
INSERT [dbo].[dishes_table] ([dsId], [mgId], [price], [stock], [dishesType], [dishesName], [describe], [picAddress], [createTime], [updateTime]) VALUES (9, 1, 1, 100, N'早餐天天1元', N'1元培根蛋法风烧饼', N'产品满59元（不含外送费）加1元可享培根蛋法风烧饼1份，每单仅限1份。', N'7c761d17-b033-4f1c-9253-938c44ecc46c.jpg', N'2018-05-02 01:32:40', N'2018-05-02 01:32:40')
INSERT [dbo].[dishes_table] ([dsId], [mgId], [price], [stock], [dishesType], [dishesName], [describe], [picAddress], [createTime], [updateTime]) VALUES (10, 1, 10, 100, N'握的大饭团', N'咸蛋黄饭团饮品餐', N'金沙咸蛋黄肉酥饭团1个+饮料1杯（可选）', N'c8985017-17b0-4fac-a793-60a1cfed1233.jpg', N'2018-05-02 01:33:33', N'2018-05-02 01:33:33')
INSERT [dbo].[dishes_table] ([dsId], [mgId], [price], [stock], [dishesType], [dishesName], [describe], [picAddress], [createTime], [updateTime]) VALUES (11, 1, 19, 100, N'握的大饭团', N'培根蛋饭团春卷饮品', N'培根蛋肉酥饭团1个+三菇春卷2根+早餐饮料1杯', N'e25f032d-32ac-46b9-af72-05a9dc1181c3.jpg', N'2018-05-02 01:34:07', N'2018-05-02 01:34:07')
INSERT [dbo].[dishes_table] ([dsId], [mgId], [price], [stock], [dishesType], [dishesName], [describe], [picAddress], [createTime], [updateTime]) VALUES (12, 1, 79, 100, N'当季主打', N'外送一桶过瘾餐', N'吮指原味鸡2块+魔鬼辣脆皮鸡2块+黄飞红肯大大鸡排1份+二块新奥尔良烤翅+黄金鸡块(5块)+波纹霸王薯条(中)1份+1.25L百事可乐1瓶

', N'c02d0063-a288-4d8d-8d3d-3dfa76879fd1.jpg', N'2018-05-02 01:34:50', N'2018-05-02 01:34:50')
INSERT [dbo].[dishes_table] ([dsId], [mgId], [price], [stock], [dishesType], [dishesName], [describe], [picAddress], [createTime], [updateTime]) VALUES (13, 1, 59, 100, N'当季主打', N'外送吃过瘾炸鸡桶A', N'吮指原味鸡3块+魔鬼辣脆皮鸡2块+九珍2杯', N'a8fd1afb-830e-4063-a380-ac8739c6666f.jpg', N'2018-05-02 01:35:52', N'2018-05-02 01:35:52')
INSERT [dbo].[dishes_table] ([dsId], [mgId], [price], [stock], [dishesType], [dishesName], [describe], [picAddress], [createTime], [updateTime]) VALUES (14, 1, 28, 100, N'人气明星餐', N'魔鬼辣脆皮鸡餐盒S', N'升级版新奥尔良烤鸡腿堡1个+魔鬼辣脆皮鸡1块+红豆派1个+饮料1杯（可选）', N'737933a9-7f29-4e68-882c-64fc89cd250c.jpg', N'2018-05-02 01:36:29', N'2018-05-02 01:36:29')
INSERT [dbo].[dishes_table] ([dsId], [mgId], [price], [stock], [dishesType], [dishesName], [describe], [picAddress], [createTime], [updateTime]) VALUES (15, 1, 79, 100, N'限时特惠', N'春夜解饿套餐S', N'新奥尔良烤鸡腿堡S1个+香辣鸡腿堡S1个+4块香辣鸡翅+葡式蛋挞2只+热豆浆2杯', N'3cdd9fc1-81fd-4e54-abcd-319bde915e0f.jpg', N'2018-05-02 01:37:24', N'2018-05-02 01:37:24')
INSERT [dbo].[dishes_table] ([dsId], [mgId], [price], [stock], [dishesType], [dishesName], [describe], [picAddress], [createTime], [updateTime]) VALUES (16, 1, 9.5, 50, N'现熬好粥', N'皮蛋瘦肉粥', N'主要原料:大米、酱卤瘦肉丝、皮蛋', N'56e7720b-e04e-47e2-bbb9-f70d0b2248d3.jpg', N'2018-05-02 01:38:22', N'2018-05-02 01:38:22')
INSERT [dbo].[dishes_table] ([dsId], [mgId], [price], [stock], [dishesType], [dishesName], [describe], [picAddress], [createTime], [updateTime]) VALUES (17, 1, 39.5, 100, N'K Coffee', N'八块香辣鸡翅', N'主要原料:鸡翅，小麦粉', N'51a800cc-3e59-4d13-96ee-e241d1a98d2e.jpg', N'2018-05-02 01:38:58', N'2018-05-02 01:38:58')
INSERT [dbo].[dishes_table] ([dsId], [mgId], [price], [stock], [dishesType], [dishesName], [describe], [picAddress], [createTime], [updateTime]) VALUES (18, 1, 12, 100, N'小食配餐', N'二块香辣鸡翅', N'主要原料:鸡翅，小麦粉', N'd39b91d1-d33e-433f-aed7-e49dc65398f5.jpg', N'2018-05-02 01:39:43', N'2018-05-02 01:39:43')
INSERT [dbo].[dishes_table] ([dsId], [mgId], [price], [stock], [dishesType], [dishesName], [describe], [picAddress], [createTime], [updateTime]) VALUES (21, 1, 12.55, 100, N'当季主打', N'披萨', N'，搭配鲜香培根、外脆内绵的薯角、风味浓郁的鸡蛋沙拉和香浓芝士。', N'564c8ca7-c5a2-4cb7-9f28-6d27c2ccffa5.jpg', N'2018-05-11 21:43:03', N'2018-05-11 21:43:03')
SET IDENTITY_INSERT [dbo].[dishes_table] OFF
/****** Object:  Table [dbo].[administrator_table]    Script Date: 05/15/2018 00:41:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[administrator_table](
	[mgId] [bigint] IDENTITY(1,1) NOT NULL,
	[username] [varchar](20) NULL,
	[password] [varchar](20) NULL,
	[picAddress] [varchar](50) NULL,
	[maximumAuthority] [bit] NULL,
	[creator] [varchar](20) NULL,
	[creatorTime] [varchar](50) NULL,
	[updateTime] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[mgId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[administrator_table] ON
INSERT [dbo].[administrator_table] ([mgId], [username], [password], [picAddress], [maximumAuthority], [creator], [creatorTime], [updateTime]) VALUES (1, N'1600310106', N'123', N'123.png', 1, N'system', N'2018-05-01 03:35:45', N'2018-05-01 03:35:45')
INSERT [dbo].[administrator_table] ([mgId], [username], [password], [picAddress], [maximumAuthority], [creator], [creatorTime], [updateTime]) VALUES (2, N'admin', N'admin', N'123.png', 1, N'system', N'2018-05-02 10:19:38', N'2018-05-02 10:19:38')
SET IDENTITY_INSERT [dbo].[administrator_table] OFF
