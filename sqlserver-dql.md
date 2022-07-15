# SQL Server - DQL (Data Query Language)

## Consultar uma Tabela

~~~sql
SELECT * 
FROM producao.marcas
~~~

## INNER JOIN

~~~sql
-- inner join (categorias)
SELECT 
    id_produto AS IDs, 
    nome_produto AS Produtos, 
    nome_categoria AS Categorias
FROM 
    producao.produtos p
INNER JOIN producao.categorias c
    ON c.id_categoria = p.id_categoria 

-- inner join (categorias e marcas)
SELECT 
    id_produto AS IDs,
    nome_produto AS Produtos,
    nome_categoria AS Categorias,
    nome_marca AS Marcas
FROM 
    producao.produtos p
INNER JOIN producao.marcas m
    ON m.id_marca = p.id_marca
INNER JOIN producao.categorias c
    ON c.id_categoria = p.id_categoria
~~~
