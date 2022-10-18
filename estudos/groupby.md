# SQL Server - DQL (Data Query Language)

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