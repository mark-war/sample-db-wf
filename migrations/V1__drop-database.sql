USE master;
GO

-- Step 1: Backup the existing database if it exists
IF EXISTS (SELECT name FROM sys.databases WHERE name = 'ArgaamScreener_DEV')
BEGIN
    PRINT 'Deleting existing database...';

    -- Kill all active connections to the database
    DECLARE @kill varchar(8000) = '';  
    SELECT @kill = @kill + 'KILL ' + CAST(session_id AS varchar) + '; '  
    FROM sys.dm_exec_sessions  
    WHERE database_id = DB_ID('ArgaamScreener_DEV');  
    EXEC(@kill);  

    ALTER DATABASE [ArgaamScreener_DEV] SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE [ArgaamScreener_DEV];
    PRINT 'Database deleted.';
END;
GO
