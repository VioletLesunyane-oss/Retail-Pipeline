
-- =============================================
-- Bronze layer data ingestion
-- =============================================
USE retail_stg;
GO

IF NOT EXISTS (
    SELECT 1
    FROM sys.tables t
    INNER JOIN sys.schemas s
        ON t.schema_id = s.schema_id
    WHERE t.name = 'retail_raw_data'
      AND s.name = 'bronze'
)
BEGIN
    CREATE TABLE [bronze].[retail_raw_data] (
        [Transaction ID] varchar(50),
        [Date] varchar(50),
        [Customer ID] varchar(50),
        [Gender] varchar(50),
        [Age] varchar(50),
        [Product Category] varchar(50),
        [Quantity] varchar(50),
        [Price per Unit] varchar(50),
        [Total Amount] varchar(50)
    );
END;
GO
