/*
AND � E l�gico. Avalia as condi��es e devolve um valor 
verdadeiro caso ambos sejam corretos .
*/
/*EX.1:*/  
SELECT * FROM PRODUTO WHERE CODIGO = 3 AND CODIGO = 5; 
/*Seleciona os produtos que tem c�digo 3 e 5.*/

/*EX.2:*/
 SELECT * FROM PRODUTO WHERE UNIDADE = �l� AND CATEGORIA = �bebida�; 
 /*
 Seleciona os produtos que tem unidade L e categoria Bebida. 
 Ambos os valores devem ser verdadeiros para que o operador 
 AND traga o resultado.
 */

/*
OR � OU l�gico. Avalia as condi��es e devolve 
um valor verdadeiro se algum for correto.
*/
/*EX.1:*/  
SELECT * FROM PRODUTO WHERE NOME = �REDBULL� OR QTD = 12; 
/*
Seleciona os produtos que tem nome RedBull ou tem quantidade 
igual a 12. Um dos valores se for verdadeiro � exibido na consulta.
*/

/*
NOT � Nega��o l�gica. Devolve o valor contrario de express�o.
*/
/*EX.1:*/  
SELECT * FROM PRODUTO WHERE CATEGORIA NOT  IN (�ELETRONICO�,�INFORMATICA�); 
/*
Tr�s todos os produtos que est�o entre a lista de categorias informadas no IN.
 Esse select nos tr�s todos os produtos n�o tem categoria ELETRONICO E INFORMATICA.
 */