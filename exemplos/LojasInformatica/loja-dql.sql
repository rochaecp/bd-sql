USE LojasInformatica;

-- =============================
-- Consulta producao.categorias
-- =============================

SELECT *
FROM producao.categorias;

-- =============================
-- Consulta producao.marcas
-- =============================

SELECT *
FROM producao.marcas;

-- =============================
-- Consulta producao.produtos
-- =============================

SELECT *
FROM producao.produtos;

-- inner join (categorias)
SELECT 
	id_produto AS IDs, 
	nome_produto AS Produtos, 
	nome_categoria AS Categorias
FROM 
	producao.produtos p
INNER JOIN producao.categorias c
	ON c.id_categoria = p.id_categoria 

-- inner join (categorias e marcas)
SELECT 
	id_produto AS IDs,
	nome_produto AS Produtos,
	nome_categoria AS Categorias,
	nome_marca AS Marcas
FROM 
	producao.produtos p
INNER JOIN producao.marcas m
	ON m.id_marca = p.id_marca
INNER JOIN producao.categorias c
	ON c.id_categoria = p.id_categoria

-- =============================
-- Consulta vendas.clientes
-- =============================

SELECT *
FROM vendas.clientes

-- =============================
-- Consulta vendas.lojas
-- =============================

SELECT *
FROM vendas.lojas

-- =============================
-- Consulta vendas.funcionarios
-- =============================

SELECT *
FROM vendas.funcionarios

-- =============================
-- Consulta vendas.pedidos
-- =============================

SELECT *
FROM vendas.pedidos

-- =============================
-- Consulta producao.estoques
-- =============================

SELECT *
FROM producao.estoques

-- =============================
-- Consulta vendas.itens_pedido
-- =============================

SELECT *
FROM vendas.itens_pedido
