# SQL Server - SELECT

## Simples

~~~sql
SELECT 
    *    -- evitar
FROM 
    producao.marcas
~~~

## SELECT WHERE com AND

~~~sql
SELECT 
    nome_produto, 
    preco
FROM 
    producao.produtos
WHERE 
preco <= 30000
AND id_produto >= 7;
~~~

## SELECT WHERE com BETWEEN

~~~sql
SELECT 
    nome_produto, 
    preco
FROM 
    producao.produtos
WHERE 
preco BETWEEN 1500 AND 4500 -- inclui 1500 e 4500
~~~

## SELECT WHERE com IN

~~~sql
SELECT 
    nome_produto, 
    preco
FROM 
    producao.produtos
WHERE 
preco IN (1500, 2500, 3000.00)
~~~

## SELECT WHERE com LIKE

~~~sql
SELECT 
    nome_produto, 
    preco
FROM 
    producao.produtos
WHERE 
nome_produto LIKE '%Celular%'
~~~    
