/*
 *
 * Programa: tran_VendasPeriodo.sas
 * Autor: Jady
 * Data: 25/06/2025
 * Múdulo: Preparação de dados
 * Versão: 1.00
 *
 */

%include "/opt/sas/Workshop/Git/OC1/macro/macrovars.sas";
%include "&caminho/src/libraries.sas";

proc sql;
	create table sicoobsp.VendasPeriodo as
	select a.CodProduto,
		   b.Descricao,
		   c.Descricao as Grupo,
		   d.Descricao as Depto, 
		   e.Descricao as Cor,
		   f.Descricao as Tamanho,
		   g.Sigla,
		   g.Nome as Estado,
		   h.Nome as Regiao,
		   a.DataVenda,
		   a.QtdeVendida, 
		   b.PrecoUnitario,
		   a.QtdeVendida*b.PrecoUnitario as TotalVenda,
		   g.PercImposto format = percent6.2,
		   a.QtdeVendida*b.PrecoUnitario*g.PercImposto as TotalImposto
	from sicoob.vendas a
	inner join sicoob.produtos b 
		on a.CodProduto = b.CodProduto
	inner join sicoob.grupos c 
		on b.CodGrupo = c.CodGrupo
	inner join sicoob.deptos d 
		on b.CodDepto = d.CodDepto
	inner join sicoob.cores e
		on a.CodCor = e.CodCor
	inner join sicoob.tamanhos f
		on a.CodTamanho = f.CodTamanho
	inner join sicoob.estados g
		on a.CodEstado = g.CodEstado
	inner join sicoob.regioes h
		on g.CodRegiao = h.CodRegiao;

quit;

%include "&caminho/src/clear_libs.sas";

