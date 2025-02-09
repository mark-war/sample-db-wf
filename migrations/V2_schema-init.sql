SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChartTabs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NameEn] [nvarchar](255) NOT NULL,
	[NameAr] [nvarchar](255) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[DisplaySeq] [int] NULL,
	[IsSelected] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FieldConfigurations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SetupId] [int] NULL,
	[FieldId] [int] NULL,
	[FieldNameEn] [nvarchar](255) NOT NULL,
	[FieldNameAr] [nvarchar](255) NOT NULL,
	[UnitNameEn] [nvarchar](255) NULL,
	[UnitNameAr] [nvarchar](255) NULL,
	[DisplaySeq] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[Arguments] [nvarchar](max) NULL,
	[SECTORID] [int] NULL,
	[IndicatorID] [int] NULL,
	[ShowPercentage] [bit] NULL,
	[NotesEn] [nvarchar](500) NULL,
	[NotesAr] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FilterConfig](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ConfigJson] [nvarchar](max) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[FieldConfigurationID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FilterConfig25Sep2024](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ConfigJson] [nvarchar](max) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[FieldConfigurationID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Filters](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[DisplaySeq] [int] NULL,
	[IsSelected] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SetupData](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[DisplayNameEn] [nvarchar](255) NOT NULL,
	[DisplayNameAr] [nvarchar](255) NOT NULL,
	[WidgetId] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsSelected] [bit] NULL,
	[ParentId] [int] NULL,
	[DisplaySeq] [decimal](18, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Widgets](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NameEn] [nvarchar](255) NOT NULL,
	[NameAr] [nvarchar](255) NOT NULL,
	[IsActive] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[GetFieldsConfigurations] 
AS
BEGIN
    SELECT 
	    FC.Id AS Pkey,
        SetupId AS TabID,
        FieldNameEn, 
        FieldNameAr, 
        UnitNameEn, 
        UnitNameAr, 
        ConfigJson,
		Arguments as Args,
		SECTORID AS SectorID,
		IndicatorID,
		CASE WHEN ShowPercentage = 1 THEN 1 ELSE 0 END AS ShowPercentage,
	    NotesEn , 
		NotesAr
    FROM 
        FieldConfigurations FC
    INNER JOIN 
        FilterConfig FCC ON FC.Id = FCC.FieldConfigurationID 
    WHERE 
        FC.IsActive = 1
    ORDER BY 
        SetupId, 
		SECTORID,
        DisplaySeq;
END;
GO