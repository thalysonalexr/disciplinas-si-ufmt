-- Exercicio 02 --
-- Prilegios para usuario: Universidade --

CONNECT sys/ AS sysdba;

CREATE USER administrador2
IDENTIFIED BY abc
DEFAULT TABLESPACE dados;

GRANT DBA, RESOURCE, CONNECT TO administrador2;

CONNECT administrador2/abc;

CREATE TABLE institutos(
		codigoInstituto NUMBER(2),
		nomeInstituto VARCHAR2(40),
		PRIMARY KEY(codigoInstituto));

CREATE TABLE cursos(
		codigoCurso NUMBER(2),
		codigoInstituto NUMBER(2),
		nomeInstituto VARCHAR2(40),
		PRIMARY KEY(codigoCurso));

CREATE TABLE disciplinas(
		codigoDisciplina NUMBER(7),
		codigoCurso NUMBER(2),
		nomeDisciplina VARCHAR2(30),
		cargaHoraria NUMBER(2),
		PRIMARY KEY(codigoDisciplina));

CREATE TABLE turmas(
		nrLancamento NUMBER(8),
		matricula NUMBER(7),
		codigoDisciplina NUMBER(3),
		nota1 NUMBER(4,2),
		nota2 NUMBER(4,2),
		nota3 NUMBER(4,2),
		nota4 NUMBER(4,2),
		faltas NUMBER(3),
		PRIMARY KEY(nrLancamento));

CREATE USER coordenador
IDENTIFIED BY abc
DEFAULT TABLESPACE dados;

CREATE USER professor
IDENTIFIED BY abc
DEFAULT TABLESPACE dados;

CREATE USER aluno
IDENTIFIED BY abc
DEFAULT TABLESPACE dados;

GRANT CREATE SESSION
TO coordenador, professor, aluno;

GRANT SELECT ON
administrador2.cursos
TO coordenador;

GRANT SELECT ON administrador2.disciplinas TO professor;
GRANT SELECT ON administrador2.turmas TO professor;
GRANT SELECT ON administrador2.turmas TO aluno;
