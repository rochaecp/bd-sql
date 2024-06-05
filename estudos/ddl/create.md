# SQL Server - CREATE

## Criar um Banco de Dados

~~~sql
USE master

IF NOT EXISTS (
SELECT name
FROM sys.databases
WHERE name = N'LojasInformatica'
)
CREATE DATABASE LojasInformatica;
~~~

## Criar um Schema

~~~sql
USE LojasInformatica

CREATE SCHEMA producao;
GO

CREATE SCHEMA vendas;
GO
~~~

## Criar uma Tabela

~~~sql
USE LojasInformatica

-- Apaga dados de uma tabela se ela já existir
IF OBJECT_ID('producao.categorias', 'U') IS NOT NULL
DROP TABLE producao.categorias

USE LojasInformatica

-- producao.categorias
CREATE TABLE producao.categorias (
    id_categoria INT IDENTITY (1, 1) PRIMARY KEY,
    nome_categoria VARCHAR (255) NOT NULL
);

-- producao.marcas
CREATE TABLE producao.marcas (
    id_marca INT IDENTITY (1, 1) PRIMARY KEY,
    nome_marca VARCHAR (255) NOT NULL
);

-- producao.produtos
CREATE TABLE producao.produtos (
    id_produto INT IDENTITY (1, 1) PRIMARY KEY,
    nome_produto VARCHAR (255) NOT NULL,
    id_marca INT NOT NULL,
    id_categoria INT NOT NULL,
    preco DECIMAL (10, 2) NOT NULL,
    FOREIGN KEY (id_marca) REFERENCES producao.marcas (id_marca) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_categoria) REFERENCES producao.categorias (id_categoria) ON DELETE CASCADE ON UPDATE CASCADE
);
~~~
