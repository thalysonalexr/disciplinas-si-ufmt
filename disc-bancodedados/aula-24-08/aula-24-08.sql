CONN sys/ AS SYSDBA;

GRANT EXECUTE ON utl_file TO exercicios;

CREATE DIRECTORY DESTINO AS 'c:\oraclexe';

-- Permissões para leitura e escrita no diretório para usuário

GRANT READ, WRITE ON DIRECTORY DESTINO TO exercicios;
----------------------------------------------------------------
----------------------------------------------------------------
----------------------------------------------------------------

-- Exportar dados em arquivos .TXT

CREATE OR REPLACE PROCEDURE Exp_dados(uf IN VARCHAR2) IS
	CURSOR CursorEstados IS 
	SELECT c.nomecidade, e.sigla
	FROM cidades c, estados e 
	WHERE e.idestado=c.idestado
	AND e.sigla=uf;
	Logico utl_file.file_type;
BEGIN
	Logico := utl_file.fopen('DESTINO', 'Cidades.txt', 'W');
	FOR dados IN CursorEstados LOOP
		utl_file.PUT_LINE(Logico, dados.nomecidade);
	END LOOP;
	utl_file.fclose(Logico);
END;
/

-- CHR(39)
-- Aspas simples

-- Exportar dados de uma tabela em .SQL

SELECT 'INSERT INTO ESTADOS(IDESTADO, NOMEESTADO, SIGLA) VALUES('||e.idestado||','||CHR(39)||e.nomeestado||CHR(39)||','||CHR(39)||e.sigla||CHR(39)||');' RESULTADO
FROM exercicios.estados e;

CREATE OR REPLACE PROCEDURE Exp_Estados_SQL IS
	CURSOR CursorEstados
	IS SELECT 'INSERT INTO ESTADOS(IDESTADO, NOMEESTADO, SIGLA) VALUES('||e.idestado||','||CHR(39)||e.nomeestado||CHR(39)||','||CHR(39)||e.sigla||CHR(39)||');' RESULTADO
	FROM exercicios.estados e;
	Logico utl_file.file_type;
BEGIN
	Logico := utl_file.fopen('DESTINO', 'Estados.sql','W');
	FOR dados IN CursorEstados LOOP
		utl_file.PUT_LINE(Logico, Dados.RESULTADO);
	END LOOP;
	utl_file.fclose(Logico);
END;
/

-- Exportar cidades em .html

CREATE OR REPLACE PROCEDURE Exp_Cidades_html(nome IN VARCHAR2) IS 
	CURSOR CursorEstados IS
	SELECT c.nomecidade, e.sigla
	FROM cidades c, estados e
	WHERE UPPER(c.nomecidade) LIKE UPPER(nome)||'%'
	AND c.idestado=e.idestado;
	Logico utl_file.file_type;
BEGIN
	Logico := utl_file.fopen('DESTINO', 'oracle_html.html', 'W');
	utl_file.PUT_LINE(Logico, '<html><body>');
	utl_file.PUT_LINE(Logico, '<table border=1>');
	FOR dados IN CursorEstados LOOP
		utl_file.PUT_LINE(Logico, '<tr>');
		utl_file.PUT_LINE(Logico, '<td>'||dados.nomecidade||'</td>');
		utl_file.PUT_LINE(Logico, '<td>'||dados.sigla||'</td>');
		utl_file.PUT_LINE(Logico, '</tr>');
	END LOOP;
	utl_file.PUT_LINE(Logico, '</table>');
	utl_file.PUT_LINE(Logico, '</body></html>');
	utl_file.fclose(Logico);
END;
/

-- Excessões

CREATE OR REPLACE FUNCTION FDivisao(x IN NUMBER, y IN NUMBER) RETURN NUMBER IS
valor NUMBER;
BEGIN
	valor := x/y;
	RETURN valor;
	EXCEPTION
		WHEN ZERO_DIVIDE THEN
			Dbms_output.put_line('Erro divisão por zero!');
			RETURN NULL;
END;
/

SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE ImportarDados AS valor VARCHAR2(80);
	Arquivo utl_file.file_type;
BEGIN
	Arquivo := utl_file.fopen('DESTINO', 'dados.txt', 'R');
	LOOP
		BEGIN
			utl_file.get_line(Arquivo, valor);
			Dbms_output.put_line(valor);
			EXCEPTION
				WHEN NO_DATA_FOUND THEN
					EXIT;
		END;
	END LOOP;
	utl_file.fclose(Arquivo);
END;
/

