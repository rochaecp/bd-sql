# SQL Server - DQL (Data Query Language)

## Consultar todas as colunas de uma tabela

~~~sql
SELECT 
    *    -- evitar
FROM 
    producao.marcas
~~~

## WHERE e ORDER BY

~~~sql
SELECT 
    nome_produto, 
    preco
FROM 
    producao.produtos
WHERE 
    preco <= 3000
ORDER BY
    preco ASC
~~~

## WHERE, GROUP BY e ORDER BY

~~~sql
SELECT 
    id_categoria,
    COUNT (*) AS Quantidade
FROM 
    producao.produtos
WHERE 
    preco <= 50000
GROUP BY 
    id_categoria
ORDER BY
    id_categoria 
~~~

## WHERE, GROUP BY, HAVING e ORDER BY

- Para filtrar grupos com base em uma ou mais condições, use a cláusula HAVING.

~~~sql
SELECT 
	id_marca,
	COUNT (*)
FROM
	producao.produtos
WHERE
	id_marca < 4
GROUP BY
	id_marca
HAVING 
	COUNT (*) > 1
ORDER BY
	COUNT (*)
~~~

## INNER JOIN

~~~sql
-- inner join (categorias)
SELECT 
    p.id_produto AS IDs, 
    p.nome_produto AS Produtos, 
    c.nome_categoria AS Categorias
FROM 
    producao.produtos p
INNER JOIN producao.categorias c
    ON c.id_categoria = p.id_categoria 

-- inner join (categorias e marcas)
SELECT 
    p.id_produto AS IDs,
    p.nome_produto AS Produtos,
    c.nome_categoria AS Categorias,
    m.nome_marca AS Marcas
FROM 
    producao.produtos p
INNER JOIN producao.marcas m
    ON m.id_marca = p.id_marca
INNER JOIN producao.categorias c
    ON c.id_categoria = p.id_categoria
~~~
