# SQL Server

- Em 2017 o SQL Server foi disponibilizado para o Linux.

## SGBDs

- São softwares que padronizam os bancos de dados.
- Possuem interface na qual inserimos um dado e ele armazena. 
- Não sabemos como o dado é armazenado. 
- Só conhecemos a representação dele e como manipulá-lo atravez da interface do SGBD

## Tipos de bancos de dados

- **Relacionais**: 
  - São para sistemas que precisam de alta confiabilidade de dados (ex.: controle forte de estoque).
  - Possuem atomicidade: garantir que todos os dados estão corretos antes de colocá-los dentro de uma tabela.
  - SQL Server gerencia atomicidade mesmo com concorrência.
  - Ex.:SQL Server, Oracle, MySQL

- **No SQL - Não Relacionais**: 
  - Voltados para melhor performance. 
  - Ex.: MongoDB, Neo4j, Firebase

## Tabelas de banco de dados

- Linhas: registros
- Colunas: informações do registro

## SQL - teorias

- **Chave primária**:
  - É uma chave que identifica um registro de forma única.
  - É uma forma de identificar um registro, deve ser única para cada registro.
  - Pode ser única ou composta.
  - Buscas mais rápidas.
  - Não é indicado usar varchar para chave primária. pq?
  - Exemplos: cpf, um id

- **Chave estrangeira**:
  - É uma chave que fará a relação de uma tabela com outra tabela.
  - Ela só pode ser chave estrangeira se estiver apontando para uma chave primária de outra tabela.
  - Uma chave estrangeira sempre será uma cópia de uma chave primária.
  - Se a chave primaria de uma tabela tem 2 colunas, a chave estrangeira de outra tabela que aponte para a primeira precisa ter 2 colunas também

- Normalização - 3 passos:
  - 1º forma normal: Não deve haver um conjunto de colunas repetido ou um conjunto de informações em apenas uma propriedade
    - cada coluna deve ser referente a um único valor
    - ex.: coluna endereço armazenar nome rua, cep e numero casa.
  - 2º forma normal: Não devemos ter informações duplicadas que dependam da chave primária
    - ex.: inserir o nome de um produto em 2 tabelas que se relacionam -> ao modificar o nome do produto precisaríamos trocar nas duas tabelas.
  - 3º forma normal: ??

- Relacionamentos
  - Identificar as informações e como elas se relacionam
  - ex.: clientes, pedido: 1 cliente possui varios pedidos e 1 pedido possui apenas 1 cliente -> **relacionamento 1 para n**
  - ex.: pedido e items: 1 pedido pode ter n items, mas 1 item so pode ter 1 pedido
  - A tabela que tem o n carrega a chave da tabela que tem o 1. ex.: um pedido carrega a chave do cliente que fez o pedido.
  - outro exemplo:
    - 1 pedido pode ter 2 clientes: 1 cliente pode ter n pedidos mas 1 pedido pode ter n clientes -> criar tabela intermediaria (tabela clientesProdutos que possui uma chave para cliente e outra para produtos) para resolver casos n para n

- Modelar os bancos de dados da melhor maneira possível!!

- Tipos de dados:
  - **int**
  - **float**
  - **datetime**
  - **bigint**
  - **varchar(TAM)**: max == 4000 -> 'a' guarda 'a'
  - **char(TAM)**: 'a', se TAM == 2 guarda 'a ' -->> bom para campos de tamanho fixo, ex: cpf, porem buscas em campos varchar sao mais lentas
  - **bit**: 0 ou 1

- Aceitar nulos (ausencia de valores): **null**
- Não aceitar nulos: **not null**

- Algumas funções nativas do sql:
  - getdate() - função do sql que retorna data e hora atual
  - isnull(nomeColuna, getdate())
  - convert(varchar(50), DataSolicitacao)

- Dicas:

> Realizar um update sem a cláusula where atualizaria todas as linhas (registros) da tabela
> Não é indicado deixar as regras de negócio nos códigos sql, a aplicação deve cuidar das regras de negocio.

> *** Install the mssql extension for Visual Studio Code

## SQL Server - no VS Code

- Clique no icone, connections, estabeleça a conexao, Databases, MyFirstApplication -> btDireito -> new query, botao de run

## Comandos para mssql-server

~~~shell
# verificar se o mssql-server está rodando
systemctl status mssql-server --no-pager

# para e desabilita o serviço do mssql-server
sudo systemctl stop mssql-server
sudo systemctl disable mssql-server

# habilita e inicia o serviço do mssql-server
sudo systemctl enable mssql-server
sudo systemctl start mssql-server

