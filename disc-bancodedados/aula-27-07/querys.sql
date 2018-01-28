-- AULA 20-07 --

CREATE OR REPLACE VIEW
VisaoVendedores AS
SELECT v.nomeVendedor
FROM vendedores v WHERE nomeVendedor
LIKE 'A%';

CREATE OR REPLACE VIEW
ConsultaClientes AS
SELECT cl.nomeCliente, SUM(ve.valor) TOTAL
FROM vendas vd, veiculos ve, clientes cl
WHERE ve.idveiculo=vd.idveiculo 
AND cl.idcliente = vd.idcliente
GROUP BY cl.nomeCliente
ORDER BY cl.nomeCliente;

CREATE OR REPLACE VIEW
Veiculos80 AS 
SELECT ve.modelo FROM veiculos ve
WHERE ve.idveiculo NOT IN
(SELECT v.idveiculo FROM vendas v
WHERE TO_CHAR(v.datavenda, 'YYYY')=1980);

/*
TO_CHAR(atributo, 'MASCARA')
ANO YYYY
MES MM
DIA DD
HORA HH
MINUTO MI
SEGUNDO SS
junção ('dd/mm/yyyy')
*/

/*
TOTAL DE VENDAS 

select count(*) total_venda 
from clientes, cidades, vendas 
where vendas.idcliente=clientes.idcliente 
and clientes.idcidade=cidades.idcidade 
and cidades.estado = 'MT'
*/

CREATE SYNONYM cid FOR cidades;

CREATE OR REPLACE VIEW
VisaoCidadesMT AS 
SELECT c.nomeCidade
FROM cidades c
WHERE c.estado = 'MT' AND c.nomeCidade LIKE '%m'
ORDER BY c.nomeCidade;

CREATE OR REPLACE VIEW
VisaoNomeSantos AS 
SELECT c.nomeCliente
FROM clientes c
WHERE UPPER(c.nomeCliente) LIKE '%SANTOS%';

CREATE OR REPLACE VIEW
VisaoClientesCPF AS 
SELECT c.nomeCliente, SUBSTR(c.cpf, 1, 3) CPF
FROM clientes c;

CREATE OR REPLACE VIEW
VisaoClienteCidEst AS
SELECT cl.nomeCliente, ci.nomeCidade, ci.estado
FROM clientes cl, cidades ci
WHERE cl.idCidade = ci.idCidade
ORDER BY cl.nomeCliente;

CREATE SYNONYM clientelocal FOR visaoclientecidest;

-- Lista Exercicios QUERYS -- 

-- 1 Apresentar todas as cidades de Mato Grosso iniciadas com a letra R.-- 
SELECT c.nomeCidade
FROM cidades c
WHERE c.estado = 'MT' AND c.nomeCidade LIKE 'R%';

-- 2 Apresentar nomes dos clientes com CPF terminados em 00.--
SELECT c.nomeCliente, c.cpf
FROM clientes c
WHERE c.cpf LIKE '%00';

-- 3 Apresentar nomes dos clientes com respectivas cidades, e veículos adquiridos.--

SELECT cl.nomeCliente, ci.nomeCidade, ve.modelo
FROM clientes cl, cidades ci, veiculos ve, vendas vd
WHERE cl.idcliente=vd.idcliente 
AND vd.idveiculo=ve.idveiculo
AND cl.idCidade=ci.idCidade;

-- 4 Total de formas de pagamento por cliente.--

SELECT cl.nomeCliente, fp.descricaoformapgto, COUNT(*) TOTAL_FRM_PGTO
FROM clientes cl, vendas vd, formasPagamento fp
WHERE cl.idcliente=vd.idcliente 
AND vd.idformaspgto=fp.idformaspgto
GROUP BY cl.nomeCliente, fp.descricaoformapgto;

-- 5 Total de clientes por cidades.--

SELECT ci.nomeCidade, COUNT(*) TOTAL_CLIENTES
FROM clientes cl, cidades ci
WHERE cl.idcidade=ci.idcidade
GROUP BY ci.nomeCidade;

-- 6 Quantidade de cidades por estado.--

SELECT ci.estado, COUNT(*) QTD_CIDADES
FROM cidades ci, cidades es
WHERE es.idcidade=ci.idcidade
GROUP BY ci.estado;

-- 7 Total de clientes por mês de venda.--

SELECT TO_CHAR(vd.datavenda, 'MM') MES_VENDA, COUNT(*) QTD_CLIENTES
FROM clientes cl, vendas vd
WHERE cl.idcliente=vd.idcliente
GROUP BY TO_CHAR(vd.datavenda, 'MM')
ORDER BY TO_CHAR(vd.datavenda, 'MM'); 

