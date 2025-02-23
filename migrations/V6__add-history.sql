USE [ArgaamScreener_DEV];
GO

-- Create triggers after tables have been created
CREATE TRIGGER trg_User_Insert
ON [dbo].[Users]
AFTER INSERT
AS
BEGIN
    INSERT INTO [dbo].[UserHistory] ([UserId], [UserName], [IsActive], [ChangeType], [ChangedAt], [ChangedBy])
    SELECT [Id], [UserName], [IsActive], 'INSERT', GETDATE(), NULL
    FROM inserted;
END;
GO

CREATE TRIGGER trg_User_Update
ON [dbo].[Users]
AFTER UPDATE
AS
BEGIN
    INSERT INTO [dbo].[UserHistory] ([UserId], [UserName], [IsActive], [ChangeType], [ChangedAt], [ChangedBy])
    SELECT [Id], [UserName], [IsActive], 'UPDATE', GETDATE(), NULL
    FROM inserted;
END;
GO

CREATE TRIGGER trg_User_Delete
ON [dbo].[Users]
AFTER DELETE
AS
BEGIN
    INSERT INTO [dbo].[UserHistory] ([UserId], [UserName], [IsActive], [ChangeType], [ChangedAt], [ChangedBy])
    SELECT [Id], [UserName], [IsActive], 'DELETE', GETDATE(), NULL
    FROM deleted;
END;
GO