/*
 *
 * Programa: rel_vendasproduto.sas
 * Autor: Jady
 * Data: 25/06/2025
 * Múdulo: Relatórios
 * Versão: 1.00
 *
 */

%include "/opt/sas/Workshop/Git/OC1/macro/macrovars.sas";
%include "&caminho/src/libraries.sas";

data work.vendasproduto;
	set sicoobsp.vendasproduto;
	TotalVenda = QtdeVendida*PrecoUnitario;
run;

proc print data=work.vendasproduto;
	var CodProduto Descricao DataVenda QtdeVendida PrecoUnitario TotalVenda;
run;

%include "&caminho/src/clear_libs.sas";