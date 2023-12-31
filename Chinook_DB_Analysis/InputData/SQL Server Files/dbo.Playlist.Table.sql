/****** Object:  Table [dbo].[Playlist]    Script Date: 29-09-2023 21:12:45 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Playlist]') AND type in (N'U'))
DROP TABLE [dbo].[Playlist]
GO
/****** Object:  Table [dbo].[Playlist]    Script Date: 29-09-2023 21:12:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Playlist](
	[PlaylistId] [int] NOT NULL,
	[Name] [nvarchar](120) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Playlist] ([PlaylistId], [Name]) VALUES (1, N'Music')
INSERT [dbo].[Playlist] ([PlaylistId], [Name]) VALUES (2, N'Movies')
INSERT [dbo].[Playlist] ([PlaylistId], [Name]) VALUES (3, N'TV Shows')
INSERT [dbo].[Playlist] ([PlaylistId], [Name]) VALUES (4, N'Audiobooks')
INSERT [dbo].[Playlist] ([PlaylistId], [Name]) VALUES (5, N'90’s Music')
INSERT [dbo].[Playlist] ([PlaylistId], [Name]) VALUES (6, N'Audiobooks')
INSERT [dbo].[Playlist] ([PlaylistId], [Name]) VALUES (7, N'Movies')
INSERT [dbo].[Playlist] ([PlaylistId], [Name]) VALUES (8, N'Music')
INSERT [dbo].[Playlist] ([PlaylistId], [Name]) VALUES (9, N'Music Videos')
INSERT [dbo].[Playlist] ([PlaylistId], [Name]) VALUES (10, N'TV Shows')
INSERT [dbo].[Playlist] ([PlaylistId], [Name]) VALUES (11, N'Brazilian Music')
INSERT [dbo].[Playlist] ([PlaylistId], [Name]) VALUES (12, N'Classical')
INSERT [dbo].[Playlist] ([PlaylistId], [Name]) VALUES (13, N'Classical 101 - Deep Cuts')
INSERT [dbo].[Playlist] ([PlaylistId], [Name]) VALUES (14, N'Classical 101 - Next Steps')
INSERT [dbo].[Playlist] ([PlaylistId], [Name]) VALUES (15, N'Classical 101 - The Basics')
INSERT [dbo].[Playlist] ([PlaylistId], [Name]) VALUES (16, N'Grunge')
INSERT [dbo].[Playlist] ([PlaylistId], [Name]) VALUES (17, N'Heavy Metal Classic')
INSERT [dbo].[Playlist] ([PlaylistId], [Name]) VALUES (18, N'On-The-Go 1')
GO
