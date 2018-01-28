-- Exercicio 01 --
-- Privilegios para usuario: Estoque --

CREATE USER administrador
IDENTIFIED BY abc
DEFAULT TABLESPACE dados;

GRANT DBA, RESOURCE, CONNECT TO administrador;

CONNECT administrador/abc;

CREATE TABLE clientes(
		codigoCliente NUMBER(8),
		nome VARCHAR2(40),
		sexo CHAR(1),
		PRIMARY KEY(codigoCliente));

CREATE TABLE produtos(
		codigoProduto NUMBER(10),
		descricaoProduto VARCHAR2(80),
		dataCadastro DATE,
		PRIMARY KEY(codigoProduto));

CREATE TABLE cidades(
		codigoCidade NUMBER(10),
		nomeCidade VARCHAR2(50),
		PRIMARY KEY(codigoCidade));

CREATE USER gerente
IDENTIFIED BY abc
DEFAULT TABLESPACE dados;

CREATE USER auxiliar
IDENTIFIED BY abc
DEFAULT TABLESPACE dados;

CREATE USER cadastro
IDENTIFIED BY abc
DEFAULT TABLESPACE dados;

GRANT CREATE SESSION TO gerente;
GRANT CREATE SESSION TO auxiliar;
GRANT CREATE SESSION TO cadastro;

GRANT SELECT ON administrador.clientes TO gerente, auxiliar;
GRANT SELECT ON administrador.produtos TO gerente, auxiliar;
GRANT SELECT ON administrador.cidades TO gerente, auxiliar;
GRANT UPDATE ON administrador.produtos TO gerente;

GRANT SELECT, INSERT, UPDATE ON administrador.produtos TO cadastro;
GRANT SELECT, INSERT, UPDATE ON administrador.cidades TO cadastro;
