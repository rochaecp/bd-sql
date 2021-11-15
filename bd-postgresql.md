# Postgresql

~~~bash
########################################################
# Comandos no terminal (fora do psql)
########################################################

# ver versao e conferir se esta instalado 
psql --version 

# abrindo o psql com a conta postgree
sudo -i -u postgres 

# abrindo o psql com a conta postgree - jeito 2
sudo -u postgres psql

# listar todos bds
psql -l 

# criando um bd
createdb nomeDb

# abrir o psql
psql


########################################################
# Comandos no psql
########################################################

# versao
SELECT version(); 

# mostra bd conectado atualmente
select current_database(); 

# ver tabela
\dt TableName 

# exibe dados da tabela
select * from tabelaAlunos;

\q                      # sair do postgre
\l                      # lista os bancos de dados
\c nomeDB               # conecta ao db
\c nomeDB nomeOutroUser # conecta ao db
\conninfo               # verifica bd atual
~~~

## Alguns exemplos

~~~bash
################################## 
# Exemplo
##################################

# alterando a senha do postgres (só na primeira vez)
sudo su - postgres
psql -d postgres -U postgres # vai abrir o prompt do postgres
alter user postgres with password 'senha1234';
\q # sai do prompt do postgres


################################## 
# Exemplo
##################################

# abrindo o psql com a conta postgree
sudo -i -u postgres 

# cria o banco de dados 
createdb db_teste1

# abre o psql selecionando o bd 
psql db_teste1 

# criando tabela
create table tabelaAlunos (
  id_aluno serial primary key,
  nome varchar(50),
  telefone varchar(15)
);

# exibindo a tabela
\dt

# mostrando estrutura da tabela
\d tabelaAlunos

# inserindo dados em uma tabela
insert into tabelaAlunos (nome, telefone) values ('Mauricio', '985085305');
insert into tabelaAlunos (nome, telefone) values ('Mariazinha', '12345678');
insert into tabelaAlunos (nome, telefone) values ('Joãozinho', '87654321');

# mostrando dados da tabela
select * from tabelaAlunos;
~~~

## Links

- Mais em: 
  - <http://www.bosontreinamentos.com.br/postgresql-banco-dados/como-listar-bancos-de-dados-e-tabelas-no-postgresql/>
- Instalando o Postgres: 
  - <https://www.postgresql.org/download/linux/ubuntu/>
- Instalando o pgadmin4 (ferramenta gráfica - a versão web é legal!): 
  - <https://www.pgadmin.org/download/pgadmin-4-apt/>
- Tutoriais interessantes: 
  - <https://www.youtube.com/watch?v=grJlOnbZYus>
