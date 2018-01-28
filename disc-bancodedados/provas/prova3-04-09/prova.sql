SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE ListarAutores AS
	CURSOR DadosEditora IS
	SELECT e.ideditora ID, e.nomeeditora NOME, COUNT(*)
	FROM editoras e, livros l
	WHERE e.ideditora=l.ideditora
	GROUP BY e.ideditora, e.nomeeditora
	HAVING COUNT(*) IN (SELECT MAX(R.TOTAL) 
						FROM(SELECT edi.ideditora, COUNT(*) TOTAL
							 FROM editoras edi, livros liv
							 WHERE edi.ideditora=liv.ideditora
							 GROUP BY edi.ideditora
							 ORDER BY TOTAL DESC) R);
	CURSOR DadosAutores(p_ideditora IN NUMBER) IS
	SELECT DISTINCT li.autor
	FROM livros li, editoras ed
	WHERE li.ideditora=p_ideditora;
	editora NUMBER(10);
BEGIN
	FOR dEditora IN DadosEditora LOOP
		Dbms_output.put_line('Editora: '||dEditora.NOME);
		Dbms_output.put_line('Autores:');
		FOR dadosAutor IN DadosAutores(dEditora.ID) LOOP 
			Dbms_output.put_line('	->'||dadosAutor.autor);
		END LOOP;
	END LOOP;
END;
/

EXEC ListarAutores;


CREATE OR REPLACE FUNCTION IniciaisNome(p_nome IN VARCHAR2) RETURN VARCHAR2 IS
	iniciais VARCHAR2(25);
BEGIN
	IF (SUBSTR(p_nome,1,1)<>' ') THEN
		iniciais := UPPER(SUBSTR(p_nome,1,1))||'.';
	END IF;
	
	FOR i IN 2..LENGTH(p_nome) LOOP
		IF (SUBSTR(p_nome, i-1, 1) = ' ') AND (SUBSTR(p_nome, i, 1)<>' ') THEN
			IF UPPER(SUBSTR(p_nome, i, 3)) IN ('DOS', 'DAS') THEN
				IF  (SUBSTR(p_nome, i+3, 1) <> ' ') THEN
					iniciais := iniciais||UPPER(SUBSTR(p_nome, i, 1))||'.';
				END IF;
			ELSE IF UPPER(SUBSTR(p_nome, i, 2)) IN ('DE', 'DA', 'DO') THEN
				IF (SUBSTR(p_nome, i+2, 1) <> ' ') THEN
					iniciais := iniciais||UPPER(SUBSTR(p_nome, i, 1))||'.';
				END IF;
			ELSE
				iniciais := iniciais||UPPER(SUBSTR(p_nome, i, 1))||'.';
			END IF;
		END IF;
    END IF;
	END LOOP;
	RETURN iniciais;
END;
/


SELECT IniciaisNome('Matheus dos Santos Neves') FROM DUAL;
SELECT IniciaisNome('Thalyson Alexandre Rodrigues de Sousa') FROM DUAL;
SELECT IniciaisNome('Maria da Silva Rocha') FROM DUAL;
SELECT IniciaisNome('Jadir Batista das Virgens') FROM DUAL;
SELECT IniciaisNome('Joviniano Neves Medeiros') FROM DUAL;
SELECT IniciaisNome('Leopoldo de Souza Medeiros') FROM DUAL;
SELECT IniciaisNome('Audie Souza Santana') FROM DUAL;
SELECT IniciaisNome('Eliécer de Souza Filho') FROM DUAL;
SELECT IniciaisNome('Cecilio da Silva Santana') FROM DUAL;
SELECT IniciaisNome('danilo Delmiro medeiros donivan dastilo') FROM DUAL;









