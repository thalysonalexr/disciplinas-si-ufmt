CREATE USER exercicios2 IDENTIFIED BY abc DEFAULT TABLESPACE dados;
GRANT DBA, RESOURCE, CONNECT TO exercicios2;

-- Importar BASE DE DADOS para USUARIO -- 
-- Entrar na pasta -- 
IMP exercicios2/abc

-- ARQUIVO 

dados2.dmp

-- ENTER, ENTER, ENTER... --
-- Nome do usuario a ser direcionado a tablespace

exercicios2

CONN exercicios2/abc;

-- Monitores e fabricantes -- 

SELECT F.idFabricante, F.nomeFabricante, 
	   M.idMonitor, M.descricaoMonitor
FROM Exercicios2.monitor M,
	 Exercicios2.fabricantes F 
WHERE M.idFabricante = F.idFabricante
ORDER BY F.nomeFabricante;

-- Memorias e fabricantes --

SELECT F.idFabricante, F.nomeFabricante,
	   M.idMemoria, M.descricaoMemoria
FROM Exercicios2.fabricantes F,
	 Exercicios2.memorias M
WHERE M.idFabricante = F.idFabricante
ORDER BY F.idFabricante;

-- Softwares iniciados com a letra W -- 

SELECT COUNT(*) TOTAL
FROM softwares S
WHERE S.nomeSoftware LIKE 'W%';

-- Total de softwares instalados -- 

SELECT COUNT(*) TOTAL
FROM SoftwaresInstalados SI;

-- Apresentar softwares instalados pelo nome -- 

SELECT SF.nomeSoftware, COUNT(*) TOTAL
FROM SoftwaresInstalados SI,
	 Softwares SF
WHERE SI.idSoftware = SF.idSoftware
GROUP BY SF.nomeSoftware
ORDER BY TOTAL DESC;

-- Apresentar memorias pela descrição --

SELECT M.descricaoMemoria, COUNT(*) TOTAL
FROM Exercicios2.memorias M
GROUP BY M.descricaoMemoria
ORDER BY TOTAL DESC;


--------------------------------------------------------
-- Importar dicionario de dados                        -|
-- jdbc:oracle:thin:exercicios2/abc@localhost:1521:xe  -|
-- oracle.jdbc.driver.OracleDriver                     -| 
--------------------------------------------------------

-- EXERCICIOS --

-- 1 --

SELECT C.DescricaoComputador, M.DescricaoMemoria, C.CapacidadeRam
FROM Exercicios2.Computadores C,
	 Exercicios2.Memorias M
WHERE C.IdMemoria = M.IdMemoria
AND C.CapacidadeRam >= 32;

-- 2 --

SELECT C.DescricaoComputador, C.CapacidadeHD, M.DescricaoMonitor
FROM Exercicios2.computadores C,
	 Exercicios2.monitor M
WHERE C.idMonitor = M.idMonitor
AND UPPER(M.DescricaoMonitor) LIKE '%LED%';

-- 3 ---

SELECT c.descricaocomputador, s.nomesoftware
FROM computadores c, softwaresinstalados si, softwares s
WHERE c.idcomputador=si.idcomputador 
AND si.idsoftware=s.idsoftware 
AND c.capacidaderam < 16;

-- 4 --

SELECT f.nomefabricante, COUNT(c.capacidaderam) TOTAL_RAM
FROM computadores c, memorias m, fabricantes f
WHERE c.idmemoria=m.idmemoria AND m.idfabricante=f.idfabricante
GROUP BY f.nomefabricante;








