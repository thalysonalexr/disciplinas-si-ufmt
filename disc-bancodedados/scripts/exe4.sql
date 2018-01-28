CONNECT SYS/ AS SYSDBA;

CREATE USER cadprincipal IDENTIFIED BY abc DEFAULT TABLESPACE dados;

GRANT DBA, RESOURCE, CONNECT TO cadprincipal;

CONNECT cadprincipal/abc;

CREATE TABLE cidades(
	codigoCidade NUMBER(5) NOT NULL,
	codigoEstado NUMBER(4) NOT NULL,
	nomeCidade VARCHAR2(40),
	PRIMARY KEY(codigoCidade));

CREATE TABLE estados(
	codigoEstado NUMBER(4),
	nomeEstado VARCHAR2(30),
	sigla VARCHAR2(2),
	PRIMARY KEY(codigoEstado));

CREATE TABLE clientes(
	codigoCliente NUMBER(5),
	codigoCidade NUMBER(5),
	nomeCliente VARCHAR2(40),
	sexo VARCHAR2(1),
	salario NUMBER(13,3),
	PRIMARY KEY(codigoCliente));

ALTER TABLE cidades
ADD CONSTRAINT cidades_estados_fk FOREIGN KEY
(codigoEstado) REFERENCES estados(codigoEstado);

ALTER TABLE clientes
ADD CONSTRAINT clientes_cidades_fk FOREIGN KEY
(codigoCliente) REFERENCES cidades(codigoCidade);

INSERT INTO estados(codigoEstado, nomeEstado, sigla) VALUES (1, 'Mato Grosso', 'MT');
INSERT INTO estados(codigoEstado, nomeEstado, sigla) VALUES (2, 'Mato Grosso do Sul', 'MS');
INSERT INTO estados(codigoEstado, nomeEstado, sigla) VALUES (3, 'São Paulo', 'SP');

INSERT INTO cidades(codigoCidade, codigoEstado, nomeCidade) VALUES (1, 1, 'Rondonópolis');
INSERT INTO cidades(codigoCidade, codigoEstado, nomeCidade) VALUES (2, 2, 'Sonora');
INSERT INTO cidades(codigoCidade, codigoEstado, nomeCidade) VALUES (3, 3, 'Mogi das Cruzes');

INSERT INTO clientes(codigoCliente, codigoCidade, nomeCliente, sexo, salario)
VALUES (1, 2, 'Thalyson Alexandre Rodrigues de Sousa', 'M', 1252.70);

INSERT INTO clientes(codigoCliente, codigoCidade, nomeCliente, sexo, salario)
VALUES (2, 1, 'Luis Henrique Carvalho', 'M', 1552.20);

INSERT INTO clientes(codigoCliente, codigoCidade, nomeCliente, sexo, salario)
VALUES (3, 1, 'Aldo Riboli', 'M', 1950.25);

-- Erro --
DELETE FROM cidades WHERE codigoCidade = '1';

CREATE VIEW ClientesLocalidade AS
SELECT nomeCliente, nomeCidade, sigla
FROM clientes
INNER JOIN cidades
ON clientes.codigoCidade = cidades.codigoCidade
INNER JOIN estados
ON estados.codigoEstado = cidades.codigoEstado;
