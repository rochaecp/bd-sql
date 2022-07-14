# SQL Server - DML (Data Manipulation Language)

## INSERT - Inserir um Registro

- Exemplo básico

~~~sql
INSERT INTO dbo.Customers
      (CustomerId, Name, Location, Email)
VALUES
      ( 1, N'Orlando', N'Australia', N''),
      ( 2, N'Keith', N'India', N'keith0@adventure-works.com'),
      ( 3, N'Donna', N'Germany', N'donna0@adventure-works.com'),
      ( 4, N'Janet', N'United States', N'janet1@adventure-works.com')
~~~

- Exemplo BikeStores

~~~sql
USE BikeStores

-- production.brands
SET IDENTITY_INSERT production.brands ON;

INSERT INTO production.brands
   (brand_id, brand_name) 
VALUES
   (1, 'Electra'),
   (2, 'Haro');
   
SET IDENTITY_INSERT production.brands OFF;

-- production.categories
SET IDENTITY_INSERT production.categories ON;

INSERT INTO production.categories
   (category_id, category_name) 
VALUES
   (1, 'Children Bicycles'),
   (2, 'Comfort Bicycles');
   
SET IDENTITY_INSERT production.categories OFF; 

-- production.products
SET IDENTITY_INSERT production.products ON;

INSERT INTO production.products
   (product_id, product_name, brand_id, category_id, model_year, list_price) 
VALUES
   (1, 'Trek 820 - 2016', 1, 2, 2016, 379.99),
   (2, 'Ritchey Timberwolf Frameset - 2016', 2, 1, 2016, 749.99);
   
SET IDENTITY_INSERT production.products OFF;

-- sales.customers
INSERT INTO sales.customers
   (first_name, last_name, phone, email, street, city, state, zip_code) 
VALUES
   ('Debra', 'Burks',NULL, 'debra.burks@yahoo.com', '9273 Thorne Ave. ', 'Orchard Park', 'NY', 14127),
   ('Kasha', 'Todd',NULL, 'kasha.todd@yahoo.com', '910 Vine Street ', 'Campbell', 'CA', 95008);

-- sales.stores
INSERT INTO sales.stores
	(store_name, phone, email, street, city, state, zip_code)
VALUES
	('Santa Cruz Bikes', '(831) 476-4321', 'santacruz@bikes.shop', '3700 Portola Drive', 'Santa Cruz', 'CA', 95060),
	('Baldwin Bikes', '(516) 379-8888', 'baldwin@bikes.shop', '4200 Chestnut Lane', 'Baldwin','NY', 11432),
	('Rowlett Bikes', '(972) 530-5555', 'rowlett@bikes.shop', '8000 Fairway Avenue', 'Rowlett','TX',75088);

-- production.stocks 
INSERT INTO production.stocks
   (store_id, product_id, quantity) 
VALUES
   (1, 1, 27),
   (1, 2, 5);

-- sales.staffs
SET IDENTITY_INSERT sales.staffs ON;

INSERT INTO sales.staffs
   (staff_id, first_name, last_name, email, phone, active, store_id, manager_id) 
VALUES
   (1, 'Fabiola', 'Jackson', 'fabiola.jackson@bikes.shop', '(831) 555-5554', 1, 1, NULL),
   (2, 'Mireya', 'Copeland', 'mireya.copeland@bikes.shop', '(831) 555-5555', 1, 1, 1);

SET IDENTITY_INSERT sales.staffs OFF;  

-- sales.orders
SET IDENTITY_INSERT sales.orders ON; 

INSERT INTO sales.orders
   (order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) 
VALUES
   (1, 1, 4, '20160101', '20160103', '20160103', 1, 2),
   (2, 2, 4, '20160101', '20160104', '20160103', 2, 1);

SET IDENTITY_INSERT sales.orders OFF;  

-- sales.order_items
INSERT INTO sales.order_items
   (order_id, item_id, product_id, quantity, list_price,discount) 
VALUES
   (1, 1, 2, 1, 599.99, 0.2),
   (1, 2, 1, 2, 1799.99, 0.07);
~~~

## UPDATE - Atualizar um Registro

- Exemplo básico

~~~sql
UPDATE dbo.Customers
SET Name = 'Mauricio'
WHERE Id = 1
~~~

## DELETE - Deletar um Registro

- Exemplo básico

~~~sql
DELETE FROM dbo.Customers
WHERE Id = 1;
~~~


