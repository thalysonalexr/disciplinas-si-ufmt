----------------------------------------------------------------------------
---- Gravadora de discos                                                ----
---- Oracle XE 10g, por: Thalyson A. R. de Sousa                        ----
----------------------------------------------------------------------------

CONNECT SYS/ AS SYSDBA;

CREATE USER dbagravadora IDENTIFIED BY abc;

GRANT DBA, RESOURCE, CONNECT TO dbagravadora;

CONNECT dbagravadora/abc;

CREATE TABLE bandas(
  idBandas NUMBER(10),
  ban_nome VARCHAR2(40) NOT NULL,
  ban_dataCriacao DATE NOT NULL,
  PRIMARY KEY(idBandas));

CREATE TABLE musicos(
  idMusicos NUMBER(10),
  mus_nome VARCHAR2(100) NOT NULL,
  mus_nomeArt VARCHAR2(40) NOT NULL,
  mus_cpf VARCHAR2(11) NOT NULL,
  mus_dataNasc DATE NOT NULL,
  mus_compositor NUMBER(1) NOT NULL,
  PRIMARY KEY(idMusicos),
  CONSTRAINT musico_cpf_uk UNIQUE(mus_cpf));

CREATE TABLE bandas_musicos(
  Bandas_idBandas NUMBER(10),
  Musicos_idMusicos NUMBER(10),
  Papeis_idPapeis NUMBER(10),
  PRIMARY KEY(Bandas_idBandas, Musicos_idMusicos, Papeis_idPapeis));

CREATE TABLE papeis(
  idPapeis NUMBER(10),
  pap_descricao VARCHAR2(255) NOT NULL,
  PRIMARY KEY(idPapeis),
  CONSTRAINT papeis_descricao_uk UNIQUE(pap_descricao));

ALTER TABLE bandas_musicos
ADD CONSTRAINT bm_bandas_fk FOREIGN KEY
(Bandas_idBandas) REFERENCES bandas(idBandas);

ALTER TABLE bandas_musicos
ADD CONSTRAINT bm_musicos_fk FOREIGN KEY
(Musicos_idMusicos) REFERENCES musicos(idMusicos);

ALTER TABLE bandas_musicos
ADD CONSTRAINT bm_papeis_fk FOREIGN KEY
(Papeis_idPapeis) REFERENCES papeis(idPapeis);

CREATE TABLE cancoes(
  idCancoes NUMBER(10),
  can_titulo VARCHAR2(35),
  can_letra VARCHAR2(1000),
  PRIMARY KEY(idCancoes));

CREATE TABLE cancoes_comp(
  Cancoes_idCancoes NUMBER(10),
  Musicos_idMusicos NUMBER(10),
  PRIMARY KEY(Cancoes_idCancoes, Musicos_idMusicos));

ALTER TABLE cancoes_comp
ADD CONSTRAINT cc_cancoes_fk FOREIGN KEY
(Cancoes_idCancoes) REFERENCES cancoes(idCancoes);

ALTER TABLE cancoes_comp
ADD CONSTRAINT cc_compositores_fk FOREIGN KEY
(Musicos_idMusicos) REFERENCES musicos(idMusicos);

CREATE TABLE discos(
  idDiscos NUMBER(10),
  dis_titulo VARCHAR2(30),
  dis_produtor VARCHAR2(45),
  PRIMARY KEY(idDiscos));

CREATE TABLE discos_cancoes(
  Discos_idDiscos NUMBER(10),
  Cancoes_idCancoes NUMBER(10),
  PRIMARY KEY(Discos_idDiscos, Cancoes_idCancoes));

ALTER TABLE discos_cancoes
ADD CONSTRAINT dc_discos_fk FOREIGN KEY
(Discos_idDiscos) REFERENCES discos(idDiscos);

ALTER TABLE discos_cancoes
ADD CONSTRAINT dc_cancoes_fk FOREIGN KEY
(Cancoes_idCancoes) REFERENCES cancoes(idCancoes);

CREATE TABLE bandas_discos(
  Bandas_idBandas NUMBER(10),
  Discos_idDiscos NUMBER(10),
  PRIMARY KEY(Bandas_idBandas, Discos_idDiscos));

ALTER TABLE bandas_discos
ADD CONSTRAINT bd_bandas_fk FOREIGN KEY
(Bandas_idBandas) REFERENCES bandas(idBandas);

ALTER TABLE bandas_discos
ADD CONSTRAINT bd_discos_fk FOREIGN KEY
(Discos_idDiscos) REFERENCES discos(idDiscos);

CREATE TABLE enderecos(
  idEnderecos NUMBER(10),
  end_logradouro VARCHAR2(128),
  end_numero NUMBER(3),
  end_complemento VARCHAR2(72),
  Discos_idDiscos NUMBER(10),
  Bairros_idBairros NUMBER(10),
  PRIMARY KEY(idEnderecos));

CREATE TABLE bairros(
  idBairros NUMBER(10),
  bai_nome VARCHAR2(50),
  Cidades_idCidades NUMBER(10),
  PRIMARY KEY(idBairros));

CREATE TABLE cidades(
  idCidades NUMBER(10),
  cid_nome VARCHAR2(40),
  cid_cep VARCHAR2(8),
  Estados_idEstados NUMBER(10),
  CONSTRAINT cidades_cep_uk UNIQUE(cid_cep),
  PRIMARY KEY(idCidades));

CREATE TABLE estados(
  idEstados NUMBER(10),
  est_nome VARCHAR2(32),
  est_sigla CHAR(2),
  PRIMARY KEY(idEstados));

ALTER TABLE cidades
ADD CONSTRAINT cidades_estados_fk FOREIGN KEY
(Estados_idEstados) REFERENCES estados(idEstados);

ALTER TABLE bairros
ADD CONSTRAINT bairros_cidades_fk FOREIGN KEY
(Cidades_idCidades) REFERENCES cidades(idCidades);

ALTER TABLE enderecos
ADD CONSTRAINT enderecos_bairros_fk FOREIGN KEY
(Bairros_idBairros) REFERENCES bairros(idBairros);

ALTER TABLE enderecos
ADD CONSTRAINT enderecos_discos_fk FOREIGN KEY
(Discos_idDiscos) REFERENCES discos(idDiscos);

CREATE VIEW vw_DiscoLocalGravacao AS
SELECT d.dis_titulo, b.bai_nome, c.cid_nome, es.est_sigla
FROM discos d
INNER JOIN enderecos e
ON d.idDiscos = e.Discos_idDiscos
INNER JOIN bairros b
ON b.idBairros = e.Bairros_idBairros
INNER JOIN cidades c
ON c.idCidades = b.Cidades_idCidades
INNER JOIN estados es
ON es.idEstados = c.Estados_idEstados
ORDER BY d.dis_titulo;
