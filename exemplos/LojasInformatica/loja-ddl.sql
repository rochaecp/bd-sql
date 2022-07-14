-- ======================
-- Apaga BD
-- ======================
/*
USE master;

DROP DATABASE LojasInformatica;
*/

-- ======================
-- Cria BD e Schemas
-- ======================
/*
USE master;

CREATE DATABASE LojasInformatica;

USE LojasInformatica;

CREATE SCHEMA vendas;
GO

CREATE SCHEMA producao;
GO
*/

-- ======================
-- Cria Tabelas
-- ======================

USE LojasInformatica

-- producao.categorias
CREATE TABLE producao.categorias (
	id_categoria INT IDENTITY (1, 1) PRIMARY KEY,
	nome_categoria VARCHAR (255) NOT NULL
);

-- producao.marcas
CREATE TABLE producao.marcas (
	id_marca INT IDENTITY (1, 1) PRIMARY KEY,
	nome_marca VARCHAR (255) NOT NULL
);

-- producao.produtos
CREATE TABLE producao.produtos (
	id_produto INT IDENTITY (1, 1) PRIMARY KEY,
	nome_produto VARCHAR (255) NOT NULL,
	id_marca INT NOT NULL,
	id_categoria INT NOT NULL,
	preco DECIMAL (10, 2) NOT NULL,
	FOREIGN KEY (id_marca) REFERENCES producao.marcas (id_marca) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (id_categoria) REFERENCES producao.categorias (id_categoria) ON DELETE CASCADE ON UPDATE CASCADE
);

-- vendas.clientes
CREATE TABLE vendas.clientes (
	id_cliente INT IDENTITY (1, 1) PRIMARY KEY,
	nome VARCHAR(255) NOT NULL,
	email VARCHAR (255) NOT NULL
);

-- vendas.lojas
CREATE TABLE vendas.lojas (
	id_loja INT IDENTITY (1, 1) PRIMARY KEY,
	nome_loja VARCHAR (255) NOT NULL,
	telefone VARCHAR (20),
);

-- vendas.funcionarios
CREATE TABLE vendas.funcionarios (
	id_funcionario INT IDENTITY (1, 1) PRIMARY KEY,
	nome_funcionario VARCHAR (255) NOT NULL,
	ativo TINYINT NOT NULL, -- 0 = inativo; 1 = ativo; 2 = aposentado;
	id_loja INT NOT NULL,
	FOREIGN KEY (id_loja) REFERENCES vendas.lojas (id_loja) ON DELETE CASCADE ON UPDATE CASCADE
);

-- vendas.pedidos
CREATE TABLE vendas.pedidos (
	id_pedido INT IDENTITY (1, 1) PRIMARY KEY,
	id_cliente INT NOT NULL,
	status_pedido TINYINT NOT NULL, -- 1 = pendente; 2 = processando; 3 = rejeitado; 4 = completo;
	data_pedido DATE NOT NULL,
	id_loja INT NOT NULL,
	id_funcionario INT,
	FOREIGN KEY (id_cliente) REFERENCES vendas.clientes (id_cliente) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (id_loja) REFERENCES vendas.lojas (id_loja) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (id_funcionario) REFERENCES vendas.funcionarios (id_funcionario) ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- producao.estoques
CREATE TABLE producao.estoques (
	id_loja INT NOT NULL,
	id_produto INT NOT NULL,
	quantidade INT NOT NULL,
	PRIMARY KEY (id_loja, id_produto),
	FOREIGN KEY (id_loja) REFERENCES vendas.lojas (id_loja) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (id_produto) REFERENCES producao.produtos (id_produto) ON DELETE CASCADE ON UPDATE CASCADE
);

-- vendas.itens_pedido
CREATE TABLE vendas.itens_pedido (
	id_pedido INT NOT NULL,
	id_item INT NOT NULL,
	id_produto INT NOT NULL,
	quantidade INT NOT NULL,
	preco_lista DECIMAL (10, 2) NOT NULL
	PRIMARY KEY (id_pedido, id_item),
	FOREIGN KEY (id_pedido) REFERENCES vendas.pedidos (id_pedido) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (id_produto) REFERENCES producao.produtos (id_produto) ON DELETE CASCADE ON UPDATE CASCADE
);




