-- Run this manually before Flyway migration
IF EXISTS (SELECT name FROM sys.databases WHERE name = 'ArgaamScreener_DEV')
BEGIN
    DECLARE @BackupPath NVARCHAR(500) = 'C:\Backup\ArgaamScreener_DEV_' + 
                                        FORMAT(GETDATE(), 'yyyyMMdd_HHmmss') + '.bak';

    PRINT 'Backing up existing database...';
    BACKUP DATABASE [ArgaamScreener_DEV] TO DISK = @BackupPath WITH FORMAT, INIT;
    PRINT 'Backup complete.';
END;
GO
