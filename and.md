# SQL Server - AND

Permite combinar duas ou mais expressões booleanas (a primeira expressão que aparecer será avaliada primeiro).  

Algumas possibilidades de combinações de 2 expressões booleanas:

~~~sql
TRUE AND TRUE       -- TRUE
TRUE AND FALSE 	    -- FALSE
TRUE AND UNKNOWN    -- UNKNOWN

FALSE AND TRUE	    -- FALSE
FALSE AND FALSE	    -- FALSE
FALSE AND UNKNOWN   -- FALSE

UNKNOWN AND TRUE    -- UNKNOWN
UNKNOWN AND FALSE   -- FALSE
UNKNOWN AND UNKNOWN -- UNKNOWN
~~~

## Utilizando o AND

~~~sql
SELECT
    *
FROM
    producao.produtos
WHERE
    id_marca = 1
    AND preco > 1500
~~~
