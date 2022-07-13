# SQL Server

## Criar um Banco de Dados

~~~sql
USE master

IF NOT EXISTS (
   SELECT name
   FROM sys.databases
   WHERE name = N'TutorialDB'
)
CREATE DATABASE [TutorialDB]
~~~

## Deletar um Banco de Dados

~~~sql
USE master
 
DROP DATABASE Sales, NewSales
~~~

## Criar um Schema

~~~sql
CREATE SCHEMA sales
~~~

## Criar uma Tabela

~~~sql
USE [TutorialDB]

-- Drop the table if it already exists
IF OBJECT_ID('dbo.Customers', 'U') IS NOT NULL
DROP TABLE dbo.Customers

-- Create a new table called 'Customers' in schema 'dbo'
CREATE TABLE dbo.Customers (
   CustomerId  INT             NOT NULL  IDENTITY(1,1)  PRIMARY KEY, 
   Name        [NVARCHAR](50)  NOT NULL,
   Location    [NVARCHAR](50)  NOT NULL,
   Email       [NVARCHAR](50)  NOT NULL
);
~~~

## Deletar uma Tabela

~~~sql
USE TutorialDB

DROP TABLE dbo.Customers
~~~

## Inserir um Registro

~~~sql
INSERT INTO dbo.Customers
   ([CustomerId],[Name],[Location],[Email])
VALUES
   ( 1, N'Orlando', N'Australia', N''),
   ( 2, N'Keith', N'India', N'keith0@adventure-works.com'),
   ( 3, N'Donna', N'Germany', N'donna0@adventure-works.com'),
   ( 4, N'Janet', N'United States', N'janet1@adventure-works.com')
~~~

## Deletar um Registro

~~~sql
DELETE FROM dbo.Customers
WHERE Id = 1;
~~~

## Atualizar um Registro

~~~sql
UPDATE dbo.Customers
SET Name = 'Mauricio'
WHERE Id = 1
~~~

## Consultar uma Tabela

~~~sql
SELECT * FROM dbo.Customers
~~~

- - - - - - - - - - - - - 

## Geral

~~~sql
-- Checar qual é o DB atual 
SELECT DB_NAME()

-- Listar todos BDs
SELECT name
FROM sys.databases

-- Versão do SQL Server
SELECT @@VERSION
~~~
