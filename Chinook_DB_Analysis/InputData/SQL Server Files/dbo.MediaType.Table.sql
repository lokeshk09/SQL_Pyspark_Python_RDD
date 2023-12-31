/****** Object:  Table [dbo].[MediaType]    Script Date: 29-09-2023 21:12:45 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MediaType]') AND type in (N'U'))
DROP TABLE [dbo].[MediaType]
GO
/****** Object:  Table [dbo].[MediaType]    Script Date: 29-09-2023 21:12:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MediaType](
	[MediaTypeId] [int] NOT NULL,
	[Name] [nvarchar](120) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[MediaType] ([MediaTypeId], [Name]) VALUES (1, N'MPEG audio file')
INSERT [dbo].[MediaType] ([MediaTypeId], [Name]) VALUES (2, N'Protected AAC audio file')
INSERT [dbo].[MediaType] ([MediaTypeId], [Name]) VALUES (3, N'Protected MPEG-4 video file')
INSERT [dbo].[MediaType] ([MediaTypeId], [Name]) VALUES (4, N'Purchased AAC audio file')
INSERT [dbo].[MediaType] ([MediaTypeId], [Name]) VALUES (5, N'AAC audio file')
GO
