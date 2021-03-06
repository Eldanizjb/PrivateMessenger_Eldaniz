USE [MessengerDB]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 1/10/2022 1:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 1/10/2022 1:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 1/10/2022 1:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 1/10/2022 1:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 1/10/2022 1:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 1/10/2022 1:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[Discriminator] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Surname] [nvarchar](100) NULL,
	[Age] [tinyint] NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 1/10/2022 1:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Messages]    Script Date: 1/10/2022 1:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Messages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Text] [nvarchar](2500) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[SenderId] [nvarchar](450) NULL,
	[RecieverId] [nvarchar](450) NULL,
 CONSTRAINT [PK_Messages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [Name], [Surname], [Age], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'4a125ecc-9960-4fd4-b3f6-41ef5705af8d', N'CustomUser', N'Eldaniz', N'Bashirov', 0, N'Eldaniz', N'ELDANIZ@CODE.EDU.AZ', N'eldaniz@code.edu.az', N'ELDANIZ@CODE.EDU.AZ', 0, N'AQAAAAEAACcQAAAAENCiKKyR6+RvMMXsVfkqIiAr+o7wdR2KblN1qBu1ToR6M3wFBKnTVze2OSRhdSj5xg==', N'DHL3VD2TYUV7EJNI6UJZRL3VJV4UTYJI', N'c7e1f958-83a8-4b48-b80a-1254d09daaef', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [Name], [Surname], [Age], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'6eeb33ea-3afd-4749-bef7-935b3de1f673', N'CustomUser', N'Aslan', N'Bashirov', 0, N'Aslan', N'ELDANIZ', N'eldanizjb@code.edu.az', N'ELDANIZJB@CODE.EDU.AZ', 0, N'AQAAAAEAACcQAAAAECciG15X2ZE1UOouecHzvZf8gmsTgKMA9URGuFOh7kr/ZV3WjCpKjpdofEgYg1SmQA==', N'QJVZJO5YQL6LEVS6VWQK2SZNVN3T2JSD', N'4be34b63-7cc1-4b72-8f10-1a70a6b23e11', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [Name], [Surname], [Age], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'747552de-0d41-43e0-a3fd-cd65e1573d53', N'CustomUser', N'Samir', N'Abbasov', 0, N'Samir', N'SAMIR@CODE.EDU.AZ', N'samir@code.edu.az', N'SAMIR@CODE.EDU.AZ', 0, N'AQAAAAEAACcQAAAAEPJ3NnkHSmxDMzOlXcKrcAnIYjldS/ZZAUo3Qsy9xeWqKfoAJEqEA48nDQX0h32A9g==', N'PZP2QGEBF7X62NKFTXP3VBHU45YYY3VZ', N'bd8fc61d-f3f1-452a-9877-b1dd3b608357', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [Name], [Surname], [Age], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'c70c7cb7-e38b-47aa-a049-a03fe2b4303a', N'CustomUser', N'Eldaniz', N'Bashirov', 0, N'Habil', N'ELDANIZJB@CODE.EDU.AZ', N'eldanizjb@code.edu.az', N'ELDANIZJB@CODE.EDU.AZ', 0, N'AQAAAAEAACcQAAAAEOCqZFOWK+qqFfvMWIrxN8eRTMYIaNHQqJSlEzWmiVr2F72uF/6HiYvI2xzRHhG/CQ==', N'FZGNXGMI4L7YRSYCAZN6XBPYJL25U4WY', N'a595184c-b343-43c2-9b48-8b0c03da04f3', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Messages] ON 

