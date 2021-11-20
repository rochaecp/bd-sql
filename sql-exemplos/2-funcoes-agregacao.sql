------------------------------------
------------------------------------
------------------------------------
-- Funcoes de Agregacao - Parte 1
------------------------------------
------------------------------------
------------------------------------

-- Cria tabelas - PRINT 1

-- Função de agregação - MAX
SELECT MAX (salario), MIN (salario)
FROM EMPREGADO

-- Função de agregação - COUNT
SELECT COUNT (codd) -- ou COUNT (*)
FROM DEPARTAMENTO

-- Função de agregação - COUNT DISTINCT
SELECT COUNT (DISTINCT salario) -- valores não nulos e sem repetições 
FROM EMPREGADO

-- Função de agregação - COUNT DISTINCT
SELECT COUNT (DISTINCT codd) departamentos,
    SUM(salario) folha, AVG(salario) media
FROM EMPREGADO NATURAL JOIN DEPARTAMENTO     

-- Função de agregação - COUNT
SELECT COUNT(*) nroempregados
FROM empregado JOIN departamento ON (codd)
WHERE nomed = 'RH'

-- Group by
SELECT nomed, COUNT(*), SUM(salario)
FROM EMPREGADO NATURAL JOIN DEPARTAMENTO
GROUP BY nomed

-- Having
SELECT nomed, COUNT(*) as empregados
FROM EMPREGADO NATURAL JOIN DEPARTAMENTO
GROUP BY nomed
HAVING AVG(salario) > 2000












