-- 8 Quantidade de vendedores por fabricante de veículo.--

SELECT fbt.nomefabricante, COUNT(*) QTD_VENDEDORES
FROM vendedores vds, vendas vda, veiculos vcl, fabricantes fbt
WHERE vds.idvendedor=vda.idvendedor 
AND vda.idveiculo=vcl.idveiculo 
AND vcl.idveiculo=fbt.idfabricante
GROUP BY fbt.nomefabricante;

-- 9 Descrição e total dos veículos vendidos por mês.--

SELECT TO_CHAR(vda.datavenda, 'MM') MES, vcl.modelo MODELOS, vcl.ano, COUNT(*) QTD_VEIC_VENDIDOS
FROM vendas vda, veiculos vcl
WHERE vda.idveiculo=vcl.idveiculo
GROUP BY TO_CHAR(vda.datavenda, 'MM'), vcl.modelo, vcl.ano
ORDER BY MES;

-- 10 Nomes dos vendedores que realizaram vendas para clientes de MT. --

SELECT vds.nomevendedor, COUNT(*) TOTAL
FROM vendedores vds, vendas vda, clientes cl, cidades cid
WHERE vds.idvendedor=vda.idvendedor 
AND vda.idcliente=cl.idcliente 
AND cl.idcidade=cid.idcidade
AND cid.estado = 'MT'
GROUP BY vds.nomeVendedor;

-- 11 Total de produtos vendidos por cidade. --

SELECT cid.nomecidade, cid.estado UF, COUNT(*) QTD_VEICULOS
FROM vendas vda, clientes cl, cidades cid
WHERE vda.idcliente=cl.idcliente
AND cl.idcidade=cid.idcidade
GROUP BY cid.nomecidade, cid.estado
ORDER BY QTD_VEICULOS DESC;

-- 12 Apresentar os clientes que realizaram as maiores quantidade de compras. --

SELECT cl.nomeCliente, COUNT(*) TOTAL
FROM vendas vd, clientes cl
WHERE vd.idcliente=cl.idcliente
GROUP BY cl.nomecliente
HAVING COUNT(*)=
(SELECT MAX(VALORES.TOTAL) MAIOR
FROM (SELECT ve.idcliente, COUNT(*) TOTAL FROM vendas ve
GROUP BY ve.idcliente) VALORES);

-- TODA LISTA --

SELECT cl.nomecliente, COUNT(*) QTD_COMPRAS
FROM clientes cl, vendas vda
WHERE cl.idcliente=vda.idcliente
GROUP BY cl.nomecliente
ORDER BY QTD_COMPRAS DESC;

-- 13 Apresentar nomes de clientes e vendedores na mesma sentença. --

SELECT 'Vendedor: '||vd.nomevendedor NOME FROM vendedores vd
UNION
SELECT 'Cliente: '||cl.nomecliente NOME FROM clientes cl;

-- 14 Total de vendas por cidade da revenda. --

SELECT cid.nomecidade, COUNT(*) TOTAL_VENDAS
FROM vendas vda, revendas rev, cidades cid
WHERE vda.idrevenda=rev.idrevenda
AND rev.idcidade=cid.idcidade
GROUP BY cid.nomecidade
ORDER BY cid.nomecidade;

-- 15 Apresentar todos os clientes e revendas Mato Grosso na mesma sentença. --

SELECT 'Revenda: '||rv.nomerevenda NOME FROM revendas rv, cidades ci
WHERE ci.estado = 'MT'
UNION
SELECT 'Cliente: '||cl.nomecliente NOME FROM clientes cl;

-- 16 Total Vendido por veiculo.--

SELECT vcl.modelo, vcl.ano, SUM(vcl.valor) VALOR_TOTAL
FROM veiculos vcl, vendas vda
WHERE vcl.idveiculo=vda.idveiculo
GROUP BY vcl.modelo, vcl.ano
ORDER BY VALOR_TOTAL DESC;

-- 17 Total de clientes por estado (sigla).--

SELECT cid.estado UF, COUNT(*) TOTAL_CLIENTES
FROM clientes cl, cidades cid
WHERE cl.idcidade=cid.idcidade
GROUP BY cid.estado;

-- 18 Descrição dos veículos não comercializados.--

SELECT * FROM veiculos ve
WHERE ve.idveiculo 
NOT IN(SELECT ve.idveiculo 
		FROM vendas vd);

-- 19 Lista dos veículos mais antigos vendidos.--

