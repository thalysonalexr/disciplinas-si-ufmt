-- Setar saida de dados das procedures 
SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE saida IS
mensagem VARCHAR2(30);
BEGIN
mensagem := 'UFMT';
Dbms_output.put_line(mensagem);
END;
/ -- Finalizar procedimento ou função

-- Executar procedure
EXEC saida;

SELECT
	nomecliente, SUBSTR(nomecliente, 1,5)sub,
	length(nomecliente)tamanho from clientes c;
 

CREATE OR REPLACE FUNCTION somar(v1 IN NUMBER, v2 IN NUMBER)
RETURN NUMBER IS
BEGIN
	RETURN v1+v2;
END;
/

SELECT somar(2,3) FROM DUAL;

CREATE OR REPLACE FUNCTION FResultado(
p_n1 IN NUMBER, p_n2 IN NUMBER, p_n3 IN NUMBER, p_n4 IN NUMBER)
RETURN VARCHAR2 IS
v_resultado VARCHAR2(30);
v_media NUMBER(4,2);
BEGIN
	v_media := (p_n1+p_n2+p_n3+p_n4)/4;
	IF v_media<5 THEN v_resultado :='Reprovado';
	ELSE v_resultado := 'Aprovado';
	END IF;
	RETURN v_resultado;
END;
/

SELECT FResultado(4,3,5,7) FROM DUAL;

CREATE TABLE NotasTeste(
	matricula NUMBER(4),
	nota1 NUMBER(4,2),
	nota2 NUMBER(4,2),
	nota3 NUMBER(4,2),
	nota4 NUMBER(4,2), PRIMARY KEY(matricula));

INSERT INTO NotasTeste(matricula, nota1, nota2, nota3, nota4)
VALUES(1,5,7,8,3);
INSERT INTO NotasTeste(matricula, nota1, nota2, nota3, nota4)
VALUES(2,4,5,3,10);
INSERT INTO NotasTeste(matricula, nota1, nota2, nota3, nota4)
VALUES(3,6.5,6,8,7);

SELECT nota1, nota2, nota3, nota4, FResultado(nota1, nota2, nota3, nota4)
Resultado FROM NotasTeste;


CREATE OR REPLACE FUNCTION calcular(v1 IN NUMBER, v2 IN NUMBER, op IN CHAR) RETURN NUMBER IS
resultado NUMBER;
BEGIN
	CASE op
		WHEN '+' THEN resultado := v1 + v2;
		WHEN '-' THEN resultado := v1 - v2;
		WHEN '*' THEN resultado := v1 * v2;
		WHEN '/' THEN IF v2 <> 0 THEN resultado := v1/v2;
						ELSE resultado := 0;
					  END IF;
		END CASE; 
	RETURN resultado;
END;
/

SELECT calcular(2, 2, '+') FROM DUAL;

CREATE OR REPLACE FUNCTION FData(P_Cidade IN VARCHAR2) RETURN VARCHAR2 IS
dia VARCHAR2(2); ano VARCHAR2(4); mes VARCHAR2(2); nome_mes VARCHAR2(12);
BEGIN
	dia := TO_CHAR(SYSDATE, 'DD');
	mes := TO_CHAR(SYSDATE, 'MM');
	ano := TO_CHAR(SYSDATE, 'YYYY');
	
	CASE mes
		WHEN 1 THEN nome_mes := 'Janeiro'; WHEN 2 THEN nome_mes := 'Fevereiro';
		WHEN 3 THEN nome_mes := 'Março'; WHEN 4 THEN nome_mes := 'Abril';
		WHEN 5 THEN nome_mes := 'Maio'; WHEN 6 THEN nome_mes := 'Junho';
		WHEN 7 THEN nome_mes := 'Julho'; WHEN 8 THEN nome_mes := 'Agosto';
		WHEN 9 THEN nome_mes := 'Setembro'; WHEN 10 THEN nome_mes := 'Outubro';
		WHEN 11 THEN nome_mes := 'Novembro'; WHEN 12 THEN nome_mes := 'Dezembro';
	END CASE;
	RETURN P_Cidade||', '||dia||' de '||nome_mes||' de '||ano;

END;
/

SELECT FData(nomecidade) FROM cidades WHERE nomecidade='Sonora';

SHOW ERRORS // Mostrar linha com erro de compilação

CREATE OR REPLACE FUNCTION ParImpar(Valor IN INTEGER)
RETURN VARCHAR2 IS
aux VARCHAR2(15);
BEGIN
	aux := 'Impar';
	IF Mod(Valor, 2)=0
		THEN aux := 'Par';
	END IF;
	RETURN aux;
END;
/

SELECT ParImpar(8) FROM DUAL;

CREATE OR REPLACE PROCEDURE contador(valor IN NUMBER) IS
BEGIN
	FOR variavel IN 1..valor
	LOOP
		Dbms_output.put_line(variavel);
	END LOOP;
END;
/

EXEC contador(100);


CREATE OR REPLACE PROCEDURE contadorRandomico(valor IN NUMBER) IS
BEGIN
	FOR variavel IN 1..valor
	LOOP
		Dbms_output.put_line(trunc(Dbms_random.value(1, 100)));
	END LOOP;
END;
/

EXEC contadorRandomico(50);


CREATE OR REPLACE PROCEDURE ContadorRandomico(valor IN NUMBER) AS
total NUMBER(4);
valor2 NUMBER(3);
BEGIN
	total := 0; valor2 := 0;
	FOR variavel IN 1..valor
	LOOP
		valor2 := trunc(Dbms_random.value(1,100));
		total := total + valor2;
		Dbms_output.put_line(valor2);
	END LOOP;
	Dbms_output.put_line('----------------');
	Dbms_output.put_line('Total: '||total);

END;
/

EXEC ContadorRandomico(10);

CREATE OR REPLACE FUNCTION TotalCar(PTexto IN VARCHAR2, PCar IN CHAR)
RETURN INTEGER IS
x NUMBER(3);
total NUMBER(3);
BEGIN
	total := 0;
	FOR x IN 1..LENGTH(PTexto)
	LOOP
		IF UPPER(SUBSTR(PTexto,x,1))=UPPER(PCar) THEN
			total := total + 1;
		END IF;
	END LOOP;
	RETURN total;
END;
/

SELECT e.nomeestado, TotalCar(e.nomeestado, 'a') TOTAL FROM estados e;

CREATE TABLE Alunos(
	matricula NUMBER(5),
	nome VARCHAR2(40),
	PRIMARY KEY(matricula));
	
CREATE SEQUENCE seq_matricula;

CREATE OR REPLACE PROCEDURE inserir(n in VARCHAR2) IS
BEGIN
	INSERT INTO alunos(matricula, nome)
	VALUES(seq_matricula.nextval, n);
END;
/

EXEC Inserir('Thalyson');

CREATE OR REPLACE PROCEDURE Inserir(n in VARCHAR2) IS
ultimo INTEGER;
BEGIN
	SELECT NVL(MAX(alunos.matricula),0) INTO ultimo
	FROM alunos;
	INSERT INTO alunos(matricula, nome) VALUES
	(ultimo+1, n);
END;
/

EXEC Inserir('Luis');

CREATE OR REPLACE PROCEDURE consulta1(codigo IN INTEGER) AS
nome VARCHAR2(30);
BEGIN
	SELECT c.nomecliente INTO nome FROM clientes c
	WHERE c.idcliente=codigo;
	Dbms_output.put_line(nome);
END;
/

EXEC consulta1(4);








