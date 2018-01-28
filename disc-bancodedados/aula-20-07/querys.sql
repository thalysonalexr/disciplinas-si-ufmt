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

SELECT cl.nomeCliente, COUNT(*) TOTAL_FRM_PGTO
FROM clientes cl, vendas vd, formasPagamento fp
WHERE cl.idcliente=vd.idcliente 
AND vd.idformaspgto=fp.idformaspgto
GROUP BY cl.nomeCliente;

-- 5 Total de cidades por clientes.--

SELECT cl.nomeCliente, COUNT(*) TOTAL_CIDADES
FROM clientes cl, cidades ci
WHERE cl.idcidade=ci.idcidade
GROUP BY cl.nomeCliente;

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

SELECT TO_CHAR(vda.datavenda, 'MM') MES, vcl.modelo, vcl.ano, COUNT(*) QTD_VEIC_VENDIDOS
FROM vendas vda, veiculos vcl
WHERE vda.idveiculo=vcl.idveiculo
GROUP BY TO_CHAR(vda.datavenda, 'MM'), vcl.modelo, vcl.ano
ORDER BY TO_CHAR(vda.datavenda, 'MM'), vcl.modelo;

-- 10 Nomes dos vendedores que realizaram vendas para clientes de MT. --

SELECT vds.nomevendedor
FROM vendedores vds, vendas vda, clientes cl, cidades cid
WHERE vds.idvendedor=vda.idvendedor 
AND vda.idcliente=cl.idcliente 
AND cl.idcidade=cid.idcidade
AND cid.estado = 'MT'
GROUP BY vds.nomeVendedor;

-- 11 Total de produtos vendidos por cidade. --

SELECT cid.nomecidade, cid.estado, COUNT(*) QTD_VEICULOS
FROM veiculos vcl, vendas vda, clientes cl, cidades cid
WHERE vcl.idveiculo=vda.idveiculo
AND vda.idcliente=cl.idcliente
AND cl.idcidade=cid.idcidade
GROUP BY cid.nomecidade, cid.estado
ORDER BY cid.nomecidade;

-- 12 Apresentar os clientes que realizaram as maiores quantidade de compras. --

SELECT cl.nomecliente, COUNT(*) QTD_COMPRAS
FROM clientes cl, vendas vda
WHERE cl.idcliente=vda.idcliente
GROUP BY cl.nomecliente
ORDER BY QTD_COMPRAS DESC;

-- 13 Apresentar nomes de clientes e vendedores na mesma sentença. --

SELECT cl.nomecliente, vds.nomevendedor
FROM clientes cl, vendas vda, vendedores vds
WHERE cl.idcliente=vda.idcliente
AND vda.idvendedor=vds.idvendedor
GROUP BY cl.nomecliente, vds.nomevendedor
ORDER BY cl.nomecliente, vds.nomevendedor;

-- 14 Total de vendas por cidade da revenda. --

SELECT cid.nomecidade, COUNT(*) TOTAL_VENDAS
FROM vendas vda, revendas rev, cidades cid
WHERE vda.idrevenda=rev.idrevenda
AND rev.idcidade=cid.idcidade
GROUP BY cid.nomecidade
ORDER BY cid.nomecidade;

-- 15 Apresentar todos os clientes e revendas Mato Grosso na mesma sentença. --

SELECT cl.nomecliente, rev.nomerevenda
FROM clientes cl, revendas rev, vendas vda, cidades cid
WHERE cl.idcliente=vda.idcliente
AND vda.idrevenda=rev.idrevenda
AND rev.idcidade=cid.idcidade
AND cid.estado = 'MT';

-- 16 Total Vendido por veiculo.--

SELECT vcl.modelo, vcl.ano, SUM(vcl.valor) VALOR_TOTAL
FROM veiculos vcl, vendas vda
WHERE vcl.idveiculo=vda.idveiculo
GROUP BY vcl.modelo, vcl.ano
ORDER BY VALOR_TOTAL DESC;

-- 17 Total de clientes por estado (sigla).--

SELECT cid.estado UF, COUNT(*) TOTAL_CLIENTES
FROM clientes cl, cidades cid, cidades est
WHERE cl.idcidade=cid.idcidade
AND cid.estado=est.estado
GROUP BY cid.estado;

-- 18 Descrição dos veículos não comercializados.--
























