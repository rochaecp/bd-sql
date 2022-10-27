# SQL Server - NULL

- Indica a ausência de valor.
- Se em uma expressão lógica existir o valor NULL, o resultado será UNKNOWN.

Algumas expressões lógicas que geram UNKNOWN como saída:

~~~sql
NULL = 0
NULL <> 0
NULL > 0
NULL = NULL 
~~~

## Testando se um valor é NULL

- Para isso utilizamos o operador IS NULL:

~~~sql
SELECT
    id_marca,
    nome_marca
FROM
    producao.marcas
WHERE
    nome_marca IS NULL
~~~

## Testando se um valor não é NULL

- Para isso utilizamos o operador IS NOT NULL:

~~~sql
SELECT
    id_marca,
    nome_marca
FROM
    producao.marcas
WHERE
    nome_marca IS NOT NULL
~~~

