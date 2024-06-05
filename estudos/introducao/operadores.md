# Operadores

## Operadores Lógicos

### AND

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

### OR

~~~sql

~~~

## Operadores Relacionais

- ```>```
- ```=```
- ```<>```

## Operadores para NULL

- ```IS NULL```     
- ```IS NOT NULL``` 

## Operadores para intervalos

- ```BETWEEN```
- ```IN```

## Operadores para String

- ```LIKE```
