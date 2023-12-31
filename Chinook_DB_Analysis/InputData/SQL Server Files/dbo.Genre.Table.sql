/****** Object:  Table [dbo].[Genre]    Script Date: 29-09-2023 21:12:45 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Genre]') AND type in (N'U'))
DROP TABLE [dbo].[Genre]
GO
/****** Object:  Table [dbo].[Genre]    Script Date: 29-09-2023 21:12:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genre](
	[GenreId] [int] NOT NULL,
	[Name] [nvarchar](120) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Genre] ([GenreId], [Name]) VALUES (1, N'Rock')
INSERT [dbo].[Genre] ([GenreId], [Name]) VALUES (2, N'Jazz')
INSERT [dbo].[Genre] ([GenreId], [Name]) VALUES (3, N'Metal')
INSERT [dbo].[Genre] ([GenreId], [Name]) VALUES (4, N'Alternative & Punk')
INSERT [dbo].[Genre] ([GenreId], [Name]) VALUES (5, N'Rock And Roll')
INSERT [dbo].[Genre] ([GenreId], [Name]) VALUES (6, N'Blues')
INSERT [dbo].[Genre] ([GenreId], [Name]) VALUES (7, N'Latin')
INSERT [dbo].[Genre] ([GenreId], [Name]) VALUES (8, N'Reggae')
INSERT [dbo].[Genre] ([GenreId], [Name]) VALUES (9, N'Pop')
INSERT [dbo].[Genre] ([GenreId], [Name]) VALUES (10, N'Soundtrack')
INSERT [dbo].[Genre] ([GenreId], [Name]) VALUES (11, N'Bossa Nova')
INSERT [dbo].[Genre] ([GenreId], [Name]) VALUES (12, N'Easy Listening')
INSERT [dbo].[Genre] ([GenreId], [Name]) VALUES (13, N'Heavy Metal')
INSERT [dbo].[Genre] ([GenreId], [Name]) VALUES (14, N'R&B/Soul')
INSERT [dbo].[Genre] ([GenreId], [Name]) VALUES (15, N'Electronica/Dance')
INSERT [dbo].[Genre] ([GenreId], [Name]) VALUES (16, N'World')
INSERT [dbo].[Genre] ([GenreId], [Name]) VALUES (17, N'Hip Hop/Rap')
INSERT [dbo].[Genre] ([GenreId], [Name]) VALUES (18, N'Science Fiction')
INSERT [dbo].[Genre] ([GenreId], [Name]) VALUES (19, N'TV Shows')
INSERT [dbo].[Genre] ([GenreId], [Name]) VALUES (20, N'Sci Fi & Fantasy')
INSERT [dbo].[Genre] ([GenreId], [Name]) VALUES (21, N'Drama')
INSERT [dbo].[Genre] ([GenreId], [Name]) VALUES (22, N'Comedy')
INSERT [dbo].[Genre] ([GenreId], [Name]) VALUES (23, N'Alternative')
INSERT [dbo].[Genre] ([GenreId], [Name]) VALUES (24, N'Classical')
INSERT [dbo].[Genre] ([GenreId], [Name]) VALUES (25, N'Opera')
GO
