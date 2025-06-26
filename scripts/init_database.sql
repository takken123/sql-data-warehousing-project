/*
CREATE DATABASE AND SCHEMA
========================================
below query create new database with name DataWarehouse.
if DataWarehouse is already exists then first it drop DataWarehouse and then create new database with name DataWarehouse
also it create new schema bronze,siler and gold


==========================================


*/

USE master;
IF EXISTS(SELECT  1  FROM SYS.DATABASES WHERE NAME='DataWarehouse')
BEGIN

ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE
DROP DATABASE   DataWarehouse


END;
GO
----------CREATE DATABASE-------------

  
CREATE DATABASE DataWarehouse;
GO
USE DataWarehouse

-------------CREATE SCHEMA--------
create schema bronze;
GO

create schema silver;
GO
create schema gold ;
