USE [master];
GO

-- Step 1: Backup the existing database if it exists
IF EXISTS (SELECT name FROM sys.databases WHERE name = 'ArgaamScreener_DEV')
BEGIN
    PRINT 'Deleting existing database...';
    ALTER DATABASE [ArgaamScreener_DEV] SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE [ArgaamScreener_DEV];
    PRINT 'Database deleted.';
END;
GO