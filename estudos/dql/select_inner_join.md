# SELECT com INNER JOIN

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