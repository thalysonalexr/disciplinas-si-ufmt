CONNECT Machado/abc;

INSERT INTO Gerenciador.Pacientes(idPaciente,nome,tipoSanguineo,RH) 
VALUES (1, 'Graciliano Torres','A','Positivo');

INSERT INTO Gerenciador.Pacientes(idPaciente,nome,tipoSanguineo,RH) 
VALUES (2, 'Matheus de Neves','AB','Negativo');

INSERT INTO Gerenciador.Medicos(idMedico,nome) 
VALUES (1, 'Erivo Vinicius'); 

INSERT INTO Gerenciador.Atendentes(idAtendente,nome) 
VALUES (1, 'Augusto Celestin1');

INSERT INTO Gerenciador.Consultas(idConsulta,idPaciente,idMedico,idAtendente, dataConsulta,valor)
VALUES (1, 1, 1, 1, '29-06-2017', 255.75);

SELECT * FROM Gerenciador.Pacientes;
SELECT * FROM Gerenciador.Medicos;
SELECT * FROM Gerenciador.Atendentes;
SELECT * FROM Gerenciador.Consultas;

DELETE FROM Gerenciador.Consultas WHERE idConsulta = '1';

UPDATE Gerenciador.Atendentes SET nome = 'Augusto Celestino' WHERE idAtendente = '1';

CONNECT Graciliano/abc;

SELECT * FROM Gerenciador.Consultas;

CONNECT Augusto/abc;

SELECT * FROM Gerenciador.Consultas;
SELECT * FROM Gerenciador.Pacientes;
UPDATE Gerenciador.Consultas SET dataConsulta = '28-06-2017' WHERE idConsulta = '1';
INSERT INTO Gerenciador.Consultas(idConsulta,idPaciente,idMedico,idAtendente, dataConsulta,valor)
VALUES (2, 2, 1, 1, '29-06-2017', 280.75);

CONNECT Erico/abc;

UPDATE Gerenciador.Consultas SET dataConsulta = '28-06-2017' WHERE idConsulta = '1';
UPDATE Gerenciador.Medicos SET nome = 'Erico Vinicius' WHERE idMedico = '1';
SELECT * FROM Gerenciador.Pacientes;
SELECT * FROM Gerenciador.Medicos;
SELECT * FROM Gerenciador.Atendentes;
SELECT * FROM Gerenciador.Consultas;

CONNECT Machado/abc;

-- Restricao de integridade PACIENTE_FK
DELETE FROM Gerenciador.Consultas WHERE idConsulta = '2';
-- Restricao de integridade MEDICO_FK
DELETE FROM Gerenciador.Medicos WHERE idMedico = '1';
-- Restricao de integridade ATENDENTE_FK
DELETE FROM Gerenciador.Atendentes WHERE idAtendente = '1';
-- Restricao de verificacao MIN_MAX_CC 
INSERT INTO Gerenciador.Consultas(idConsulta,idPaciente,idMedico,idAtendente, dataConsulta,valor)
VALUES (1, 1, 1, 1, '25-07-2017', 351.00);
-- Restricao de verificacao POS_NEG_CC
INSERT INTO Gerenciador.Pacientes(idPaciente,nome,tipoSanguineo,RH) 
VALUES (3, 'Chris Rock','B','P');

CONNECT Gerenciador/abc;

ALTER TABLE Gerenciador.Pacientes RENAME COLUMN nome TO pac_nome;
ALTER TABLE Gerenciador.Medicos RENAME COLUMN nome TO med_nome;
ALTER TABLE Gerenciador.Atendentes RENAME COLUMN nome TO ate_nome;

CREATE VIEW vw_fichaConsulta AS
	SELECT 
	gerenciador.consultas.idconsulta,
	gerenciador.pacientes.pac_nome,
	gerenciador.medicos.med_nome,
	gerenciador.atendentes.ate_nome
	FROM 
	gerenciador.consultas
	INNER JOIN gerenciador.pacientes
	ON gerenciador.consultas.idpaciente = gerenciador.pacientes.idpaciente
	INNER JOIN gerenciador.medicos
	ON gerenciador.consultas.idmedico = gerenciador.medicos.idmedico
	INNER JOIN gerenciador.atendentes
	ON gerenciador.atendentes.idatendente = gerenciador.atendentes.idatendente;






