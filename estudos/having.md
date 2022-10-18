# SQL Server - HAVING

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



