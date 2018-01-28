----------------------------------------------------------------
-- link http://127.0.0.1:8080 Oracle Database Express Edition --
-- 20-06-2017 - Thalyson Alexandre Rodrigues de Sousa
----------------------------------------------------------------

CONNECT SYS/ AS SYSDBA; -- Conectar como DBA em usuario SYS

-- Criar tablespace -- 
CREATE TABLESPACE dados 
DATAFILE 'c:/oraclexe/dados/dados.ora' 
SIZE 100m AUTOEXTEND ON NEXT 10m MAXSIZE 150m;