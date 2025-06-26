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

%importar_dados(vendas, vendas);
%importar_dados(produtos, produtos);
%importar_dados(deptos, deptos);
%importar_dados(grupos, grupos);
%importar_dados(cores, cores);
%importar_dados(tamanhos, tamanhos);
%importar_dados(estados, estados);
%importar_dados(regioes, regiões);

%include "&caminho/src/clear_libs.sas";