# SQL Server - DML (Data Manipulation Language)

## INSERT - Inserir um Registro

~~~sql
USE LojasInformatica

-- =============================
-- Insere producao.categorias
-- =============================

SET IDENTITY_INSERT producao.categorias ON;

INSERT INTO producao.categorias 
    (id_categoria, nome_categoria)
VALUES
    (1, 'Computadores'),
    (2, 'Notebooks'),
    (3, 'Celulares'),
    (4, 'Impressoras');

SET IDENTITY_INSERT producao.categorias OFF;

-- =============================
-- Insere producao.marcas
-- =============================

SET IDENTITY_INSERT producao.marcas ON;

INSERT INTO producao.marcas
    (id_marca, nome_marca)
VALUES
    (1, 'Dell'),
    (2, 'HP'),
    (3, 'Samsung'),
    (4, 'Philco');

SET IDENTITY_INSERT producao.marcas OFF;

-- =============================
-- Insere producao.produtos
-- =============================

SET IDENTITY_INSERT producao.produtos ON;

INSERT INTO producao.produtos
    (id_produto, nome_produto, id_marca, id_categoria, preco)
VALUES
    (1, 'PC Desktop Dell Inspiron', 1, 1, 3000.00),
    (2, 'Celular Samsung J3', 3, 3, 1500.00),
    (3, 'Notebook HP 1 TB', 2, 2, 21000.00),
    (4, 'Notebook Dell Inspiron', 1, 2, 4500.00);

SET IDENTITY_INSERT producao.produtos OFF;
~~~

## UPDATE - Atualizar um Registro

~~~sql
USE LojasInformatica

UPDATE producao.marcas
SET 
    nome_marca = 'Toshiba',
WHERE id_marca = 4
~~~

## DELETE - Deletar um Registro

- Exemplo básico

~~~sql
DELETE FROM producao.marcas
WHERE id_marcas = 4
~~~

