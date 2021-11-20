-- inserir dados tabela

-- Subconsulta
FROM PROJETOS
WHERE orcamento > 50000 and
    codp IN (SELECT DISTINCT codp
        FROM ALOCACOES
        WHERE funcao = 'tester')

-- parei em: sql parte 3 - https://www.youtube.com/watch?v=bnijmzCY3v8     
