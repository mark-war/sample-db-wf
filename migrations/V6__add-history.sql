-- V6__add_user_history_table.sql

-- Creating the UserHistory table
CREATE TABLE [dbo].[UserHistory] (
    [HistoryId] [int] IDENTITY(1,1) NOT NULL,
    [UserId] [int] NOT NULL,
    [UserName] [nvarchar](max) NOT NULL,
    [IsActive] [bit] NOT NULL,
    [ChangeType] [nvarchar](max) NOT NULL,
    [ChangedAt] [datetime] NOT NULL DEFAULT GETDATE(), -- Timestamp of the change
    [ChangedBy] [nvarchar](max) NULL,  -- Optional: could store user who made the change
    CONSTRAINT [PK_UserHistory] PRIMARY KEY ([HistoryId]),
    CONSTRAINT [FK_UserHistory_User] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users]([Id]),
    CONSTRAINT [CK_UserHistory_ChangeType] CHECK ([ChangeType] IN ('INSERT', 'UPDATE', 'DELETE')) -- Ensuring only 'INSERT', 'UPDATE', or 'DELETE' values
) ON [PRIMARY];
GO

-- Trigger for INSERT on Users table
CREATE TRIGGER trg_User_Insert
ON [dbo].[Users]
AFTER INSERT
AS
BEGIN
    INSERT INTO [dbo].[UserHistory] ([UserId], [UserName], [IsActive], [ChangeType], [ChangedAt], [ChangedBy])
    SELECT [Id], [UserName], [IsActive], 'INSERT', GETDATE(), NULL
    FROM inserted;
END
GO

-- Trigger for UPDATE on Users table
CREATE TRIGGER trg_User_Update
ON [dbo].[Users]
AFTER UPDATE
AS
BEGIN
    INSERT INTO [dbo].[UserHistory] ([UserId], [UserName], [IsActive], [ChangeType], [ChangedAt], [ChangedBy])
    SELECT [Id], [UserName], [IsActive], 'UPDATE', GETDATE(), NULL
    FROM inserted;
END
GO

-- Trigger for DELETE on Users table
CREATE TRIGGER trg_User_Delete
ON [dbo].[Users]
AFTER DELETE
AS
BEGIN
    INSERT INTO [dbo].[UserHistory] ([UserId], [UserName], [IsActive], [ChangeType], [ChangedAt], [ChangedBy])
    SELECT [Id], [UserName], [IsActive], 'DELETE', GETDATE(), NULL
    FROM deleted;
END
GO
