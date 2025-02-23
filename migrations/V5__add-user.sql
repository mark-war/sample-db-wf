USE [ArgaamScreener_DEV];
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Create Users table with a primary key on the Id column
CREATE TABLE [dbo].[Users](
    [Id] [int] IDENTITY(1,1) NOT NULL,
    [UserName] [nvarchar](max) NOT NULL,
    [IsActive] [bit] NOT NULL,
    CONSTRAINT [PK_Users] PRIMARY KEY ([Id])  -- Define primary key on Id column
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY];
GO
