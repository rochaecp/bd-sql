# Mysql

## Comandos no terminal

~~~bash
mysql --version
mysql -V

sudo service mysql status
sudo service mysql start
sudo service mysql stop
sudo mysql_secure_installation

sudo mysql -u root -p 
# ~forncer senha~

# habilitar inicio automatico
sudo systemctl enable mysql

SELECT user,authentication_string,plugin,host FROM mysql.user;
ALTER USER 'root'@'localhost' IDENTIFIED WITH caching_sha2_password BY 'root';
FLUSH PRIVILEGES;
~~~

## Comandos Mysql

~~~sql
-- comentario de uma linha
/* comentário de várias linhas */

SHOW DATABASES; 

CREATE DATABASE pessoa_ex;

USE pessoa_ex;
~~~

## Links

## Continua

- Como rodar um script .sql
- Instalação do Workbench no ubuntu.
