/*
 *
 * Programa:rel_carros.sas
 * Autor: Jady
 * Data: 24/06/2025
 * Múdulo: Relatórios 
 * Versão: 1.00
 *
 */

%include "/opt/sas/Workshop/Git/OC1/macro/macrovars.sas";
%include "&caminho/src/libraries.sas";

proc print data=sicoob.carros;
	where origin='USA';
run;

proc print data=sicoobsp.carros123;
	where origin='Europe';
run;