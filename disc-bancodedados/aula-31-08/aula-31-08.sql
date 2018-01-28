CREATE OR REPLACE PACKAGE DBMS_calculadora AS
	FUNCTION Somar(v1 IN NUMBER, v2 IN NUMBER) RETURN NUMBER;
	FUNCTION Subtrair(v1 IN NUMBER, v2 IN NUMBER) RETURN NUMBER;
	FUNCTION Multiplicar(v1 IN NUMBER, v2 IN NUMBER) RETURN NUMBER;
	FUNCTION Dividir(v1 IN NUMBER, v2 IN NUMBER) RETURN NUMBER;
END;
/

CREATE OR REPLACE PACKAGE BODY DBMS_calculadora AS
	FUNCTION Somar(v1 IN NUMBER, v2 IN NUMBER) RETURN NUMBER AS
	BEGIN
		RETURN v1+v2;
	END;
	FUNCTION Subtrair(v1 IN NUMBER, v2 IN NUMBER) RETURN NUMBER AS
	BEGIN
		RETURN v1-v2;
	END;
	FUNCTION Multiplicar(v1 IN NUMBER, v2 IN NUMBER) RETURN NUMBER AS
	BEGIN
		RETURN v1*v2;
	END;
	FUNCTION Dividir(v1 IN NUMBER, v2 IN NUMBER) RETURN NUMBER AS
	BEGIN
		RETURN v1/v2;
	END;
END;
/

CREATE OR REPLACE PACKAGE DBMS_Vendas AS
	PROCEDURE Consulta(datai IN DATE, dataf IN DATE);
	PROCEDURE Consulta(cliente IN NUMBER);
END;
/

CREATE OR REPLACE PACKAGE BODY DBMS_Vendas AS
	PROCEDURE Consulta(datai IN DATE, dataf IN DATE) IS
		CURSOR DadosVenda IS
		SELECT p.descricaoproduto, COUNT(*) TOTAL
		FROM exercicios.vendas v,
			 exercicios.produtos p
		WHERE v.idproduto=p.idproduto
			 AND TRUNC(v.datavenda) >= datai
			 AND TRUNC(v.datavenda) <= dataf
		GROUP BY p.descricaoproduto;
	BEGIN
		FOR dado in DadosVenda LOOP
			Dbms_output.PUT_LINE('Descrição: '||dado.descricaoproduto||' Total: '||dado.TOTAL);
		END LOOP;
	END;
	
	PROCEDURE Consulta(cliente IN NUMBER) IS
		CURSOR DadosVenda IS
		SELECT p.descricaoproduto, COUNT(*) TOTAL
		FROM exercicios.vendas v,
			 exercicios.clientes c,
			 exercicios.produtos p
		WHERE v.idcliente=c.idcliente
			 AND c.idcliente=cliente
		GROUP BY p.descricaoproduto;
	BEGIN
		FOR dado in DadosVenda LOOP
			Dbms_output.PUT_LINE('Descrição: '||dado.descricaoproduto||' Total: '||dado.TOTAL);
		END LOOP;
	END;
END;
/

CREATE TABLE Valores_banco (
	IDCliente NUMBER(5) PRIMARY KEY, 
	Saldo NUMBER(8,2) NOT NULL);

CREATE OR REPLACE PACKAGE DBMS_banco AS
	PROCEDURE Depositar(cliente IN NUMBER, valor IN NUMBER);
	PROCEDURE Sacar(cliente IN NUMBER, valor IN NUMBER);
	PROCEDURE VerificarSaldo(cliente IN NUMBER);
END;
/

CREATE OR REPLACE PACKAGE BODY DBMS_banco AS
	PROCEDURE Depositar(cliente IN NUMBER, valor IN NUMBER) IS
		aux NUMBER(5);
	BEGIN
		SELECT COUNT(*) INTO aux FROM Valores_banco v WHERE v.idcliente=cliente;
		IF (aux>0) THEN
			UPDATE Valores_banco v SET Saldo=Saldo+valor WHERE v.idcliente=cliente;
			Dbms_output.PUT_LINE('Deposito efetuado!');
		ELSE 
			Dbms_output.PUT_LINE('Cliente não encontrado!');
		END IF;
	END;
	
	PROCEDURE Sacar(cliente IN NUMBER, valor IN NUMBER) IS
		aux NUMBER(5);
		s NUMBER(8,2);
	BEGIN
		SELECT COUNT(*) INTO aux FROM Valores_banco v WHERE v.idcliente=cliente;
		IF (aux>0) THEN
			SELECT Saldo INTO s FROM Valores_banco v WHERE v.idcliente=cliente;
			IF (s<valor) THEN
				Dbms_output.PUT_LINE('Valor maior do que o saldo atual!');
			ELSE
				UPDATE Valores_banco v SET Saldo=(Saldo-valor) WHERE v.idcliente=cliente;
				Dbms_output.PUT_LINE('Retirada com sucesso!');
			END IF;
		ELSE
			Dbms_output.PUT_LINE('Cliente não encontrado!');
		END IF;
	END;
	
	PROCEDURE VerificarSaldo(cliente IN NUMBER) IS
		aux NUMBER(5);
		saldoAtual NUMBER(8,2);
	BEGIN
		SELECT COUNT(*) INTO aux FROM Valores_banco v WHERE v.idcliente=cliente;
		IF (aux>0) THEN
			SELECT Saldo INTO saldoAtual FROM Valores_banco v WHERE v.idcliente=cliente;
			Dbms_output.PUT_LINE('Saldo atual: '||saldoAtual);
		ELSE 
			Dbms_output.PUT_LINE('Cliente não encontrado!');
		END IF;
	END;
