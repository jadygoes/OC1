/*
 *
 * Programa:load_dm.sas
 * Autor: Jady
 * Data: 25/06/2025
 * Múdulo: Carga de dados 
 * Versão: 1.00
 *
 */

%include "/opt/sas/Workshop/Git/OC1/macro/macrovars.sas";
%include "&caminho/src/libraries.sas";

proc import datafile="&caminho/output/DM1.xlsx" dbms=xlsx
	out=sicoob.vendas replace; 
	sheet=vendas;
run;

proc import datafile="&caminho/output/DM1.xlsx" dbms=xlsx
	out=sicoob.produtos replace; 
	sheet=produtos;
run;

proc import datafile="&caminho/output/DM1.xlsx" dbms=xlsx
	out=sicoob.deptos replace; 
	sheet=deptos;
run;

proc import datafile="&caminho/output/DM1.xlsx" dbms=xlsx
	out=sicoob.grupos replace; 
	sheet=grupos;
run;

proc import datafile="&caminho/output/DM1.xlsx" dbms=xlsx
	out=sicoob.cores replace; 
	sheet=cores;
run;

proc import datafile="&caminho/output/DM1.xlsx" dbms=xlsx
	out=sicoob.tamanhos replace; 
	sheet=tamanhos;
run;

proc import datafile="&caminho/output/DM1.xlsx" dbms=xlsx
	out=sicoob.estados replace; 
	sheet=estados;
run;

proc import datafile="&caminho/output/DM1.xlsx" dbms=xlsx
	out=sicoob.regioes replace; 
	sheet='regiões';
run;