CREATE TABLE Agendamentos (
  idAgendamento INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idPaciente INTEGER UNSIGNED NOT NULL,
  idHospital INTEGER UNSIGNED NOT NULL,
  idMedico INTEGER UNSIGNED NOT NULL,
  DataAgendamento DATE NULL,
  PRIMARY KEY(idAgendamento),
  INDEX Agendamentos_FKIndex1(idMedico),
  INDEX Agendamentos_FKIndex2(idHospital),
  INDEX Agendamentos_FKIndex3(idPaciente)
);

CREATE TABLE Cidades (
  idCidade INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  NomeCidade VARCHAR(60) NULL,
  Estado VARCHAR(2) NULL,
  PRIMARY KEY(idCidade)
);

CREATE TABLE ExamesMedicos (
  idPaciente INTEGER UNSIGNED NOT NULL,
  idMedico INTEGER UNSIGNED NOT NULL,
  idTiposExame INTEGER UNSIGNED NOT NULL,
  Resultado VARCHAR(30) NULL,
  INDEX ExamesMedicos_FKIndex1(idMedico),
  INDEX ExamesMedicos_FKIndex2(idTiposExame),
  INDEX ExamesMedicos_FKIndex3(idPaciente)
);

CREATE TABLE Hospitais (
  idHospital INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idCidade INTEGER UNSIGNED NOT NULL,
  NomeHospital VARCHAR(80) NULL,
  PRIMARY KEY(idHospital),
  INDEX Hospitais_FKIndex1(idCidade)
);

CREATE TABLE Medicos (
  idMedico INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  NomeMedico VARCHAR(45) NULL,
  CRM VARCHAR(12) NULL,
  PRIMARY KEY(idMedico)
);

CREATE TABLE MedicosConvenios (
  idTiposConvenio INTEGER UNSIGNED NOT NULL,
  idMedico INTEGER UNSIGNED NOT NULL,
  INDEX MedicosConvenios_FKIndex1(idMedico),
  INDEX MedicosConvenios_FKIndex2(idTiposConvenio)
);

CREATE TABLE Pacientes (
  idPaciente INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idTiposConvenio INTEGER UNSIGNED NOT NULL,
  idCidade INTEGER UNSIGNED NOT NULL,
  NomePaciente VARCHAR(45) NULL,
  Nascimento DATE NULL,
  PRIMARY KEY(idPaciente),
  INDEX Pacientes_FKIndex1(idCidade),
  INDEX Pacientes_FKIndex2(idTiposConvenio)
);

CREATE TABLE TiposConvenios (
  idTiposConvenio INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Nome VARCHAR(60) NULL,
  PRIMARY KEY(idTiposConvenio)
);

CREATE TABLE TiposExames (
  idTiposExame INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Descricao VARCHAR(30) NULL,
  PRIMARY KEY(idTiposExame)
);

