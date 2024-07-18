# SQL Server - UPDATE 

## Atualizar um registro

~~~sql
USE LojasInformatica

UPDATE producao.marcas
SET nome_marca = 'Toshiba'
WHERE id_marca = 4
~~~

## Atualizar um registro - outra forma
    
~~~sql
UPDATE <APELIDO> SET
    <APELIDO>.<NOME_COLUNA> = <VALOR>
FROM <NOME_TABELA> <APELIDO> WITH (NOLOCK)
WHERE <APELIDO>.<NOME_COLUNA> = <VALOR_CONDICAO>
~~~
