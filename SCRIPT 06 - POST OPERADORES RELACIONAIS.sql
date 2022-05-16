/*
Operador/Descri��o
< 	Menor
> 	Maior
<=	Menor ou igual
>=	Maior ou igual
=	Igual
<> 	Diferente
*/
/*EX.1:*/  
SELECT * FROM PRODUTO WHERE PRECO < 5.50; 
/*Todos os produtos que tem pre�o menor que R$5,50*/

/*EX.2:*/ 
SELECT * FROM PRODUTO WHERE QTD > 100; 
/*Todos os produtos que tem quantidade maior que 100 unidade.*/

/*EX.3:*/ 
SELECT * FROM PRODUTO WHERE DATA_FABRICACAO <= �2013-06-20�;
/*
Retorna todos os produtos que tem data de fabrica��o menor 
ou igual a data de 20/06/2013
*/

/*EX.4:*/ 
SELECT * FROM PRODUTO WHERE DATA_VENCIMENTO >= �2013-12-15�;
/*
Retorna todos os produtos que tem data de vencimento 
maior ou igual a data de 15/15/2013
*/

/*EX.5:*/ 
SELECT * FROM PRODUTO WHERE DATA_VENCIMENTO  = �2013-12-15�; 
/*
Retorna todos os produtos que tem data de vencimento 
igual a data de 15/15/2013
*/

/*EX.5.1:*/ 
SELECT * FROM PRODUTO WHERE nome  = �biscoito�; 
/*
Retorna todos os produtos que tem o nome igual a biscoito.
Tamb�m podemos usar textos quando usamos o operador = (igual).
*/

/*EX.6:*/ 
SELECT * FROM PRODUTO WHERE CATEGORIA <> �BEBIDAS�; 
/*
Retorna todos os produtos que tem categoria diferente de bebidas.
*/

/*BETWEEN � Utilizado para especificar um intervalo de valores.*/

     /* EX.1:*/  
	 SELECT * FROM PRODUTO WHERE DATA_VALIDADE BETWEEN (�2013-05-12',�2013-08-15�); 
	 /*
	 Todos os produtos que est�o com data de validade entre as datas 
	 de 12/05/2013 e 15/08/2013. � Aqui especificamos intervalos entre datas.
	 */

     /* EX.2:*/ 
	 SELECT * FROM PRODUTO WHERE QTD BETWEEN (20,50); 
	 /*
	 Todos os produtos que tem quantidade entre 20 e 50. 
	 Aqui usamos intervalos entre n�meros inteiros.
	 */

/*
LIKE � Utilizado na compara��o de um modelo e para especificar registros de um banco de dados. 
�Like� + extens�o % significa buscar todos resultados com o mesmo in�cio da extens�o.
*/
        /*EX.1:*/  
		SELECT * FROM PRODUTO WHERE FABRICANTE LIKE �NESTLE�; 
		/*
		Todos os produtos que tem fabricante com o nome nestle. 
		Aqui ele nos retornar� uma consulta que tem todos os produtos 
		com nestle. N�o usamos a %(porcentagem) ainda.
		*/

   /* EX.2:*/ 
   SELECT * FROM PRODUTO WHERE NOME LIKE �Bi%�; 
   /*
   Aqui usamos a %(porcentagem) ele serve como um coringa. 
   Ele vai Selecionar todos produtos que tem as 2 primeiras letras bi, 
   ou seja, pode nos retornar Biscoito, Bisteca, Bin�culos, Bife, Bicarbonato 
   entre outros. Podemos usa-l� antes antes ou 
   depois da palavra (�%car%� ou �%fa�).
   */

/*
IN � Utilizado para verificar se o valor procurado est� dentro de uma lista.
*/
 /* EX.1:*/
 SELECT * FROM PRODUTO WHERE CATEGORIA IN (�INFORMATICA�,�TELEFONIA�,�BEBIDAS�,�FRIOS�); 
 /*
 Tr�s todos os produtos  que est�o entre a lista de categorias informadas no IN. 
 Pode nos trazer v�rios produtos: Notebook, Cerveja, Bife, Peixes, Smartphone, tablet , 
 ou seja, dentro das lista de categorias que informamos.
 */