------------------------------------
------------------------------------
------------------------------------
-- SQL Básico (Select From Where) - Parte 1
------------------------------------
------------------------------------
------------------------------------


------------------------------------
-- Cria todas as tabelas tabelas 
------------------------------------

-- Cria tabela Empregados

-- Cria tabela Projetos

-- Cria tabela Alocações

------------------------------------
-- TABELA EMPREGADOS - PRINT 1
------------------------------------

-- Select From
SELECT *
FROM EMPREGADOS

-- Select From
SELECT nome, salario
FROM EMPREGADOS

-- Aliases
SELECT nomee AS nome, salario -- aceita sem AS
FROM EMPREGADOS

-- Aliases
SELECT nomee nome, salario*0.1 AS comissao
FROM EMPREGADOS

-- Sem duplicados
SELECT distinct salario
FROM EMPREGADOS

-- Where
SELECT *
FROM EMPREGADOS
WHERE ingresso > 2015

-- Where
SELECT nomee, salario
FROM EMPREGADOS
WHERE salario >= 2000 and salario <= 5000

-- Where
SELECT nomee, salario
FROM EMPREGADOS
WHERE salario between 2000 and 5000

------------------------------------
-- TABELA PROJETOS - print 2
------------------------------------

-- Where
SELECT nomep
FROM PROJETOS
WHERE gerente IS NULL

-- Where
SELECT nomep
FROM PROJETOS
WHERE nomep LIKE 'proj%'

------------------------------------
-- TABELA PROJETOS - print 3
------------------------------------

-- Tabelas de junção - Junção Theta
SELECT distinct nomee, funcao
FROM EMPREGADOS JOIN ALOCACOES
    ON (EMPREGADOS.code = ALOCACOES.code)
 
-- Tabelas de junção - Junção natural
SELECT distinct nomee, funcao
FROM EMPREGADOS JOIN ALOCACOES
   USING (code)

-- Tabelas de junção - Junção natural
SELECT distinct nomee, funcao
FROM EMPREGADOS NATURAL JOIN ALOCACOES

-- Order By 
SELECT nomee, salario   
FROM EMPREGADOS
ORDER BY nomee -- nomes em ordem alfabetica

-- Order By 
SELECT nomee, salario   
FROM EMPREGADOS
ORDER BY salario, DESC, nomee -- salario em ordem decrescente e nomes em ordem alfabetica 

-- Outer Join - Left
SELECT distinct nomee, funcao
FROM empregados LEFT JOIN alocacoes
    ON (empregados.code = alocacoes.code)

-- Outer Join - Left
SELECT distinct nomee, funcao
FROM empregados LEFT JOIN alocacoes
    USING (code)    

-- Outer Join - Left 
SELECT distinct nomee, funcao
FROM empregados NATURAL LEFT JOIN alocacoes

------------------------------------
-- TABELA PROJETOS - print 4
------------------------------------

-- Outer Join - Right
SELECT nomep, nomee
FROM EMPREGADOS RIGHT JOIN PROJETOS 
    ON (EMPREGADOS.code = PROJETOS.gerente)

-- Outer Join - Full
SELECT distinct nomee
FROM EMPREGADOS JOIN ALOCACOES USING (code)
    JOIN PROJETOS USING (codep)
WHERE orcamento > 50000    


------------------------------------
------------------------------------
------------------------------------
-- SQL Básico (Select From Where) - Parte 2
------------------------------------
------------------------------------
------------------------------------

-- Aliases em tabelas
SELECT nomee
FROM EMPREGADOS E JOIN ALOCACOES A
    on (E.code = A.code)

-- Aliases em tabelas     
SELECT E.nomee AS nome, nomep, G.nomee
FROM EMPREGADOS E JOIN ALOCACOES USING (code)
    JOIN PROJETOS USING codp
    JOIN EMPREGADOS G ON (G.code = gerente)

-- Union, Intersect, Minus
SELECT nomee
FROM PROJETOS JOIN EMPREGADOS USING (gerente = code)
WHERE codp = 'p1'
UNION
SELECT nomee
FROM EMPREGADOS JOIN ALOCACOES USING (code)
WHERE codp = 'p1'

-- Insert
INSERT INTO PROJETOS
VALUES ('p4', 'Blue Screen', null, null)
 
-- Insert
INSERT INTO PROJETOS (codep, nomep)
VALUES ('p4', 'Blue Screen')

-- Update
UPDATE ALOCACOES
SET hora = hora + 2
WHERE funcao = 'dev' and codp = 'p1'

-- Delete
DELETE FROM ALOCACOES
WHERE funcao = 'tester' and codp = 'p2'

------------------------------------
------------------------------------
------------------------------------
-- Demo prático: https://www.youtube.com/watch?v=IY0AvHsxcBU
-- aula sincrona: https://www.youtube.com/watch?v=6reJ4M5dbfI
------------------------------------
------------------------------------
------------------------------------























