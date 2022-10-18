# SQL Server - DQL (Data Query Language)

## SELECT *

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
    preco <= 30000
ORDER BY
    preco ASC, -- ASC (default)
    LEN (nome_produto) DESC
~~~

## GROUP BY

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

## HAVING

> - Para filtrar grupos com base em uma ou mais condições, use a cláusula HAVING.

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

## OFFSET e FETCH

~~~sql
SELECT 
    nome_produto,
    preco
FROM
    producao.produtos
ORDER BY
    preco DESC
OFFSET 1 ROWS              -- pula primeiro - {ROW == ROWS}
FETCH NEXT 2 ROWS ONLY     -- (cláusula opcional) pega próximos 2 - {NEXT == FIRST}, {ROW == ROWS}
~~~

## TOP

~~~sql
SELECT TOP 2 -- retorna 2 registros
    nome_produto,
    preco
FROM
    producao.produtos
ORDER BY
    preco DESC    
~~~

~~~sql
SELECT TOP 10 percent -- retorna uma percentagem de registros
    nome_produto,
    preco
FROM
    producao.produtos
ORDER BY
    preco DESC    
~~~    

~~~sql
SELECT TOP 3 WITH TIES -- inclui repetidos mesmo que passe de 3 registros
    nome_produto,
    preco
FROM
    producao.produtos
ORDER BY
    preco DESC    
~~~    

## DISTINCT

~~~sql
SELECT DISTINCT
    preco
FROM
    producao.produtos    
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
