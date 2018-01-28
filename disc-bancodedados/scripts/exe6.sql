CONNECT SYS/ AS SYSDBA;

CREATE USER gerente2 IDENTIFIED BY abc
DEFAULT TABLESPACE dados;

GRANT DBA, RESOURCE, CONNECT TO gerente2;

CONNECT gerente2/abc;

CREATE TABLE clientes(
  codigoCliente NUMBER(8),
  nome VARCHAR2(40) CONSTRAINT nome_nn NOT NULL,
  sexo CHAR(1) CONSTRAINT sexo_nn NOT NULL,
  PRIMARY KEY(codigoCliente));

CREATE TABLE vendas(
  nrVendas NUMBER(10),
  codigoCliente NUMBER(8),
  descricaoProduto VARCHAR2(80) CONSTRAINT desc_produto_nn NOT NULL,
  data DATE CONSTRAINT data_nn NOT NULL,
  valorUnitario NUMBER(13,3) CONSTRAINT valor_unit_nn NOT NULL,
  PRIMARY KEY(nrVendas));

ALTER TABLE vendas
ADD CONSTRAINT vendas_clientes_fk FOREIGN KEY
(codigoCliente) REFERENCES clientes(codigoCliente);

CREATE SEQUENCE SequenciaClientes
  MINVALUE 1
  MAXVALUE 25000
  START WITH 1
  INCREMENT BY 1
  NOCACHE;

CREATE SEQUENCE SequenciaVendas
  MINVALUE 1
  MAXVALUE 50000
  START WITH 1
  INCREMENT BY 1
  NOCACHE;

CREATE USER secretaria2 IDENTIFIED BY abc
DEFAULT TABLESPACE dados;

CREATE USER vendedores IDENTIFIED BY abc
DEFAULT TABLESPACE dados;

GRANT SELECT, INSERT, UPDATE ON gerente2.clientes TO secretaria2;

GRANT SELECT ON gerente2.clientes TO vendedores;
GRANT INSERT, UPDATE ON gerente2.vendas TO vendedores;
