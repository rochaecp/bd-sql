# SELECT com GROUP BY

## SELECT com GROUP BY simples

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

## SELECT com GROUP BY com HAVING

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