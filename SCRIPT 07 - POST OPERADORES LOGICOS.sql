/*
AND – E lógico. Avalia as condições e devolve um valor 
verdadeiro caso ambos sejam corretos .
*/
/*EX.1:*/  
SELECT * FROM PRODUTO WHERE CODIGO = 3 AND CODIGO = 5; 
/*Seleciona os produtos que tem código 3 e 5.*/

/*EX.2:*/
 SELECT * FROM PRODUTO WHERE UNIDADE = ‘l’ AND CATEGORIA = ‘bebida’; 
 /*
 Seleciona os produtos que tem unidade L e categoria Bebida. 
 Ambos os valores devem ser verdadeiros para que o operador 
 AND traga o resultado.
 */

/*
OR – OU lógico. Avalia as condições e devolve 
um valor verdadeiro se algum for correto.
*/
/*EX.1:*/  
SELECT * FROM PRODUTO WHERE NOME = ‘REDBULL’ OR QTD = 12; 
/*
Seleciona os produtos que tem nome RedBull ou tem quantidade 
igual a 12. Um dos valores se for verdadeiro é exibido na consulta.
*/

/*
NOT – Negação lógica. Devolve o valor contrario de expressão.
*/
/*EX.1:*/  
SELECT * FROM PRODUTO WHERE CATEGORIA NOT  IN (‘ELETRONICO’,’INFORMATICA’); 
/*
Trás todos os produtos que estão entre a lista de categorias informadas no IN.
 Esse select nos trás todos os produtos não tem categoria ELETRONICO E INFORMATICA.
 */