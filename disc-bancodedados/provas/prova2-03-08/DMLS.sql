-- 1. Apresentar o nome do proprietário da revenda que realizou a primeira venda. --

SELECT r.nomeproprietario
FROM exercicios3.vendas v, exercicios3.revendas r
WHERE v.idrevenda=r.idrevenda
     AND v.datavenda=(
	 SELECT MIN(vd.datavenda)
     FROM	exercicios3.vendas vd, exercicios3.revendas rv
     WHERE vd.idrevenda=rv.idrevenda);
	 
-- 2. Apresentar o total de cores classificadas pela cidade das revendas. --
	 
SELECT ci.nomecidade, cr.descricaocor, COUNT(*) TOTAL
FROM exercicios3.cores cr, 
     exercicios3.veiculos vc,
	 exercicios3.vendas vd,
	 exercicios3.revendas rv, 
	 exercicios3.cidades ci
WHERE cr.idcor=vc.idcor
     AND vc.idveiculo=vd.idveiculo
     AND vd.idrevenda=rv.idrevenda
	 AND rv.idcidade=ci.idcidade
GROUP BY ci.nomecidade, cr.descricaocor
ORDER BY TOTAL DESC;

-- 3. Apresentar a cidade com maior quantidade de clientes. --

SELECT ci.nomecidade, COUNT(*) TOTAL_CLIENTES
FROM exercicios3.cidades ci, exercicios3.clientes cl
WHERE ci.idcidade=cl.idcidade
GROUP BY ci.nomecidade
HAVING COUNT(*) IN (SELECT MAX(R.TOTAL)
					FROM (SELECT ci.idcidade, COUNT(*) TOTAL
						  FROM cidades ci, clientes cl
						  WHERE ci.idcidade=cl.idcidade
						  GROUP BY ci.idcidade
						  ORDER BY TOTAL DESC) R);

-- 4. Criar uma visão para apresentar o total de veículos vendidos por formas de pagamentos. -- 

CREATE OR REPLACE VIEW VisaoFormasPGTOVeiculos
AS
SELECT fp.descricaoformapgto, COUNT(*) TOTAL_VEICULOS
FROM exercicios3.formasPagamento fp, 
	 exercicios3.vendas vd,
     exercicios3.veiculos vc
WHERE fp.idformaspgto=vd.idformaspgto
	 AND vd.idveiculo=vc.idveiculo
GROUP BY fp.descricaoformapgto
ORDER BY TOTAL_VEICULOS DESC;
	  

-- 5. Criar uma view para apresentar os clientes residentes a mesma cidade da revenda. --

CREATE OR REPLACE VIEW VisaoClientesCidades
AS
SELECT cl.nomecliente, ci.nomecidade
FROM exercicios3.clientes cl,
	 exercicios3.cidades ci,
	 exercicios3.revendas rv
WHERE cl.idcidade=ci.idcidade
	 AND ci.idcidade=rv.idcidade
ORDER BY cl.nomecliente;

-- 6. Lista de valores totais vendidos por estado (cliente).

SELECT ci.estado, SUM(ve.valor) VALOR_TOTAL
FROM exercicios3.vendas vd, 
	 exercicios3.clientes cl,
     exercicios3.cidades ci, 
	 exercicios3.veiculos ve
WHERE vd.idcliente=cl.idcliente
     AND cl.idcidade=ci.idcidade
     AND vd.idveiculo=ve.idveiculo
GROUP BY ci.estado
ORDER BY ci.estado;


-- 7. Total de fabricantes agrupados pelas formas de pagamento. --

SELECT fb.nomefabricante, fp.descricaoformapgto, COUNT(*) TOTAL_FAB
FROM exercicios3.fabricantes fb,
	 exercicios3.veiculos vc,
	 exercicios3.vendas vd,
	 exercicios3.formasPagamento fp
WHERE fb.idfabricante=vc.idfabricante
	 AND vc.idveiculo=vd.idveiculo
	 AND vd.idformaspgto=fp.idformaspgto
GROUP BY fb.nomefabricante, fp.descricaoformapgto
ORDER BY fb.nomefabricante;

-- 8. Criar uma view para apresentar todos os nomes de
-- clientes, modelos, cores, vendedores, nome de revendas e
-- formas de pagamento classificados por ano.

CREATE OR REPLACE VIEW VisaoGeral
AS
SELECT TO_CHAR(vd.datavenda, 'YYYY') ANO, 
	 cl.nomecliente, 
	 vc.modelo, 
	 cr.descricaocor, 
	 vr.nomevendedor, 
	 rv.nomerevenda,
	 fp.descricaoformapgto 
FROM exercicios3.clientes cl,
	 exercicios3.veiculos vc,
	 exercicios3.cores cr,
	 exercicios3.vendedores vr,
	 exercicios3.revendas rv,
	 exercicios3.formasPagamento fp,
	 exercicios3.vendas vd
WHERE cr.idcor=vc.idcor
	 AND vc.idveiculo=vd.idveiculo
	 AND vd.idvendedor=vr.idvendedor
	 AND vd.idrevenda=rv.idrevenda
	 AND vd.idcliente=cl.idcliente
	 AND vd.idformaspgto=fp.idformaspgto
ORDER BY ANO;

