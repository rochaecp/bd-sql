## SELECT com TOP

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