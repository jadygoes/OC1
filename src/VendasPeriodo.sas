/*
 *
 * Programa: VendasPeriodo.sas
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
		   b.CodGrupo,
		   b.CodDepto, 
		   a.CodCor,
		   a.CodTamanho,
		   a.CodEstado,
		   a.DataVenda,
		   a.QtdeVendida, 
		   b.PrecoUnitario,
		   a.QtdeVendida*b.PrecoUnitario as TotalVenda
	from sicoob.vendas a
	inner join sicoob.produtos b 
		on a.CodProduto = b.CodProduto;
quit;

%include "&caminho/src/clear_libs.sas";

