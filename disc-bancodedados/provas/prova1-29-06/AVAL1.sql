-- Areas de trabalho/ Usuarios/ Papeis --

CREATE TABLESPACE dados 
DATAFILE 'c:/oraclexe/dados/dados.ora' 
SIZE 100m AUTOEXTEND ON NEXT 10m MAXSIZE 150m;

CREATE USER Gerenciador
IDENTIFIED BY abc
DEFAULT TABLESPACE dados;

GRANT DBA, RESOURCE, CONNECT TO Gerenciador;

CONNECT Gerenciador/abc;

CREATE ROLE UAdministradores;

CREATE ROLE UPacientes;

CREATE ROLE UMedicos;

CREATE ROLE UAtendentes;

-- Modelo lógico -- 

CREATE TABLE Pacientes(
	idPaciente NUMBER(4),
	nome VARCHAR2(50) NOT NULL,
	tipoSanguineo VARCHAR2(4),
	RH VARCHAR2(8),
	PRIMARY KEY(idPaciente));
	
	
CREATE TABLE Medicos(
	idMedico NUMBER(4),
	nome VARCHAR2(50) NOT NULL,
	PRIMARY KEY(idMedico));
	
	
CREATE TABLE Atendentes(
	idAtendente NUMBER(2),
	nome VARCHAR2(50),
	PRIMARY KEY(idAtendente));
	
	
CREATE TABLE Consultas(
	idConsulta NUMBER(7),
	idPaciente NUMBER(4) NOT NULL,
	idMedico NUMBER(4) NOT NULL,
	idAtendente NUMBER(2) NOT NULL,
	dataConsulta DATE,
	valor NUMBER(5,2),
	PRIMARY KEY(idConsulta));
	

ALTER TABLE Consultas
ADD CONSTRAINT paciente_fk FOREIGN KEY
(idPaciente) REFERENCES Pacientes(idPaciente);

ALTER TABLE Consultas
ADD CONSTRAINT medico_fk FOREIGN KEY
(idMedico) REFERENCES Medicos(idMedico);

ALTER TABLE Consultas
ADD CONSTRAINT atendente_fk FOREIGN KEY
(idAtendente) REFERENCES Atendentes(idAtendente);


-- Usuarios/ Papeis --

----------------------- Administradores -------------------------------------
GRANT SELECT, INSERT, DELETE, UPDATE ON Gerenciador.Pacientes TO UAdministradores;
GRANT SELECT, INSERT, DELETE, UPDATE ON Gerenciador.Medicos TO UAdministradores;
GRANT SELECT, INSERT, DELETE, UPDATE ON Gerenciador.Atendentes TO UAdministradores;
GRANT SELECT, INSERT, DELETE, UPDATE ON Gerenciador.Consultas TO UAdministradores;

----------------------- Atendentes ------------------------------------------
GRANT SELECT ON Gerenciador.Consultas TO UAtendentes;
GRANT SELECT ON Gerenciador.Pacientes TO UAtendentes;
GRANT UPDATE, INSERT ON Gerenciador.Consultas TO UAtendentes;

----------------------- Medicos ---------------------------------------------

GRANT UPDATE ON Gerenciador.Medicos TO UMedicos;
GRANT UPDATE ON Gerenciador.Consultas TO UMedicos;
GRANT SELECT ON Gerenciador.Pacientes TO UMedicos;
GRANT SELECT ON Gerenciador.Medicos TO UMedicos;
GRANT SELECT ON Gerenciador.Atendentes TO UMedicos;
GRANT SELECT ON Gerenciador.Consultas TO UMedicos;

----------------------- Pacientes -------------------------------------------

GRANT SELECT ON Gerenciador.Consultas TO UPacientes;


-- Criar sessão --

GRANT CREATE SESSION TO UAdministradores, UAtendentes, UMedicos, UPacientes;


-- CRIAR USUARIOS --

CREATE USER Machado IDENTIFIED BY abc DEFAULT TABLESPACE dados;
CREATE USER Graciliano IDENTIFIED BY abc DEFAULT TABLESPACE dados;
CREATE USER Augusto IDENTIFIED BY abc DEFAULT TABLESPACE dados;
CREATE USER Erico IDENTIFIED BY abc DEFAULT TABLESPACE dados;

GRANT UAdministradores TO Machado;
GRANT UPacientes TO Graciliano;
GRANT UAtendentes TO Augusto;
GRANT UMedicos TO Erico;

-- REGRAS -- 

ALTER TABLE Consultas
ADD CONSTRAINT min_max_cc CHECK((valor >= 250) AND (valor <= 350));

ALTER TABLE Pacientes
ADD CONSTRAINT pos_neg_cc CHECK((RH = 'Positivo') OR (RH = 'Negativo'));







