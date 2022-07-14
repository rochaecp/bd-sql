# SQL Server - DML (Data Manipulation Language)

## INSERT - Inserir um Registro

~~~sql
INSERT INTO dbo.Customers
   ([CustomerId],[Name],[Location],[Email])
VALUES
   ( 1, N'Orlando', N'Australia', N''),
   ( 2, N'Keith', N'India', N'keith0@adventure-works.com'),
   ( 3, N'Donna', N'Germany', N'donna0@adventure-works.com'),
   ( 4, N'Janet', N'United States', N'janet1@adventure-works.com')
~~~

## UPDATE - Atualizar um Registro

~~~sql
UPDATE dbo.Customers
SET Name = 'Mauricio'
WHERE Id = 1
~~~

## DELETE - Deletar um Registro

~~~sql
DELETE FROM dbo.Customers
WHERE Id = 1;
~~~


