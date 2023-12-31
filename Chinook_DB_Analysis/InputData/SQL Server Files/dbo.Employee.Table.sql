/****** Object:  Table [dbo].[Employee]    Script Date: 29-09-2023 21:12:45 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Employee]') AND type in (N'U'))
DROP TABLE [dbo].[Employee]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 29-09-2023 21:12:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeId] [int] NOT NULL,
	[LastName] [nvarchar](20) NOT NULL,
	[FirstName] [nvarchar](20) NOT NULL,
	[Title] [nvarchar](30) NULL,
	[ReportsTo] [int] NULL,
	[BirthDate] [datetime] NULL,
	[HireDate] [datetime] NULL,
	[Address] [nvarchar](70) NULL,
	[City] [nvarchar](40) NULL,
	[State] [nvarchar](40) NULL,
	[Country] [nvarchar](40) NULL,
	[PostalCode] [nvarchar](10) NULL,
	[Phone] [nvarchar](24) NULL,
	[Fax] [nvarchar](24) NULL,
	[Email] [nvarchar](60) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Employee] ([EmployeeId], [LastName], [FirstName], [Title], [ReportsTo], [BirthDate], [HireDate], [Address], [City], [State], [Country], [PostalCode], [Phone], [Fax], [Email]) VALUES (1, N'Adams', N'Andrew', N'General Manager', NULL, CAST(N'1962-02-18T00:00:00.000' AS DateTime), CAST(N'2002-08-14T00:00:00.000' AS DateTime), N'11120 Jasper Ave NW', N'Edmonton', N'AB', N'Canada', N'T5K 2N1', N'+1 (780) 428-9482', N'+1 (780) 428-3457', N'andrew@chinookcorp.com')
INSERT [dbo].[Employee] ([EmployeeId], [LastName], [FirstName], [Title], [ReportsTo], [BirthDate], [HireDate], [Address], [City], [State], [Country], [PostalCode], [Phone], [Fax], [Email]) VALUES (2, N'Edwards', N'Nancy', N'Sales Manager', 1, CAST(N'1958-12-08T00:00:00.000' AS DateTime), CAST(N'2002-05-01T00:00:00.000' AS DateTime), N'825 8 Ave SW', N'Calgary', N'AB', N'Canada', N'T2P 2T3', N'+1 (403) 262-3443', N'+1 (403) 262-3322', N'nancy@chinookcorp.com')
INSERT [dbo].[Employee] ([EmployeeId], [LastName], [FirstName], [Title], [ReportsTo], [BirthDate], [HireDate], [Address], [City], [State], [Country], [PostalCode], [Phone], [Fax], [Email]) VALUES (3, N'Peacock', N'Jane', N'Sales Support Agent', 2, CAST(N'1973-08-29T00:00:00.000' AS DateTime), CAST(N'2002-04-01T00:00:00.000' AS DateTime), N'1111 6 Ave SW', N'Calgary', N'AB', N'Canada', N'T2P 5M5', N'+1 (403) 262-3443', N'+1 (403) 262-6712', N'jane@chinookcorp.com')
INSERT [dbo].[Employee] ([EmployeeId], [LastName], [FirstName], [Title], [ReportsTo], [BirthDate], [HireDate], [Address], [City], [State], [Country], [PostalCode], [Phone], [Fax], [Email]) VALUES (4, N'Park', N'Margaret', N'Sales Support Agent', 2, CAST(N'1947-09-19T00:00:00.000' AS DateTime), CAST(N'2003-05-03T00:00:00.000' AS DateTime), N'683 10 Street SW', N'Calgary', N'AB', N'Canada', N'T2P 5G3', N'+1 (403) 263-4423', N'+1 (403) 263-4289', N'margaret@chinookcorp.com')
INSERT [dbo].[Employee] ([EmployeeId], [LastName], [FirstName], [Title], [ReportsTo], [BirthDate], [HireDate], [Address], [City], [State], [Country], [PostalCode], [Phone], [Fax], [Email]) VALUES (5, N'Johnson', N'Steve', N'Sales Support Agent', 2, CAST(N'1965-03-03T00:00:00.000' AS DateTime), CAST(N'2003-10-17T00:00:00.000' AS DateTime), N'7727B 41 Ave', N'Calgary', N'AB', N'Canada', N'T3B 1Y7', N'1 (780) 836-9987', N'1 (780) 836-9543', N'steve@chinookcorp.com')
INSERT [dbo].[Employee] ([EmployeeId], [LastName], [FirstName], [Title], [ReportsTo], [BirthDate], [HireDate], [Address], [City], [State], [Country], [PostalCode], [Phone], [Fax], [Email]) VALUES (6, N'Mitchell', N'Michael', N'IT Manager', 1, CAST(N'1973-07-01T00:00:00.000' AS DateTime), CAST(N'2003-10-17T00:00:00.000' AS DateTime), N'5827 Bowness Road NW', N'Calgary', N'AB', N'Canada', N'T3B 0C5', N'+1 (403) 246-9887', N'+1 (403) 246-9899', N'michael@chinookcorp.com')
INSERT [dbo].[Employee] ([EmployeeId], [LastName], [FirstName], [Title], [ReportsTo], [BirthDate], [HireDate], [Address], [City], [State], [Country], [PostalCode], [Phone], [Fax], [Email]) VALUES (7, N'King', N'Robert', N'IT Staff', 6, CAST(N'1970-05-29T00:00:00.000' AS DateTime), CAST(N'2004-01-02T00:00:00.000' AS DateTime), N'590 Columbia Boulevard West', N'Lethbridge', N'AB', N'Canada', N'T1K 5N8', N'+1 (403) 456-9986', N'+1 (403) 456-8485', N'robert@chinookcorp.com')
INSERT [dbo].[Employee] ([EmployeeId], [LastName], [FirstName], [Title], [ReportsTo], [BirthDate], [HireDate], [Address], [City], [State], [Country], [PostalCode], [Phone], [Fax], [Email]) VALUES (8, N'Callahan', N'Laura', N'IT Staff', 6, CAST(N'1968-01-09T00:00:00.000' AS DateTime), CAST(N'2004-03-04T00:00:00.000' AS DateTime), N'923 7 ST NW', N'Lethbridge', N'AB', N'Canada', N'T1H 1Y8', N'+1 (403) 467-3351', N'+1 (403) 467-8772', N'laura@chinookcorp.com')
GO
