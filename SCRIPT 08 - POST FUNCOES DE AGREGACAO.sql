/*AVG – Utilizado para calcular a média de valores de um campo determinado.*/
/*EX:*/
 SELECT AVG (PRECO) AS MEDIA_PRECO FROM PRODUTO WHERE CODIGO in (1,2,3);
/*Estamos especificando que queremos saber a média de preço dos produtos que tem 
código igual a 1,2,3; Ou seja o AVG somara todos os valores e dividira por 3 para 
obter a média de preço.*/

/*COUNT – Utilizado para devolver o número de registros de uma seleção (Consulta).*/
/*EX:*/
SELECT COUNT (ID) FROM PRODUTO;
/*Estamos selecionando total de produtos pelo seu identificador. Se tivermos 100 
produtos inseridos eles no retornara 100 produtos; Poderíamos também buscar pelo 
nome ou por data_fab.*/

/*SUM – Utilizado para a soma de todos valores de um campo determinado.*/
/*EX:*/ 
SELECT SUM(PRECO) AS SOMA_PRODUTO FROM PRODUTO WHERE ID IN (1,2);
/*Estamos fazendo a soma dos preços dos produtos que tem id 1 e 2. 
Ele pegará o valor do preço desses 2 produtos e somará, o nosso resultado seria R$ 530,00*/

/*MAX – Utilizada para devolver o valor mais alto de um campo determinado.*/
/*EX:*/
 SELECT MAX(PRECO) FROM PRODUTO;
/*Estamos o produto pela maior data de fabricação, ele nos 
retornará o produto Home Theater LG que tem a data de fabricação do mês 6.*/

/*MIN – Utilizada para devolver o valor mais baixo de um campo determinado.*/
/*EX:*/ 
SELECT MIN(DATA_FAB)AS MENOR_DATA FROM PRODUTO;
/*Estamos o produto pela menor data de fabricação, ele nos retornará o 
produto Geladeira Consul 437 L que tem a data de fabricação do mês 1.*/