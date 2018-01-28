------------------------------------------------------------------------------
---- Aula: 22/06/17 Lab. Banco de Dados
---- Constraints
------------------------------------------------------------------------------

CONNECT SYS/ AS SYSDBA;

CREATE USER aluno3 IDENTIFIED BY abc DEFAULT TABLESPACE dados;

GRANT DBA, RESOURCE, CONNECT TO aluno3;

CONNECT aluno3/abc;

CREATE TABLE estados(
	idEstado NUMBER(3),
	nomeEstado VARCHAR2(40));

ALTER TABLE estados ADD sigla VARCHAR(3);

ALTER TABLE estados MODIFY sigla VARCHAR(2);

CREATE TABLE cursos(
	codigoCurso NUMBER(2) CONSTRAINT codigoCurso_ck
	CHECK((codigoCurso >= 10) AND (codigoCurso <= 99)),
	nomeCurso VARCHAR2(30));

ALTER TABLE estados ADD CONSTRAINT estadospk PRIMARY KEY(idEstado);

ALTER TABLE estados RENAME COLUMN idEstado TO codigoEstado;

CREATE TABLE cidades(
	codigoCidade NUMBER(5) NOT NULL,
	codigoEstado NUMBER(4) NOT NULL,
	nomeCidade VARCHAR2(40),
	PRIMARY KEY(codigoCidade));

ALTER TABLE cidades
ADD CONSTRAINT cidades_estados_fk FOREIGN KEY
(codigoEstado) REFERENCES estados(codigoEstado);

INSERT INTO estados(codigoEstado, nomeEstado, sigla) VALUES (1, 'Mato Grosso', 'MT');
INSERT INTO estados(codigoEstado, nomeEstado, sigla) VALUES (2, 'Mato Grosso do Sul', 'MS');
INSERT INTO estados(codigoEstado, nomeEstado, sigla) VALUES (3, 'São Paulo', 'SP');

INSERT INTO cidades(codigoCidade, nomeCidade, codigoEstado) VALUES (1, 'Rondonópolis', 1);
INSERT INTO cidades(codigoCidade, nomeCidade, codigoEstado) VALUES (2, 'Sonora', 2);
INSERT INTO cidades(codigoCidade, nomeCidade, codigoEstado) VALUES (3, 'Mogi das Cruzes', 3);

-- Erro --
DELETE FROM estados WHERE codigoEstado = '1';

CREATE TABLE clientes(
	codigo NUMBER(8) PRIMARY KEY,
	nome VARCHAR2(40),
	salario NUMBER(12,3), CONSTRAINT MinimoSalario_ck CHECK(salario >= 0));
