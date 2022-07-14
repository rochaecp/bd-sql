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

-- =============================
-- Insere vendas.clientes
-- =============================

INSERT INTO vendas.clientes
	(nome, email)
VALUES
	('Mauricio Barbosa', 'mauricio@gmail.com'),
	('Sandra Antunes', 'sandra@gmail.com'),
	('Maria Antonieta', 'maria@hotmail.com'),
	('João Silveira', 'joao@hotmail.com'),
	('Bernadete Gonçalves', 'bernadete@gmail.com');

-- =============================
-- Insere vendas.lojas
-- =============================

SET IDENTITY_INSERT vendas.lojas ON;

INSERT INTO vendas.lojas
	(id_loja, nome_loja, telefone)
VALUES
	(1, 'Rocha Eletronicos', '(51) 333333333'),
	(2, 'Barbosa TI e cia', '(51) 222222222'),
	(3, 'Rabbit Tenologia', '(51) 111111111');

SET IDENTITY_INSERT vendas.lojas OFF;

-- =============================
-- Insere vendas.funcionarios
-- =============================

SET IDENTITY_INSERT vendas.funcionarios ON;

INSERT INTO vendas.funcionarios 
	(id_funcionario, nome_funcionario, ativo, id_loja)
VALUES
	(1, 'Severino', 1, 1),
	(2, 'Homero', 1, 1),
	(3, 'Antunes', 1, 2),
	(4, 'Madruga', 1, 2),
	(5, 'Jaiminho', 1, 3),
	(6, 'Godinez', 1, 3);

SET IDENTITY_INSERT vendas.funcionarios OFF;

-- =============================
-- Insere vendas.pedidos
-- =============================

INSERT INTO vendas.pedidos
	(id_cliente, status_pedido, data_pedido, id_loja, id_funcionario)
VALUES
	(1, 1, '20220714', 1, 1),
	(2, 1, '20220113', 2, 4),
	(5, 1, '20220115', 3, 6),
	(3, 2, '20190113', 3, 5);

-- =============================
-- Insere producao.estoques
-- =============================

INSERT INTO producao.estoques
	(id_loja, id_produto, quantidade)
VALUES
	(1, 1, 100),
	(1, 2, 200),
	(1, 3, 250),
	(1, 4, 300),
	(2, 1, 100),
	(2, 2, 200),
	(2, 3, 250),
	(2, 4, 300),
	(3, 1, 100),
	(3, 2, 200),
	(3, 3, 250),
	(3, 4, 300);

-- =============================
-- Insere vendas.itens_pedido
-- =============================

INSERT INTO vendas.itens_pedido
	(id_pedido, id_item, id_produto, quantidade, preco_lista)
VALUES
	(1, 1, 1, 2, 6000.00),
	(1, 2, 2, 2, 3000.00),
	(2, 1, 3, 1, 2100.00),
	(3, 1, 1, 2, 6000.00),
	(3, 2, 4, 1, 4500.00);

