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
    CONSTRAINT [PK_Users] PRIMARY KEY ([Id])
);

-- Create UserHistory table
CREATE TABLE [dbo].[UserHistory] (
    [HistoryId] [int] IDENTITY(1,1) NOT NULL,
    [UserId] [int] NOT NULL,
    [UserName] [nvarchar](max) NOT NULL,
    [IsActive] [bit] NOT NULL,
    [ChangeType] [nvarchar](max) NOT NULL,
    [ChangedAt] [datetime] NOT NULL DEFAULT GETDATE(),
    [ChangedBy] [nvarchar](max) NULL,
    CONSTRAINT [PK_UserHistory] PRIMARY KEY ([HistoryId]),
    CONSTRAINT [FK_UserHistory_User] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users]([Id]),
    CONSTRAINT [CK_UserHistory_ChangeType] CHECK ([ChangeType] IN ('INSERT', 'UPDATE', 'DELETE'))
);
