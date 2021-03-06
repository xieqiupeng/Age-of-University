SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PD](
	[Pnum] [nvarchar](10) NOT NULL,
	[Pno] [nvarchar](10) NOT NULL,
	[Sno] [nvarchar](10) NOT NULL,
	[Mno] [nvarchar](10) NOT NULL,
	[Cno] [nvarchar](20) NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Place]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Place](
	[Pno] [nvarchar](10) NOT NULL,
	[Cno] [nvarchar](20) NULL,
	[Pname] [nvarchar](10) NULL,
	[Padd] [nvarchar](50) NULL,
	[Phdept] [nvarchar](10) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Role]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Role](
	[id] [int] NOT NULL,
	[username] [nvarchar](50) NULL,
	[pwd] [nvarchar](50) NULL,
	[rolename] [nvarchar](50) NULL,
	[role] [nvarchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Section]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Section](
	[Sno] [nvarchar](10) NOT NULL,
	[Cno] [nvarchar](20) NULL,
	[Sname] [nvarchar](80) NULL,
	[Sadd] [nvarchar](50) NULL,
	[Shdept] [nvarchar](30) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[users]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[users](
	[id] [int] NOT NULL,
	[username] [nvarchar](50) NULL,
	[pwd] [nvarchar](50) NULL,
	[rolename] [nvarchar](50) NULL,
	[role] [nvarchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Clerk]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Clerk](
	[Cno] [nvarchar](20) NOT NULL,
	[Cname] [nvarchar](10) NULL,
	[Csex] [nvarchar](5) NULL,
	[Cage] [nvarchar](5) NULL,
	[Cofficephone] [nvarchar](20) NULL,
	[Chomephone] [nvarchar](20) NULL,
	[Ctelephone] [nvarchar](20) NULL,
	[Cmsn] [nvarchar](20) NULL,
	[Cqq] [nvarchar](15) NULL,
	[Cmail] [nvarchar](35) NULL,
	[Crank] [nvarchar](10) NULL,
	[Cposition] [nvarchar](10) NULL,
	[Pno] [nvarchar](10) NULL,
	[Sno] [nvarchar](10) NULL,
	[Mno] [nvarchar](10) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[files]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[files](
	[id] [int] NOT NULL,
	[filename] [nvarchar](50) NULL,
	[username] [int] NULL,
	[summary] [nvarchar](50) NULL,
	[parterner] [int] NULL,
	[filepath] [nvarchar](200) NULL,
	[filearea] [nvarchar](50) NULL,
	[fileexe] [nvarchar](50) NULL,
	[filetype] [nvarchar](200) NULL,
	[draft] [nvarchar](50) NULL,
	[pdraft] [nvarchar](50) NULL,
	[start] [nvarchar](50) NULL,
	[comment] [nvarchar](50) NULL,
	[addtime] [datetime] NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Manager]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Manager](
	[Mno] [nvarchar](10) NOT NULL,
	[Cno] [nvarchar](20) NULL,
	[Mname] [nvarchar](10) NULL,
	[Madd] [nvarchar](50) NULL,
	[Mhdept] [nvarchar](10) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PA](
	[Pnum] [nvarchar](10) NOT NULL,
	[Patime] [nvarchar](10) NULL,
	[Pftime] [nvarchar](10) NULL,
	[Cno] [nvarchar](20) NULL,
	[Panswer] [nvarchar](50) NULL,
	[Pstate] [nvarchar](10) NULL,
	[Pnextdept] [nvarchar](10) NULL,
	[Ppredept] [nvarchar](10) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Paper]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Paper](
	[Pnum] [nvarchar](10) NOT NULL,
	[Cno] [nvarchar](20) NULL,
	[Pstime] [nvarchar](10) NULL,
	[Psummary] [nvarchar](160) NULL,
	[Pattachment] [nvarchar](30) NULL,
	[Ppartener] [nvarchar](40) NULL,
	[Pdraft] [nvarchar](20) NULL,
	[Ppdraft] [nvarchar](20) NULL,
	[Pstart] [nvarchar](20) NULL,
	[Pfinish] [nvarchar](20) NULL,
	[Pcomment] [nvarchar](100) NULL
) ON [PRIMARY]
END
