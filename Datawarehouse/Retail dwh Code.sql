-- =============================================
-- Create the retail_dwh database 
-- =============================================
--
IF NOT EXISTS (
    SELECT 1
    FROM sys.databases
    WHERE name = 'retail_dwh'
)
BEGIN
    CREATE DATABASE retail_dwh;
END;
GO
