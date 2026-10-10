-- =============================================
-- Create Bronze Schema in retail_stg
-- =============================================

USE retail_stg;
GO

IF NOT EXISTS (
    SELECT 1
    FROM sys.schemas
    WHERE name = 'bronze'
)
BEGIN
    EXEC('CREATE SCHEMA bronze');
END;
GO


-- =============================================
-- Create Silver Schema in retail_dwh
-- =============================================

USE retail_dwh;
GO

IF NOT EXISTS (
    SELECT 1
    FROM sys.schemas
    WHERE name = 'silver'
)
BEGIN
    EXEC('CREATE SCHEMA silver');
END;
GO


-- =============================================
-- Create Gold Schema in retail_dwh
-- =============================================

USE retail_dwh;
GO

IF NOT EXISTS (
    SELECT 1
    FROM sys.schemas
    WHERE name = 'gold'
)
BEGIN
    EXEC('CREATE SCHEMA gold');
END;
GO