SELECT * FROM veiculos ve
WHERE ve.ano=(
	SELECT MIN(ve.ano)
	FROM veiculos ve);

-- 20 Total de veículos classificados por fabricante.--

SELECT fa.nomefabricante, COUNT(*) TOTAL
FROM veiculos ve, fabricantes fa
WHERE ve.idfabricante=fa.idfabricante
GROUP BY fa.nomefabricante;

-- 21. Apresentar os nomes dos veículos mais potentes.--

SELECT v.modelo, v.potenciahp FROM veiculos v WHERE v.potenciahp=(
SELECT MAX(v.potenciahp) FROM veiculos v);

-- 22. Criar uma view para apresentar as 3 cores mais utilizadas.--

CREATE OR REPLACE VIEW VisaoCor
AS 
SELECT c.descricaocor, COUNT(*) TOTAL
FROM cores c, veiculos v
WHERE c.idcor=v.idcor
GROUP BY c.descricaocor
HAVING COUNT(*) IN
(SELECT RESULTADO.TOTAL 
FROM(SELECT cr.idcor, COUNT(*) TOTAL
FROM cores cr, veiculos ve
WHERE cr.idcor=ve.idcor
GROUP BY cr.idcor, cr.descricaocor
ORDER BY TOTAL DESC) RESULTADO
WHERE ROWNUM <= 3);

-- 23. Criar uma view para apresentar o total de revendas por estado. --

CREATE OR REPLACE VIEW VisaoRevendaUF AS
SELECT ci.estado, COUNT(*) TOTAL
FROM cidades ci, revendas rv
WHERE ci.idcidade=rv.idcidade
GROUP BY ci.estado;

-- 24. Apresente o CPF e nome do cliente que realizou a primeira compra. --

SELECT cl.nomecliente, cl.cpf
FROM clientes cl, vendas vd
WHERE cl.idcliente=vd.idcliente
AND vd.datavenda=(SELECT MIN(vd2.datavenda) FROM vendas vd2);

-- 25. Nomes dos 5 vendedores que realizaram mais vendas. --

SELECT ven.nomevendedor, COUNT(*) TOTALVENDIDO 
FROM vendedores ven, vendas vds
WHERE ven.idvendedor=vds.idvendedor
GROUP BY ven.nomevendedor
HAVING COUNT(*) IN 
	(
	SELECT * FROM (
		SELECT DISTINCT(R.total) t FROM (
			SELECT vd.idvendedor, COUNT(*) TOTAL
			FROM vendas vd
			GROUP BY vd.idvendedor
			ORDER BY TOTAL DESC) R
		WHERE ROWNUM <= 6
	ORDER BY t DESC) RESULTADOS);

-- 26. Criar uma view para apresentar a forma de pagamento mais utilizada. --

CREATE OR REPLACE VIEW VisaoPagamentos
AS
SELECT f.descricaoformapgto, COUNT(*) TOTAL
FROM formasPagamento f, vendas vd
WHERE f.idformaspgto=vd.idformaspgto
GROUP BY f.descricaoformapgto
HAVING COUNT(*)=(SELECT MAX(RESULTADO.TOTAL) FROM(
	SELECT fp.idformaspgto, COUNT(*) TOTAL
	FROM formasPagamento fp, vendas vd
	WHERE vd.idformaspgto=fp.idformaspgto
	GROUP BY fp.idformaspgto) RESULTADO);

-- 27. Valor vendido anualmente.

SELECT TO_CHAR(vd.datavenda, 'YYYY') ANO, COUNT(*) TOTAL_VENDIDO
FROM vendas vd
GROUP BY TO_CHAR(vd.datavenda, 'YYYY')
ORDER BY ANO;

-- 28. Criar uma view para total de veículos vendidos por estado. --

CREATE OR REPLACE VIEW VisaoVeiculos
AS 
SELECT ci.estado, COUNT(*) TOTAL_ESTADO
FROM cidades ci, vendas vd, clientes cl 
WHERE cl.idcliente=vd.idcliente
AND cl.idcidade=ci.idcidade
GROUP BY ci.estado;

-- 29. Apresentar todos os nomes de clientes, vendedores e proprietários de revendas iniciados com a letra A. --

SELECT 'Vendedor: '||vd.nomevendedor NOME 
FROM vendedores vd
WHERE vd.nomeVendedor LIKE 'A%'
UNION
SELECT 'Cliente: '||cl.nomecliente NOME 
FROM clientes cl
WHERE cl.nomecliente LIKE 'A%'
UNION
SELECT 'Proprietario: '||rv.nomeproprietario NOME 
FROM revendas rv
WHERE rv.nomeproprietario LIKE 'A%';