CREATE TABLE Textos(id NUMBER(4) PRIMARY KEY, str VARCHAR2(100));

CREATE OR REPLACE PROCEDURE DadosTabela(origem IN VARCHAR2) AS
	valor VARCHAR2(100);
	Arquivo utl_file.file_type;
	indice NUMBER(4);
BEGIN
	Arquivo := utl_file.fopen('DESTINO', origem, 'R');
	indice := 0;
	SELECT NVL(MAX(t.id),0) INTO indice FROM textos t;
	LOOP
		BEGIN
			utl_file.get_line(Arquivo, valor);
			indice := indice + 1;
			INSERT INTO textos(id, str) VALUES(indice, valor);
			EXCEPTION
			WHEN NO_DATA_FOUND THEN
				EXIT;
		END;
	END LOOP;
	utl_file.fclose(Arquivo);
END;
/

-- Procurar ocorrencias de caracter em arquivo

CREATE OR REPLACE 
FUNCTION PesquisaCaracter(Arquivo IN VARCHAR2, Car IN VARCHAR2) RETURN NUMBER AS
	Logico utl_file.file_type;
	valor VARCHAR2(150);
	x NUMBER(5);
	t NUMBER(5);
BEGIN
	Logico := utl_file.fopen('DESTINO', Arquivo, 'R');
	t := 0;
	LOOP
		BEGIN
			utl_file.GET_LINE(Logico, valor);
			FOR x IN 1..LENGTH(valor) LOOP
				IF (UPPER(SUBSTR(valor, x, 1))=UPPER(Car)) THEN
					t := t + 1;
				END IF;
			END LOOP;
			EXCEPTION
			WHEN NO_DATA_FOUND THEN
				EXIT;
		END;
	END LOOP;
	utl_file.fclose(Logico);
	RETURN t;
END;
/
	
CREATE OR REPLACE 
PROCEDURE ConcatenaArquivos(Arquivo1 IN VARCHAR2, Arquivo2 IN VARCHAR2, Destino IN VARCHAR2) IS
	L1 utl_file.file_type;
	l2 utl_file.file_type;
	valor VARCHAR2(150);
	
BEGIN
	l1 := utl_file.fopen('DESTINO', Arquivo1, 'R');
	L2 := utl_file.fopen('DESTINO', Destino, 'W');
	LOOP
		BEGIN
			utl_file.GET_LINE(l1, valor);
			utl_file.PUT_LINE(l2, valor);
			EXCEPTION
			WHEN NO_DATA_FOUND THEN
				EXIT;
		END;
	END LOOP;
	utl_file.fclose(l1);
	l1 := utl_file.fopen('DESTINO', Arquivo2, 'R');
	LOOP
		BEGIN
			utl_file.GET_LINE(l1, valor);
			utl_file.PUT_LINE(l2, valor);
			EXCEPTION
			WHEN NO_DATA_FOUND THEN
				EXIT;
		END;
	END LOOP;
	utl_file.fclose(l1);
	utl_file.fclose(l2);
END;
/
	
CREATE OR REPLACE PROCEDURE Cidades_Clientes AS
	CURSOR C_Cidades IS 
	SELECT DISTINCT cl.idcidade,ci.nomecidade 
	FROM clientes cl,cidades ci 
	WHERE cl.idcidade=ci.idcidade;
	
	CURSOR C_Clientes(P_Cidade IN NUMBER) is 
	SELECT cli.nomecliente FROM clientes cli
	WHERE cli.idcidade=P_Cidade;
	
	Arquivo utl_file.file_type;
BEGIN
	Arquivo := utl_file.fopen('DESTINO','Cli_Cid.txt','W');
	FOR Dados_Cidades IN C_Cidades LOOP
		utl_file.put_line(Arquivo, Dados_Cidades.nomecidade);
		FOR Dados_Clientes IN C_Clientes(Dados_Cidades.idcidade) LOOP
			utl_file.put_line(Arquivo,' '||Dados_Clientes.nomecliente);
		END LOOP;
	END LOOP;
	utl_file.fclose(Arquivo);
END;
/	
	
CREATE OR REPLACE FUNCTION Verificar_Arquivo (dir IN VARCHAR2, arquivo IN VARCHAR2) RETURN NUMBER is
	existe boolean; 
	tamanho number; 
	bloco number; 
	r NUMBER(1);
BEGIN
	r:=0;
	utl_file.fgetattr (dir,arquivo, existe, tamanho, bloco );
	IF (existe) THEN
		r:=1;
	END IF;
	RETURN r;
END;