INSERT [dbo].[Messages] ([Id], [Text], [CreatedDate], [SenderId], [RecieverId]) VALUES (1, N'salam', CAST(N'2022-01-09T01:28:59.9265733' AS DateTime2), N'747552de-0d41-43e0-a3fd-cd65e1573d53', N'4a125ecc-9960-4fd4-b3f6-41ef5705af8d')
INSERT [dbo].[Messages] ([Id], [Text], [CreatedDate], [SenderId], [RecieverId]) VALUES (2, N'Eloykum Salam', CAST(N'2022-01-09T01:29:31.5690712' AS DateTime2), N'4a125ecc-9960-4fd4-b3f6-41ef5705af8d', N'747552de-0d41-43e0-a3fd-cd65e1573d53')
INSERT [dbo].[Messages] ([Id], [Text], [CreatedDate], [SenderId], [RecieverId]) VALUES (3, N'bir', CAST(N'2022-01-09T18:06:40.0906140' AS DateTime2), N'4a125ecc-9960-4fd4-b3f6-41ef5705af8d', N'747552de-0d41-43e0-a3fd-cd65e1573d53')
INSERT [dbo].[Messages] ([Id], [Text], [CreatedDate], [SenderId], [RecieverId]) VALUES (4, N'iki', CAST(N'2022-01-09T18:06:58.5669877' AS DateTime2), N'747552de-0d41-43e0-a3fd-cd65e1573d53', N'4a125ecc-9960-4fd4-b3f6-41ef5705af8d')
INSERT [dbo].[Messages] ([Id], [Text], [CreatedDate], [SenderId], [RecieverId]) VALUES (5, N'', CAST(N'2022-01-09T18:14:55.3673816' AS DateTime2), N'747552de-0d41-43e0-a3fd-cd65e1573d53', N'4a125ecc-9960-4fd4-b3f6-41ef5705af8d')
INSERT [dbo].[Messages] ([Id], [Text], [CreatedDate], [SenderId], [RecieverId]) VALUES (6, N'', CAST(N'2022-01-09T18:14:57.9153727' AS DateTime2), N'747552de-0d41-43e0-a3fd-cd65e1573d53', N'4a125ecc-9960-4fd4-b3f6-41ef5705af8d')
INSERT [dbo].[Messages] ([Id], [Text], [CreatedDate], [SenderId], [RecieverId]) VALUES (7, N'', CAST(N'2022-01-09T18:15:31.3685968' AS DateTime2), N'747552de-0d41-43e0-a3fd-cd65e1573d53', N'4a125ecc-9960-4fd4-b3f6-41ef5705af8d')
INSERT [dbo].[Messages] ([Id], [Text], [CreatedDate], [SenderId], [RecieverId]) VALUES (8, N'', CAST(N'2022-01-09T18:15:32.6443906' AS DateTime2), N'747552de-0d41-43e0-a3fd-cd65e1573d53', N'4a125ecc-9960-4fd4-b3f6-41ef5705af8d')
INSERT [dbo].[Messages] ([Id], [Text], [CreatedDate], [SenderId], [RecieverId]) VALUES (9, N'', CAST(N'2022-01-09T18:15:35.7443574' AS DateTime2), N'4a125ecc-9960-4fd4-b3f6-41ef5705af8d', N'747552de-0d41-43e0-a3fd-cd65e1573d53')
INSERT [dbo].[Messages] ([Id], [Text], [CreatedDate], [SenderId], [RecieverId]) VALUES (10, N'', CAST(N'2022-01-09T18:15:36.0037817' AS DateTime2), N'4a125ecc-9960-4fd4-b3f6-41ef5705af8d', N'747552de-0d41-43e0-a3fd-cd65e1573d53')
INSERT [dbo].[Messages] ([Id], [Text], [CreatedDate], [SenderId], [RecieverId]) VALUES (11, N'', CAST(N'2022-01-09T18:15:36.7393299' AS DateTime2), N'4a125ecc-9960-4fd4-b3f6-41ef5705af8d', N'747552de-0d41-43e0-a3fd-cd65e1573d53')
INSERT [dbo].[Messages] ([Id], [Text], [CreatedDate], [SenderId], [RecieverId]) VALUES (12, N'', CAST(N'2022-01-09T18:15:37.8457062' AS DateTime2), N'4a125ecc-9960-4fd4-b3f6-41ef5705af8d', N'747552de-0d41-43e0-a3fd-cd65e1573d53')
INSERT [dbo].[Messages] ([Id], [Text], [CreatedDate], [SenderId], [RecieverId]) VALUES (13, N'asaw', CAST(N'2022-01-09T18:23:22.2426445' AS DateTime2), N'747552de-0d41-43e0-a3fd-cd65e1573d53', N'4a125ecc-9960-4fd4-b3f6-41ef5705af8d')
INSERT [dbo].[Messages] ([Id], [Text], [CreatedDate], [SenderId], [RecieverId]) VALUES (14, N'dwacaw', CAST(N'2022-01-09T18:23:24.9827839' AS DateTime2), N'747552de-0d41-43e0-a3fd-cd65e1573d53', N'4a125ecc-9960-4fd4-b3f6-41ef5705af8d')
INSERT [dbo].[Messages] ([Id], [Text], [CreatedDate], [SenderId], [RecieverId]) VALUES (15, N'amchbasjhcjasvbjashvbjhasvbcjhasvbjhsdvbajshvbjashdvjashbvjashbvjkhjabcjahsbvjhadbvjbvjshbvjhsbvcjas', CAST(N'2022-01-09T18:23:41.6366834' AS DateTime2), N'747552de-0d41-43e0-a3fd-cd65e1573d53', N'4a125ecc-9960-4fd4-b3f6-41ef5705af8d')
INSERT [dbo].[Messages] ([Id], [Text], [CreatedDate], [SenderId], [RecieverId]) VALUES (16, N'cmhabscjvhab kjcbagvjavg hjbcjagvjagv jagcuagcj uifgcasjbm gfan vajhgcamn vybm gvhsvhbwemnf vhv q3fmnvjwhhbf web f wefv fweuy wefm jhk', CAST(N'2022-01-09T18:24:00.7243992' AS DateTime2), N'747552de-0d41-43e0-a3fd-cd65e1573d53', N'4a125ecc-9960-4fd4-b3f6-41ef5705af8d')
INSERT [dbo].[Messages] ([Id], [Text], [CreatedDate], [SenderId], [RecieverId]) VALUES (17, N'amhbchbajhb sncvv kj c  kjfhwifgiwegf jgbfjgfiu ujugfjejbfkjegb jhfjegfieyfg jgfuwuegfuiyweg gfyweygfiuweg ugfwegf ygfuyegf jgfuywefguig ygfjhegf ygfjhefbv uyigfkjfb ubf mewn fhyib   ugfiuegfiuewg ugfkjfb uhuihfiuefhw uighfiuwefg uifbejkb uygfbu kufhiuefh uyfbuiewfgi ugfiwfgie uyigwfiqw uyigiqfugqwigf uihfwiugqiwg iufhuhwqi ', CAST(N'2022-01-09T18:24:40.2676784' AS DateTime2), N'747552de-0d41-43e0-a3fd-cd65e1573d53', N'4a125ecc-9960-4fd4-b3f6-41ef5705af8d')
INSERT [dbo].[Messages] ([Id], [Text], [CreatedDate], [SenderId], [RecieverId]) VALUES (18, N'fwq', CAST(N'2022-01-09T18:24:48.5853192' AS DateTime2), N'747552de-0d41-43e0-a3fd-cd65e1573d53', N'4a125ecc-9960-4fd4-b3f6-41ef5705af8d')
INSERT [dbo].[Messages] ([Id], [Text], [CreatedDate], [SenderId], [RecieverId]) VALUES (19, N'üefüef', CAST(N'2022-01-09T23:37:01.8439359' AS DateTime2), N'747552de-0d41-43e0-a3fd-cd65e1573d53', N'4a125ecc-9960-4fd4-b3f6-41ef5705af8d')
INSERT [dbo].[Messages] ([Id], [Text], [CreatedDate], [SenderId], [RecieverId]) VALUES (20, N'cacacs', CAST(N'2022-01-10T02:09:59.3380131' AS DateTime2), N'747552de-0d41-43e0-a3fd-cd65e1573d53', N'4a125ecc-9960-4fd4-b3f6-41ef5705af8d')
INSERT [dbo].[Messages] ([Id], [Text], [CreatedDate], [SenderId], [RecieverId]) VALUES (21, N'cacvasvcasvsd', CAST(N'2022-01-10T02:10:04.0050173' AS DateTime2), N'747552de-0d41-43e0-a3fd-cd65e1573d53', N'4a125ecc-9960-4fd4-b3f6-41ef5705af8d')
INSERT [dbo].[Messages] ([Id], [Text], [CreatedDate], [SenderId], [RecieverId]) VALUES (22, N'acs', CAST(N'2022-01-10T02:10:07.3540951' AS DateTime2), N'747552de-0d41-43e0-a3fd-cd65e1573d53', N'4a125ecc-9960-4fd4-b3f6-41ef5705af8d')
INSERT [dbo].[Messages] ([Id], [Text], [CreatedDate], [SenderId], [RecieverId]) VALUES (23, N'cas', CAST(N'2022-01-10T02:10:10.6098710' AS DateTime2), N'747552de-0d41-43e0-a3fd-cd65e1573d53', N'4a125ecc-9960-4fd4-b3f6-41ef5705af8d')
INSERT [dbo].[Messages] ([Id], [Text], [CreatedDate], [SenderId], [RecieverId]) VALUES (24, N'scascc', CAST(N'2022-01-10T02:16:03.7661706' AS DateTime2), N'4a125ecc-9960-4fd4-b3f6-41ef5705af8d', N'747552de-0d41-43e0-a3fd-cd65e1573d53')
INSERT [dbo].[Messages] ([Id], [Text], [CreatedDate], [SenderId], [RecieverId]) VALUES (25, N's', CAST(N'2022-01-10T13:14:56.4658017' AS DateTime2), N'4a125ecc-9960-4fd4-b3f6-41ef5705af8d', N'747552de-0d41-43e0-a3fd-cd65e1573d53')
INSERT [dbo].[Messages] ([Id], [Text], [CreatedDate], [SenderId], [RecieverId]) VALUES (26, N'', CAST(N'2022-01-10T13:15:10.7819283' AS DateTime2), N'4a125ecc-9960-4fd4-b3f6-41ef5705af8d', N'747552de-0d41-43e0-a3fd-cd65e1573d53')
INSERT [dbo].[Messages] ([Id], [Text], [CreatedDate], [SenderId], [RecieverId]) VALUES (27, N'ccas', CAST(N'2022-01-10T13:15:12.9063663' AS DateTime2), N'4a125ecc-9960-4fd4-b3f6-41ef5705af8d', N'747552de-0d41-43e0-a3fd-cd65e1573d53')
INSERT [dbo].[Messages] ([Id], [Text], [CreatedDate], [SenderId], [RecieverId]) VALUES (28, N'cssc', CAST(N'2022-01-10T13:15:15.7867157' AS DateTime2), N'4a125ecc-9960-4fd4-b3f6-41ef5705af8d', N'747552de-0d41-43e0-a3fd-cd65e1573d53')
INSERT [dbo].[Messages] ([Id], [Text], [CreatedDate], [SenderId], [RecieverId]) VALUES (29, N'vsd', CAST(N'2022-01-10T13:15:29.3369707' AS DateTime2), N'4a125ecc-9960-4fd4-b3f6-41ef5705af8d', N'747552de-0d41-43e0-a3fd-cd65e1573d53')
INSERT [dbo].[Messages] ([Id], [Text], [CreatedDate], [SenderId], [RecieverId]) VALUES (30, N'scasc', CAST(N'2022-01-10T13:16:18.5797634' AS DateTime2), N'747552de-0d41-43e0-a3fd-cd65e1573d53', N'4a125ecc-9960-4fd4-b3f6-41ef5705af8d')
INSERT [dbo].[Messages] ([Id], [Text], [CreatedDate], [SenderId], [RecieverId]) VALUES (31, N'1', CAST(N'2022-01-10T13:16:58.6551829' AS DateTime2), N'747552de-0d41-43e0-a3fd-cd65e1573d53', N'4a125ecc-9960-4fd4-b3f6-41ef5705af8d')
INSERT [dbo].[Messages] ([Id], [Text], [CreatedDate], [SenderId], [RecieverId]) VALUES (32, N'2', CAST(N'2022-01-10T13:17:03.1632056' AS DateTime2), N'4a125ecc-9960-4fd4-b3f6-41ef5705af8d', N'747552de-0d41-43e0-a3fd-cd65e1573d53')
INSERT [dbo].[Messages] ([Id], [Text], [CreatedDate], [SenderId], [RecieverId]) VALUES (33, N's ', CAST(N'2022-01-10T13:27:41.5506581' AS DateTime2), N'4a125ecc-9960-4fd4-b3f6-41ef5705af8d', N'747552de-0d41-43e0-a3fd-cd65e1573d53')
INSERT [dbo].[Messages] ([Id], [Text], [CreatedDate], [SenderId], [RecieverId]) VALUES (34, N'dd', CAST(N'2022-01-10T13:27:45.0035518' AS DateTime2), N'4a125ecc-9960-4fd4-b3f6-41ef5705af8d', N'747552de-0d41-43e0-a3fd-cd65e1573d53')
INSERT [dbo].[Messages] ([Id], [Text], [CreatedDate], [SenderId], [RecieverId]) VALUES (35, N'dd', CAST(N'2022-01-10T13:28:08.0635396' AS DateTime2), N'747552de-0d41-43e0-a3fd-cd65e1573d53', N'4a125ecc-9960-4fd4-b3f6-41ef5705af8d')
SET IDENTITY_INSERT [dbo].[Messages] OFF
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD  CONSTRAINT [FK_Messages_AspNetUsers_RecieverId] FOREIGN KEY([RecieverId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Messages] CHECK CONSTRAINT [FK_Messages_AspNetUsers_RecieverId]
GO
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD  CONSTRAINT [FK_Messages_AspNetUsers_SenderId] FOREIGN KEY([SenderId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Messages] CHECK CONSTRAINT [FK_Messages_AspNetUsers_SenderId]
GO
