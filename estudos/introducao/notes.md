# SQL (Structured Query Language)

# Subconjuntos de comandos

- **DDL (Data Definition Language)**
    - CREATE
    - DROP
    - ALTER
    - TRUNCATE
    - RENAME
    - COMMENT
- **DQL (Data Query Language)**
    - SELECT
- **DML (Data Manipulation Language)**
    - INSERT
    - UPDATE
    - DELETE
    - CALL
    - EXPLAIN CALL
    - LOCK
- **DCL (Data Control Language)**
    - GRANT
    - REVOKE
- **DTL (Data Transaction Language) ou TCL (Transaction Control Language)**
    - BEGIN TRANSACTION
    - SET TRANSACTION
    - COMMIT
    - ROLLBACK
    - SAVEPOINT

# Operadores

- Operadores Lógicos
    - AND
        - Permite combinar duas ou mais expressões booleanas (a primeira expressão que aparecer será avaliada primeiro).  
        ~~~sql
        SELECT
            *
        FROM
            producao.produtos
        WHERE
            id_marca = 1
            AND preco > 1500

        /*
        Algumas possibilidades de combinações de 2 expressões booleanas

        TRUE AND TRUE       -- TRUE
        TRUE AND FALSE 	    -- FALSE
        TRUE AND UNKNOWN    -- UNKNOWN

        FALSE AND TRUE	    -- FALSE
        FALSE AND FALSE	    -- FALSE
        FALSE AND UNKNOWN   -- FALSE

        UNKNOWN AND TRUE    -- UNKNOWN
        UNKNOWN AND FALSE   -- FALSE
        UNKNOWN AND UNKNOWN -- UNKNOWN
        */    
        ~~~

    - OR
        ~~~sql

        ~~~

- Operadores Relacionais
    - ```>```
    - ```=```
    - ```<>```

- Operadores para NULL
    - ```IS NULL```     
    - ```IS NOT NULL``` 

- Operadores para intervalos
    - ```BETWEEN```
    - ```IN```

- Operadores para String
    - ```LIKE```

# Tipos de Dados

- Numéricos: Inteiros
    | Tipo          | Tamanho   | Intervalo                         |
    | :---:         | :---:     | :---:                             |
    | bit           | 8 bytes   | 0, 1 ou NULL                      |
    | tinyint       | 1 byte    | 0 a 255                           |
    | smallint      | 2 bytes   | -32,768 a 32,767                  |
    | int           | 4 bytes   | -2,147,483,648 a 2,147,483,647    |

- Numéricos: Decimais e ponto flutuante
    | Tipo          | Tamanho   | Intervalo                                                 |
    | :---:         | :---:     | :---:                                                     |
    | bigint        | 8 bytes   | -9,223,372,036,854,775,808 a 9,223,372,036,854,775,807    |
    | decimal(p, s) | xx bytes  |                                                           |
    | numeric(p, s) | xx bytes  |                                                           |
    | smallmoney    | xx bytes  |                                                           |
    | money         | xx bytes  |                                                           |
    | float(n)      | xx bytes  |                                                           |
    | real          | xx bytes  |                                                           |

- String

- Data

- NULL
    - Indica a ausência de valor.  
    - Se em uma expressão lógica existir o valor NULL, o resultado será UNKNOWN.  
    - Algumas expressões lógicas que geram UNKNOWN como saída
        ~~~sql
        NULL = 0
        NULL <> 0
        NULL > 0
        NULL = NULL 
        ~~~
    - Testar se um valor é NULL - operador IS NULL
        ~~~sql
        SELECT
            id_marca,
            nome_marca
        FROM
            producao.marcas
        WHERE
            nome_marca IS NULL
        ~~~
    - Testar se um valor não é NULL - operador IS NOT NULL
        ~~~sql
        SELECT
            id_marca,
            nome_marca
        FROM
            producao.marcas
        WHERE
            nome_marca IS NOT NULL
        ~~~

- Mais informações
    - https://www.rlsystem.com.br/tipos-dados-sql-server

# Funções SQL Server

- Checar qual é o DB atual 
    ~~~sql
    SELECT DB_NAME()
    ~~~    

# Constantes SQL Server 

- Listar todos BDs
    ~~~sql
    SELECT name
    FROM sys.databases
    ~~~
    
- Versão do SQL Server
    ~~~sql
    SELECT @@VERSION
    ~~~

# Geral

- Em SQL, uma expressão lógica é frequentemente chamada de predicado.
- Uma expressão lógica pode ser avaliada como TRUE, FALSE, ou UNKNOWN.
-  Outras implementações
    - T-SQL (Transact-SQL) - Implementação/Extensão da Microsoft do SQL
    - PL-SQL (Procedural Language SQL) - Implementação/Extensão da Oracle do SQL