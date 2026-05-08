/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'DataWarehouse' after checking if it already exists. 
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
    within the database: 'bronze', 'silver', and 'gold'.
	
WARNING:
    Running this script will drop the entire 'DataWarehouse' database if it exists. 
    All data in the database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.
*/




CREATE DATABASE DataWarehouse_May2026

USE DataWarehouse_May2026


---Drop and recreate the DataWarehouse_May2026 database

IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse_May2026')

BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER with ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse
END;
GO


CREATE SCHEMA bronze_2026
GO
CREATE SCHEMA silver_2026
GO
CREATE SCHEMA gold_2026
GO


