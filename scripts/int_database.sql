/*
=======================
Create Database and schemas
=======================
Script Purpose:
  This script creates a new database named "Datawarehouse" after checking if it already exists.
  If it already exists, it is dropped and recreated. Additionally, the scripts setup three schemas 
  with in the database 'bronze', 'silver' and 'gold'.

WARNING:
  Running this script will drop the entire 'Datawarehouse' database if it exists.
  All data in the database will be permanently deleted. Proceed with caution and 
  ensure you have proper backups before running this script.
*/

USE master;
Go
  
- Drop and recreate the 'Datawarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'Datawarehouse' )
BEGIN
   ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
   DROP DATABASE DataWarehouse;
END;
GO
  
-- Create the 'Datawarehouse' database
CREATE DATABASE DataWarehouse;
Go
  
USE Datawarehouse;
Go
  
--Create Schemas
CREATE SCHEMA bronze;
Go
  
CREATE SCHEMA silver;
Go
  
CREATE SCHEMA gold;
Go
