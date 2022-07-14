# SQL Server - DDL (Data Definition Language)

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
