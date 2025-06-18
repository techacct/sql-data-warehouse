/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script checks for the existence of a database named DataWarehouse.
If the database already exists, it is dropped and recreated. Afterward, the script sets up three schemas within the new database: bronze, silver, and gold.

⚠️ Warning:
Running this script will permanently delete the existing DataWarehouse database, along with all its data.
Please proceed with caution and ensure you have valid backups before executing the script.
*/

USE master;
GO

-- Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO

-- Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
