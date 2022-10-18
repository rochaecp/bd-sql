# SQL Server - DQL (Data Query Language)

## WHERE 

### AND

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

### BETWEEN

~~~sql
SELECT 
    nome_produto, 
    preco
FROM 
    producao.produtos
WHERE 
   preco BETWEEN 1500 AND 4500 -- inclui 1500 e 4500
~~~

### IN

~~~sql
SELECT 
    nome_produto, 
    preco
FROM 
    producao.produtos
WHERE 
   preco IN (1500, 2500, 3000.00)
~~~

### LIKE

~~~sql
SELECT 
    nome_produto, 
    preco
FROM 
    producao.produtos
WHERE 
   nome_produto LIKE '%Celular%'
~~~