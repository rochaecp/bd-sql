# SQL Server - Tipos de Dados

## Numéricos

### Inteiros

| Tipo          | Tamanho   | Obs.:                             |
| :---:         | :---:     | :---:                             |
| bit           | 8 bytes   | 0, 1 ou NULL                      |
| tinyint       | 1 byte    | 0 a 255                           |
| smallint      | 2 bytes   | -32,768 a 32,767                  |
| int           | 4 bytes   | -2,147,483,648 a 2,147,483,647    |

### Decimais e ponto flutuante

| Tipo          | Tamanho   | Obs.: |
| :---:         | :---:     | :---: |
| bigint        | 8 bytes   | -9,223,372,036,854,775,808 a 9,223,372,036,854,775,807      |
| decimal(p, s) | xx bytes  |       |
| numeric(p, s) | xx bytes  |       |
| smallmoney    | xx bytes  |       |
| money         | xx bytes  |       |
| float(n)      | xx bytes  |       |
| real          | xx bytes  |       |

## String

| Tipo     | Tamanho |
| :---:    | :---:   |

## Data

| Tipo     | Tamanho |
| :---:    | :---:   |

## NULL

Indica a ausência de valor.  
Se em uma expressão lógica existir o valor NULL, o resultado será UNKNOWN.  

Algumas expressões lógicas que geram UNKNOWN como saída:  

~~~sql
NULL = 0
NULL <> 0
NULL > 0
NULL = NULL 
~~~

#### Testando se um valor é NULL

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

#### Testando se um valor não é NULL

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

## Outros

| Tipo     | Tamanho |
| :---:    | :---:   |

## Mais informações

- https://www.rlsystem.com.br/tipos-dados-sql-server