# reinicia o serviço do mssql-server
sudo systemctl restart mssql-server.service 

# para o serviço do mssql-server
sudo systemctl stop mssql-server

# inicia o serviço do mssql-server
sudo systemctl start mssql-server
~~~

## Comandos para sqlcmd 

- Comandos no bash

~~~shell
# abrir o sqlcmd, sa == admin do sist
sqlcmd -S localhost -U sa -P YourPassword

# listar comandos disponiveis
sqlcmd -?
~~~

- Comandos após abrir o sqlcmd

~~~sql
-- checar qual é o db atual 
select db_name()
go

-- listar todos dbs 
select name from sys.databases
go

-- excluir um db 
VER

-- criar um db 
create database NomeDB 
go

-- usar/selecionar um db (mudar contexto)
use NomeDB
go

-- criar tabela no db 
create table MinhaTabela ( -- salva como dbo.MinhaTabela
  UmCampo varchar(50) null,
  OutroCampo char(10) not null,
)
go

-- inserir valores na tabela - forma recomendada
insert Clientes (codigo, nome, tipoPessoa) values (2, "Marlene", "F"); 

-- inserir valores na tabela - outras formas
insert Clientes values (3, "Jose", "F"); 
insert Clientes values (4, "Maria", "F"), (1, "Joana", "J"); -- 2 de uma vez 
insert into Clientes (codigo, nome, tipoPessoa) values (1, "Mauricio", "F"); 
insert pedido values (1, getdate(), 0, 3, 7)
go

-- exibir informacoes da tabela 
select * from MinhaTabela
go

-- exibir informacoes da tabela 
select * from Clientes   -- * todas colunas da tabela cliente
where TipoPessoa = 'J'   -- cláusula where
go

-- exibir informacoes da tabela 
select * from clientes
where codigo in (1, 3, 5)
and tipopessoa = 'F'
go

-- exibir tabela e coluna extra usando conversao de tipos
selec *, convert(varchar(50), DataSolicitacao, 103) -- tipoDestino, nomeColuna, formatação (103 == padrao BR)
from pedido

-- exibir tabela e coluna extra usando select case
select *,
  case 
    when TipoPessoa = 'J' then 'Juridica' -- coluna extra com juridica
    when TipoPessoa = 'F' then 'Fisica'
    else 'Pessoa indefinida'
  end + convert(varchar, getdate(), 103) -- concatena mais informacoes
from clientes  
go

-- modificar um valor
update Clientes
set Codigo = 7,      
    nome = "Google"  
where TipoPessoa = 'J' -- cláusula where
go

-- excluir um registro
delete from clientes
where Codigo in(4, 5, 7) -- cod 4, 5 e 7
go

-- excluir um registro - usando AND
delete from clientes
where Codigo = 1
and TipoPessoa = 'F'
go

-- excluir uma tabela 
drop table MinhaTabela
go

-- saindo do sqlcmd 
exit
~~~


## Exemplos para sqlcmd

- *No bash (para todos exemplos - antes de começar):*

~~~shell
sudo systemctl enable mssql-server # habilita o mssql-server  
sudo systemctl start mssql-server  # inicia o mssql-server

sqlcmd -S localhost -U sa -P YourPassword # abre o sqlcmd
~~~

- *No sqlcmd:*

~~~sql
-- Exemplo 1 

create database Ecommerce 
go

use Ecommerce 
go

create table Teste (
  Descricao varchar(50) null,
  Complemento char(10) not null,
)
go

insert Teste values('a', 'a')
go

select * from Teste
go

drop table Teste
go

-- ------------------ -- 

-- Exemplo 2 

create database Ecommerce -- somente caso nao esteja criada
go

use Ecommerce 
go

create table Produtos (
  Codigo int not null,
  Nome varchar(100) not null,
  Descricao varchar(200) not null,
  Preco float not null
)
go

create table Clientes (
  Codigo int not null,
  Nome varchar(200) not null,
  TipoPessoa char(1) not null --fisica ou juridica
)
go

create table Pedido (
  Codigo int not null,
  DataSolicitacao datetime not null,
  FlagPago bit not null,
  TotalPedido float not null,
  CodigoCliente int not null  
)
go

create table PedidoItem (
  CodigoPedido int not null,
  CodigoProduto int not null,
  Preco float not null,
  Quantidade int not null  
)
go


insert clientes (codigo, nome, tipoPessoa) values (1, "Mauricio", "F");
insert clientes (codigo, nome, tipoPessoa) values (2, "Marlene", "F");
insert clientes (codigo, nome, tipoPessoa) values (3, "Jose", "F");
insert clientes (codigo, nome, tipoPessoa) values (4, "Maria", "F");
insert clientes (codigo, nome, tipoPessoa) values (1, "Joana", "J"); 
go

