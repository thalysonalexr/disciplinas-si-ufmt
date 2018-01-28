SET SERVEROUTPUT ON;

-- Exe 1

CREATE OR REPLACE PROCEDURE PFormatar(nome IN VARCHAR2) AS
	p NUMBER(5); 
	u NUMBER(5); 
	x NUMBER(5);
	primeiro VARCHAR2(25); 
	ultimo VARCHAR2(25);
BEGIN
	p := 0; 
	u := 0;
	
	FOR x IN 1..LENGTH(nome)
	LOOP
		IF (SUBSTR(nome, x, 1)=' ') AND (p=0) THEN
			p := x;
		END IF;
		IF (SUBSTR(nome, x, 1)=' ') THEN
			u := x;
		END IF;
	END LOOP;
	
	primeiro := SUBSTR(nome, 1, p);
	ultimo := SUBSTR(nome, u+1, u+LENGTH(nome));
	Dbms_output.put_line(primeiro||', '||ultimo);
END;
/

-- Exe 2

CREATE OR REPLACE FUNCTION FEstatistica(P_Nome IN VARCHAR2) RETURN VARCHAR2 IS
	i NUMBER(3);
	vogais NUMBER(3); 
	espacos NUMBER(3); 
	consoantes NUMBER(3);
	perc_vogais NUMBER(3); 
	perc_espacos NUMBER(3); 
	perc_consoantes NUMBER(3);
BEGIN
	vogais := 0; 
	espacos := 0;
	
	FOR i IN 1..LENGTH(P_Nome) LOOP
		IF (SUBSTR(P_Nome, i, 1))=' ' THEN
			espacos := espacos + 1;
		END IF;
		IF (UPPER(SUBSTR(P_Nome, i, 1)) IN ('A', 'E', 'I', 'O', 'U')) THEN
			vogais := vogais + 1;
		END IF;
	END LOOP;
	
	consoantes := LENGTH(P_Nome)-(vogais+espacos);
	perc_vogais := (vogais*100)/LENGTH(P_Nome);
	perc_espacos := (espacos*100)/LENGTH(P_Nome);
	perc_consoantes := (consoantes*100)/LENGTH(P_Nome);
	
	RETURN 'Vogais: '||perc_vogais||'% Consoantes: '||perc_consoantes||'% Espaços: '||perc_espacos||'%';
END;
/


-- Exem 1

CREATE OR REPLACE PROCEDURE Lista_Vendedores AS 
CURSOR CursorVendedores IS
	SELECT nomevendedor, idvendedor
	FROM vendedores;
BEGIN 
	FOR linhas in CursorVendedores LOOP
		Dbms_output.put_line(linhas.nomevendedor);
	END LOOP;
END;
/

-- Exem 2

CREATE OR REPLACE PROCEDURE ConsultaCidades2(nome IN VARCHAR2) IS
CURSOR CursorCidades IS
	SELECT nomecidade, idcidade
	FROM cidades 
	WHERE UPPER(nomecidade) 
	LIKE UPPER(nome)||'%';
BEGIN
	FOR linhas IN CursorCidades LOOP
		Dbms_output.put_line(linhas.nomecidade);
	END LOOP;
END;
/


CREATE OR REPLACE PROCEDURE ConsultaProduto(codigo IN NUMBER) IS
CURSOR CursorProdutos IS
	SELECT vd.datavenda, cl.nomecliente, ve.nomevendedor
	FROM vendas vd, clientes cl, vendedores ve, veiculos pr
	WHERE vd.idcliente=cl.idcliente AND vd.idvendedor=ve.idvendedor AND
	pr.idveiculo=vd.idveiculo AND pr.idveiculo=codigo;
BEGIN
	FOR linhas IN CursorProdutos LOOP
		Dbms_output.put_line('Data venda....'||linhas.datavenda);
		Dbms_output.put_line('Cliente.......'||linhas.nomecliente);
		Dbms_output.put_line('Vendedor......'||linhas.nomevendedor);
		Dbms_output.put_line('----------------------------');
	END LOOP;
END;
/

EXEC ConsultaProduto(2);

CREATE OR REPLACE PROCEDURE Editora_Livros AS
CURSOR C_Editoras IS 
	SELECT ed.nomeeditora, ed.ideditora
	FROM editoras ed;
CURSOR C_Livros(P_Editora IN NUMBER) IS
	SELECT  li.titulo, li.ideditora
	FROM livros li
	WHERE li.ideditora=P_Editora;
BEGIN
	SET SERVEROUTPUT ON SIZE 1000000;
	FOR Dados_Editoras IN C_Editoras LOOP
		Dbms_output.put_line(Dados_Editoras.nomeeditora);
		FOR Dados_Livros IN C_Livros(Dados_Editoras.ideditora) LOOP
			Dbms_output.put_line(' '||Dados_Livros.titulo);
		END LOOP;
	END LOOP;
END;
/

EXEC Editora_Livros;

CREATE OR REPLACE PROCEDURE Estados_Cidades AS
CURSOR C_Estados IS 
	SELECT DISTINCT estado 
	FROM cidades 
	ORDER BY estado;
CURSOR C_Cidades (P_Estado IN VARCHAR2) IS
	SELECT ci.nomecidade
	FROM cidades ci
	WHERE ci.estado=P_Estado;
	
BEGIN
	FOR Dados_Estados IN C_Estados LOOP
		Dbms_output.put_line(Dados_Estados.estado);
		FOR Dados_Cidades IN C_Cidades(Dados_Estados.estado) LOOP
			Dbms_output.put_line(' ->'||Dados_Cidades.nomecidade);
		END LOOP;
	END LOOP;
END;
/














