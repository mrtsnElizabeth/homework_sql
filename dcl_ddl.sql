CREATE DATABASE TestDb;
GO
CREATE SCHEMA TestSchema;
GO

CREATE TABLE TestSchema.TestTable
(
Id INT NOT NULL,
Name VARCHAR(20),
IsSold BIT,
InvoiceDate DATE
);
GO

USE TestDb
GO
INSERT INTO TestSchema.TestTable
VALUES
(1, 'Boat', 1, '2020-11-08'),
(2,'Auto', 0, '2020-11-09'),
(3,'Plane', null, '2020-12-09');
GO

CREATE USER TestUser IDENTIFIED BY TestUser!12345;
GO

GRANT CONNECT PRIVILEGES ON TestDb TO TestUser;
GO

FLUSH PRIVILEGES;
GO

SHOW GRANTS FOR TestUser;
GO

GRANT SELECT PRIVILEGES ON TestDb.TestTable TO TestUser;
GO

DROP USER TestUser;
GO