select * from Clientes   -- todas colunas da tabela cliente
where TipoPessoa = 'J'
go

update clientes
set Codigo = 5,      
    nome = "Google"  
where TipoPessoa = 'J' 
go

delete from clientes
where Codigo in(4, 5)
go

delete from clientes
where Codigo = 1
and TipoPessoa = 'F'
go

insert produtos values (1, 'Caneca', 'Caneca azul', 1.5)
insert produtos values (2, 'Caderno', 'Caderno 10 matérias', 20.99)
go

insert pedido values (1, getdate(), 0, 3, 7)
insert pedido values (2, getdate(), 0, 22.49, 1)
select * from pedido -- visualiza dados inseridos
go

insert PedidoItem values (1, 1, 1.5, 2)
insert PedidoItem values (2, 1, 1.5, 1)
insert PedidoItem values (2, 2, 20.99, 1)
go

selec *, convert(varchar(50), DataSolicitacao, 103) -- tipoDestino, nomeColuna, formatação (103 == padrao BR)
from pedido

select *,
  case 
    when TipoPessoa = 'J' then 'Juridica'
    when TipoPessoa = 'F' then 'Fisica'
    else 'Pessoa indefinida'
  end + convert(varchar, getdate(), 103) 
from clientes  
go




---------------------------

-- continua daqui

-- adicionando regra: chave primaria, pk_cliente == constraint name
alter table clientes add constraint pk_cliente primary key (codigo)
insert clientes values (1, "Julio", "J") -- erro pois 1 ja existe e agora é chave prim
--- ver o auto increment para codigo

alter table produtos add constraint pk_cliente primary key (codigo)
alter table pedido add constraint pk_cliente primary key (codigo)
--- ver o auto increment para codigo

alter table pedidoitem add constraint pk_cliente primary key (codigoPedido, codigoProduto)
insert pedidoitem values (2, 2, 10.5, 1) -- erro
-- nao usaremos auto increment aqui
-- codigoPedido pode ser chave estrangeira

-- adicionando regra: chave estrangeira 
alter table pedidoitem add constraint fk_pedido foreign key (codigoPedido) references Pedido (codigo)
alter table pedidoitem add constraint fk_produto foreign key (codigoProduto) references Produtos (codigo)

alter table pedido add constraint fk_cliente foreign key (codigoProduto) references Clientes (codigo)

------------ parte 2

-- adicionando 1 coluna a uma tabela
alter table Pedido add CodigoStatus int 

-- alterando todos registros 
update Pedido set codigostatus = 1

-- criar aqui uma tabela status com codigo int chave prim autoincrement e descricao varchar(50)
-- a tabela status funcionará como um dicionário

-- omitimos a coluna codigo pois ela é auto incremment
insert descricao values ("em andamento")
insert descricao values ("processado")
insert descricao values ("pago")
insert descricao values ("entregue")

-- adicionando regra: chave estrangeira 
alter table pedido add constraint fk_pedido foreign key (codigostatus) references status (codigo)


------------ parte 3 - comando join

-- cria tabela statuspedidoitem com codigo int (prim, auto increm) e descricao varchar(50)
-- cria tabela pedidoItemLog com codigopedido int (prim, auto increm) e codigoproduto int, codigostatuspedidoitem int, datamovimento datetime
  -- chave estrang: codigopedido -> codigopedido em codigopedido
  -- ...
-- *** rever aula trabalhando com tabelas relacionadas
~~~

- *No bash (para todos exemplos - após terminar):*

~~~shell
sudo systemctl stop mssql-server    # para o mssql-server  
sudo systemctl disable mssql-server # desabilita o mssql-server  
~~~

## Links

- [Documentação sqlcmd:](https://docs.microsoft.com/en-us/sql/tools/sqlcmd-utility?view=sql-server-ver15)

## Conitnua

- Listar todos comandos SQL aprendidos
- Listar todos comandos sqlcmd aprendidos

### Duvidas

- sintaxe sql - case sensitive? e o ponto e virgula?
- Como listar todos registros de uma tabela
- Ao criar uma tabela e inserir dados, se nao declararmos null ou notnull qual é o padrao?
- como rodar um script sql pelo mssql-server
- Onde fica a arvore de diretorios dos bancos de dados, ex: bancos de dados do sitema, instancias do banco de dados, Meubanco -> (Diagramas de bds, Tabelas criadas), etc
- Como criar funções no sql
- mudar contexto com o use nomebanco?




