# Tipos de Dados

## Numéricos: Inteiros

| Tipo          | Tamanho   | Intervalo                         |
| :---:         | :---:     | :---:                             |
| bit           | 8 bytes   | 0, 1 ou NULL                      |
| tinyint       | 1 byte    | 0 a 255                           |
| smallint      | 2 bytes   | -32,768 a 32,767                  |
| int           | 4 bytes   | -2,147,483,648 a 2,147,483,647    |

## Numéricos: Decimais e ponto flutuante

| Tipo          | Tamanho   | Intervalo                                                 |
| :---:         | :---:     | :---:                                                     |
| bigint        | 8 bytes   | -9,223,372,036,854,775,808 a 9,223,372,036,854,775,807    |
| decimal(p, s) | xx bytes  |                                                           |
| numeric(p, s) | xx bytes  |                                                           |
| smallmoney    | xx bytes  |                                                           |
| money         | xx bytes  |                                                           |
| float(n)      | xx bytes  |                                                           |
| real          | xx bytes  |                                                           |

## String

## Data

## NULL

- Indica a ausência de valor.  
- Se em uma expressão lógica existir o valor NULL, o resultado será UNKNOWN.  
- Algumas expressões lógicas que geram UNKNOWN como saída

~~~sql
NULL = 0
NULL <> 0
NULL > 0
NULL = NULL 
~~~

### Testar se um valor é NULL - operador IS NULL

~~~sql
SELECT
    id_marca,
    nome_marca
FROM
    producao.marcas
WHERE
    nome_marca IS NULL
~~~

### Testar se um valor não é NULL - operador IS NOT NULL

~~~sql
SELECT
    id_marca,
    nome_marca
FROM
    producao.marcas
WHERE
    nome_marca IS NOT NULL
~~~

## Mais informações

- https://www.rlsystem.com.br/tipos-dados-sql-server