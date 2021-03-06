USE [MitekMonitoring]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Monitoring]') AND type in (N'U'))
ALTER TABLE [dbo].[Monitoring] DROP CONSTRAINT IF EXISTS [DF__Monitorin__Error__36B12243]
GO
/****** Object:  Table [dbo].[Monitoring]    Script Date: 5/15/2020 9:20:41 AM ******/
DROP TABLE IF EXISTS [dbo].[Monitoring]
GO
/****** Object:  Table [dbo].[Application]    Script Date: 5/15/2020 9:20:41 AM ******/
DROP TABLE IF EXISTS [dbo].[Application]
GO
/****** Object:  Table [dbo].[Application]    Script Date: 5/15/2020 9:20:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Application](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ShortDesc] [nvarchar](200) NOT NULL,
	[LongDesc] [nvarchar](500) NULL,
	[AuthToken] [nvarchar](500) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Monitoring]    Script Date: 5/15/2020 9:20:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Monitoring](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AppID] [int] NOT NULL,
	[AppArea] [nvarchar](200) NULL,
	[Information] [nvarchar](max) NULL,
	[Comments] [nvarchar](500) NULL,
	[Error] [bit] NOT NULL,
	[DateModified] [date] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Application] ON 

INSERT [dbo].[Application] ([ID], [ShortDesc], [LongDesc], [AuthToken]) VALUES (1, N'ConnDes', N'ConnectionDesign', N'E1C878EB623D49FB8244FE74778E7335')
SET IDENTITY_INSERT [dbo].[Application] OFF
ALTER TABLE [dbo].[Monitoring] ADD  DEFAULT ((0)) FOR [Error]
GO
