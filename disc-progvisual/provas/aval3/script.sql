CREATE TABLE AreasPlantios (
  CodigoArea INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  CodigoFazenda INTEGER UNSIGNED NOT NULL,
  NomeArea VARCHAR(10) NULL,
  AreaHA FLOAT NULL,
  PRIMARY KEY(CodigoArea),
  INDEX AreasPlantio_FKIndex1(CodigoFazenda)
);

CREATE TABLE Equipamentos (
  CodigoEq INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  DescricaoEq VARCHAR(30) NULL,
  TipoEquipamento VARCHAR(1) NULL,
  PRIMARY KEY(CodigoEq)
);

CREATE TABLE EquipamentosUtilizados (
  CodigoUso INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  CodigoArea INTEGER UNSIGNED NOT NULL,
  CodigoEq INTEGER UNSIGNED NOT NULL,
  DataUso INTEGER UNSIGNED NULL,
  PRIMARY KEY(CodigoUso),
  INDEX EquipamentosUtilizados_FKIndex1(CodigoEq),
  INDEX EquipamentosUtilizados_FKIndex2(CodigoArea)
);

CREATE TABLE Fazendas (
  CodigoFazenda INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  NomeFazenda VARCHAR(70) NULL,
  TipoPropriedade VARCHAR(1) NULL,
  DescricaoLocalizacao VARCHAR(255) NULL,
  NomeProprietario VARCHAR(45) NULL,
  PRIMARY KEY(CodigoFazenda)
);

CREATE TABLE OrdensServicos (
  CodigoOrdem INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  CodigoTecnico INTEGER UNSIGNED NOT NULL,
  CodigoArea INTEGER UNSIGNED NOT NULL,
  DataOrdem DATE NULL,
  PRIMARY KEY(CodigoOrdem),
  INDEX OrdemServico_FKIndex1(CodigoArea),
  INDEX OrdemServico_FKIndex2(CodigoTecnico)
);

CREATE TABLE ResponsaveisTecnicos (
  CodigoTecnico INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  NomeTecnico VARCHAR(45) NULL,
  PRIMARY KEY(CodigoTecnico)
);

