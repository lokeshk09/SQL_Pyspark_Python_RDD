/****** Object:  Table [dbo].[department]    Script Date: 29-09-2023 21:12:45 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[department]') AND type in (N'U'))
DROP TABLE [dbo].[department]
GO
/****** Object:  Table [dbo].[department]    Script Date: 29-09-2023 21:12:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[department](
	[dept_id] [int] NULL,
	[dept_name] [varchar](100) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[department] ([dept_id], [dept_name]) VALUES (10, N'it')
INSERT [dbo].[department] ([dept_id], [dept_name]) VALUES (30, N'hr')
INSERT [dbo].[department] ([dept_id], [dept_name]) VALUES (20, N'tis')
GO