-- 30. Média de vendas mensais de veículos. --

SELECT TO_CHAR(vd.datavenda, 'MM') MES, ROUND(AVG(ve.valor)) MEDIA
FROM veiculos ve, vendas vd
WHERE ve.idveiculo=vd.idveiculo
GROUP BY TO_CHAR(vd.datavenda, 'MM')
ORDER BY MES;

-- 31. Criar uma view para apresentar veículos classificados por fabricante e modelo. --

CREATE OR REPLACE VIEW VisaoVeiculoFabricante
AS
SELECT fa.nomefabricante, ve.modelo
FROM fabricantes fa, veiculos ve
WHERE fa.idfabricante=ve.idfabricante
ORDER BY fa.nomefabricante, ve.modelo;

-- 32. Apresentar cidades com mais de uma revenda. --

SELECT ci.nomecidade, COUNT(*) TOTAL_REVENDAS
FROM cidades ci, revendas rv
WHERE ci.idcidade=rv.idcidade
GROUP BY ci.nomecidade
HAVING COUNT(*) > 1;

-- 33. Lista de cores não utilizadas --

SELECT cr.descricaoCor
FROM cores cr
WHERE cr.idcor 
NOT IN (
	SELECT vc.idcor FROM veiculos vc);

-- 34. Lista de estados com apenas 1 revenda. --

SELECT cid.estado, COUNT(*) TOTAL
FROM cidades cid, revendas rev
WHERE cid.idCidade=rev.idcidade
GROUP BY cid.estado
HAVING COUNT(*) = 1;

-- 35. Apresente a forma de pagamento mais utilizada.

SELECT f.descricaoformapgto, COUNT(*) Total
FROM vendas v, formaspagamento f
WHERE v.idformaspgto=f.idformaspgto
GROUP BY f.descricaoformapgto
HAVING COUNT(*) IN (
	SELECT MAX(r.totalfp)
	FROM (SELECT fp.idformaspgto, COUNT(*) TotalFp
			FROM vendas ve, formaspagamento fp
			WHERE ve.idformaspgto = fp.idformaspgto
			GROUP BY fp.idformaspgto
			ORDER BY totalfp DESC) R);

-- 36. Vendedor que realizou a primeira venda

SELECT vdd.nomevendedor
FROM vendedores vdd, vendas vd
WHERE vdd.idvendedor=vd.idvendedor
AND vd.datavenda 
= (SELECT MIN(v.datavenda)
	FROM vendas v);

-- 37. Nome do vendedor que realizou a maior quantidade de vendas. --

SELECT vdd.nomevendedor, COUNT(*) TOTAL_VENDAS
FROM vendedores vdd, vendas vd
WHERE vdd.idvendedor=vd.idvendedor
GROUP BY vdd.nomevendedor
HAVING COUNT(*) IN (SELECT MAX(R.TOTAL)
					FROM (SELECT ve.idvendedor, COUNT(*) TOTAL
						  FROM vendas vd, vendedores ve
						  WHERE vd.idvendedor=ve.idvendedor
						  GROUP BY ve.idvendedor
						  ORDER BY TOTAL DESC) R);

-- 38. Apresente uma relação com os 3 modelos mais vendidos. --


SELECT vc.modelo, COUNT(*) TOTAL
FROM veiculos vc, vendas vd
WHERE vc.idveiculo=vd.idveiculo
GROUP BY vc.modelo 
HAVING COUNT(*) IN (
			SELECT R.TOTAL_VENDAS FROM (
				SELECT vc2.modelo, COUNT(*) TOTAL_VENDAS
				FROM veiculos vc2, vendas vd2
				WHERE vc2.idveiculo = vd2.idveiculo
				GROUP BY vc2.modelo
				ORDER BY TOTAL_VENDAS DESC) R 
			WHERE ROWNUM <= 3) 
ORDER BY total DESC;

-- 39. Relação da revenda que realizaram a maior quantidade de vendas. --

SELECT rv.nomerevenda, COUNT(*) TOTAL
FROM revendas rv,
	 vendas vd
WHERE rv.idrevenda=vd.idrevenda
GROUP BY rv.nomerevenda
HAVING COUNT(*) IN 
	(SELECT MAX(R.TOTAL_REVENDA)
	 FROM (
		SELECT r.idrevenda, COUNT(*) TOTAL_REVENDA
		FROM revendas r,
			 vendas v
		WHERE r.idrevenda=v.idrevenda
		GROUP BY r.idrevenda
		ORDER BY TOTAL_REVENDA DESC) R)
ORDER BY TOTAL;













