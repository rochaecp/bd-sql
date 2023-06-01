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

# Geral

- Em SQL, uma expressão lógica é frequentemente chamada de predicado.
- Uma expressão lógica pode ser avaliada como TRUE, FALSE, ou UNKNOWN.
-  Outras implementações
    - T-SQL (Transact-SQL) - Implementação/Extensão da Microsoft do SQL
    - PL-SQL (Procedural Language SQL) - Implementação/Extensão da Oracle do SQL