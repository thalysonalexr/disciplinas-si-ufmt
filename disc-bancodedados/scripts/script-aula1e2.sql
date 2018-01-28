---------------------------------------------------------------------
-- link http://127.0.0.1:8080/apex Oracle Database Express Edition --
-- 20-06-2017 - Thalyson Alexandre Rodrigues de Sousa
---------------------------------------------------------------------

CONNECT SYS/ AS SYSDBA; -- Conectar como DBA em usuario SYS

-- Criar usuarios --
CREATE USER usuario
IDENTIFIED BY senha
DEFAULT TABLESPACE Dados QUOTA UNLIMITED ON Dados;

CREATE USER usuario1
IDENTIFIED BY abc
DEFAULT TABLESPACE Dados;

CREATE USER usuario2
IDENTIFIED BY abc
DEFAULT TABLESPACE Dados;

CREATE USER consulta
IDENTIFIED BY abc
DEFAULT TABLESPACE Dados;

CREATE USER manutencao
IDENTIFIED BY abc
DEFAULT TABLESPACE Dados;

-- Conceder permissões de DBA --
GRANT DBA, RESOURCE, CONNECT TO usuario;
GRANT DBA, RESOURCE, CONNECT TO usuario1;
GRANT DBA, RESOURCE, CONNECT TO usuario2;

-- Conectar ao usuario/senha e criar tabelas --
CONNECT usuario1/abc;

CREATE TABLE clientes(
	codigo NUMBER(5),
	nome VARCHAR2(40),
	salario NUMBER(8,3));

-- Inserção na tabela
INSERT INTO clientes(codigo, nome, salario)
VALUES(1, 'José da Silva', 4523.90);

INSERT INTO clientes(codigo, nome, salario)
VALUES(2, 'Maria Mendonça', 1250.20);

INSERT INTO clientes(codigo, nome, salario)
VALUES(3, 'Bianca Malfatti', 2345.50);

-- Conectar ao usuario/senha e criar tabelas --
CONNECT usuario2/abc;

CREATE TABLE funcionarios(
	codigo NUMBER(5),
	nome VARCHAR2(40),
	salario NUMBER(8,3));

INSERT INTO funcionarios(codigo, nome, salario)
VALUES(1, 'Miguel Afonso', 5400.80);

INSERT INTO funcionarios(codigo, nome, salario)
VALUES(2, 'Luis Merlim', 2350.75);

INSERT INTO funcionarios(codigo, nome, salario)
VALUES(3, 'Jesus Bonifacio', 7500.00);

CONNECT SYS/ AS SYSDBA;

-- Conceder permissões de login --
GRANT CREATE SESSION TO consulta;
GRANT CREATE SESSION TO manutencao;

-- Permissões de consulta --
GRANT SELECT ON usuario1.clientes TO consulta;
GRANT SELECT ON usuario2.funcionarios TO consulta;

-- Permissões de inserção --
GRANT INSERT, UPDATE, DELETE ON usuario1.clientes TO manutencao;
GRANT INSERT, UPDATE, DELETE ON usuario2.funcionarios TO manutencao;

-- Realizar consulta --
CONNECT consulta/abc;
SELECT * FROM usuario1.clientes;
SELECT * FROM usuario2.funcionarios;

-- Realizar manutencao --
CONNECT manutencao/abc;
INSERT INTO usuario1.clientes(codigo, nome, salario) VALUES(4, 'Cristina Galvão', 6500.00);
UPDATE usuario1.clientes SET salario = 6520.20 WHERE codigo = 4;
DELETE usuario2.funcionarios WHERE codigo = 3;