END;
/

CREATE TABLE Profissoes_dup(
	IDProfissao NUMBER(5) PRIMARY KEY,
	DescricaoProfissao VARCHAR2(40) NULL);

	
CREATE OR REPLACE TRIGGER TI_Profissoes
AFTER INSERT 
ON Profissoes REFERENCING NEW AS N
FOR EACH ROW
BEGIN
INSERT INTO
	Profissoes_dup(IDProfissao, DescricaoProfissao)
	VALUES(:N.IDProfissao, :N.DescricaoProfissao);
END;
/

CREATE TABLE monitoramento(
	data DATE,
	tabela VARCHAR2(30), 
	operacao VARCHAR2(1));
	

CREATE OR REPLACE TRIGGER tr_monitor
BEFORE INSERT OR UPDATE OR DELETE
ON Vendedores FOR EACH ROW
BEGIN
	IF INSERTING THEN
		INSERT INTO monitoramento(data,tabela,operacao)
		VALUES(SYSDATE, 'VENDEDORES', 'I');
		ELSE IF UPDATING THEN
			INSERT INTO monitoramento(data,tabela,operacao)
			VALUES(SYSDATE, 'VENDEDORES', 'U');
			ELSE IF DELETING THEN
				INSERT INTO monitoramento(data,tabela,operacao)
				VALUES(SYSDATE, 'VENDEDORES', 'D');
			END IF;
		END IF;
	END IF;
END;
/

INSERT INTO VENDEDORES(IDVENDEDOR, IDCIDADE, NOMEVENDEDOR, NASCIMENTO)
VALUES(101, 520, 'Thalyson Alexandre', '24/02/1997');
	
UPDATE VENDEDORES SET NOMEVENDEDOR='Thalyson Alexandre Rodrigues de Sousa' WHERE IDVENDEDOR=101;

DELETE FROM VENDEDORES WHERE IDVENDEDOR=101;
	
CREATE TABLE FORMACAO(IDFORMACAO NUMBER(3) PRIMARY KEY, DESCRICAO VARCHAR2(30));

CREATE OR REPLACE TRIGGER TI_INSERIR_FORMACAO
BEFORE INSERT ON FORMACAO
REFERENCING NEW AS N FOR EACH ROW
DECLARE
	ultimo NUMBER(5);
BEGIN
	SELECT NVL(MAX(F.IDFORMACAO), 0) INTO ultimo FROM FORMACAO F;
	:N.IDFORMACAO:=ultimo+1;
END;
/

SELECT sys_context('USERENV', 'TERMINAL') COMPUTADOR, 
sys_context('USERENV', 'IP_ADDRESS') SERVIDOR FROM DUAL;

CREATE TABLE TABELA_LOG(
	usuario VARCHAR2(20),
	IP VARCHAR2(15),
	computador VARCHAR2(30),
	servidor VARCHAR2(60),
	data DATE);

CREATE OR REPLACE TRIGGER TRIGGER_AUDITORIA
AFTER LOGON ON DATABASE
BEGIN
	INSERT INTO TABELA_LOG(usuario,IP,computador,servidor,data)
	VALUES(SYS_CONTEXT('USERENV', 'SESSION_USER'), SYS_CONTEXT('USERENV', 'IP_ADDRESS'),
	SYS_CONTEXT('USERENV', 'TERMINAL'), SYS_CONTEXT('USERENV', 'HOST'), SYSDATE);
END;
/

CREATE OR REPLACE FUNCTION Verificar_Arquivo (dir IN VARCHAR2, arquivo IN VARCHAR2) RETURN NUMBER is
	existe boolean; 
	tamanho number; 
	bloco number; 
	r NUMBER(1);
BEGIN
	r:=0;
	utl_file.fgetattr(dir,arquivo, existe, tamanho, bloco );
	IF (existe) THEN
		r:=1;
	END IF;
	RETURN r;
END;
/


CREATE OR REPLACE TRIGGER TG_Monitor_Arquivo
	BEFORE INSERT OR DELETE OR UPDATE
	ON Vendedores FOR EACH ROW
	DECLARE arq utl_file.file_type;
BEGIN
	IF verificar_arquivo('DESTINO','Vendedores.csv')=0 THEN
		arq := utl_file.fopen('DESTINO','Vendedores.csv','W');
	ELSE 
		arq := utl_file.fopen('DESTINO','Vendedores.csv','A');
	END IF;
	
	IF INSERTING THEN
		utl_file.PUT_LINE(arq,SYSDATE||';'||To_Char(SYSDATE,'HH:MI')||';VENDEDORES;INSERT;'||:NEW.nomevendedor);
		ELSE IF UPDATING THEN
			utl_file.PUT_LINE(arq,SYSDATE||';'||To_Char(SYSDATE,'HH:MI')||';VENDEDORES;UPDATE;'||:NEW.nomevendedor);
			ELSE IF DELETING THEN
				utl_file.PUT_LINE(arq,SYSDATE||';'||To_Char(SYSDATE,'HH:MI')||';VENDEDORES;DELETE;'||:OLD.nomevendedor);
			END IF;
		END IF;
	END IF;
	utl_file.fclose(arq);
END;
/









