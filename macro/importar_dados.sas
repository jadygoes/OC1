/*
 *
 * Programa: importar_dados
 * Autor: Jady
 * Data: 26/06/2025
 * Múdulo: Macros
 * Versão: 1.00
 *
 */

%macro importar_dados(tabela, planilha); 
	proc import datafile="&caminho/output/DM1.xlsx" dbms=xlsx
		out=sicoob.&tabela replace; 
		sheet="&planilha";
	run;
%mend importar_dados;