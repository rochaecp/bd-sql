# SELECT com OFFSET e FETCH

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