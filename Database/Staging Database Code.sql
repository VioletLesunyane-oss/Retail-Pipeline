
-- =============================================
-- Create a staging database
-- =============================================
IF NOT EXISTS (
    SELECT 1
    FROM sys.databases
    WHERE name = 'retail_stg'
)
BEGIN
    CREATE DATABASE retail_stg;
END;
GO
