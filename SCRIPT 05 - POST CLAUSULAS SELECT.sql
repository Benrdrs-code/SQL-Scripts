/*
WHERE � Utilizada para especificar quais as condi��es para realizarmos a consulta que queremos. 
As condi��es melhoram a performance por permitir que o engine do banco de dados utilize os �ndices 
para organizar a forma de procura, n�o fazendo m�todo bolha e sim de ponteiro.
*/
/*EX:*/ 
SELECT * FROM PRODUTO WHERE CODIGO= 10;
/*
Estamos especificando que queremos selecionar o produto 
que possui o c�digo (identificador �nico) igual a 10;
*/

/*
GROUP BY � Utilizada para separar os registros selecionados em grupos espec�ficos. 
Nos casos em que colunas n�o agregadas ser�o utilizadas para criarem grupos de somas, 
utilizamos esta instru��o.
*/
/*EX:*/ 
SELECT NOME, CODIGO, AVG(PRECO) FROM PRODUTO WHERE PRECO > 10 GROUP BY NOME;
/*Estamos selecionando o c�digo, nome e a m�dia de pre�os. No filtro WHERE 
dizemos que queremos os pre�os com media maior que 10 e agrupamos todos os 
registros pelo nome;
*/

/*
HAVING � Utilizada para fazer as condi��es quando uma consulta � agrupada 
(GROUP BY).  O HAVING cria a condi��o quando usamos fun��es de agrega��o.
*/
/*EX:*/ 
SELECT NOME, CODIGO, SUM(PRECO), QTD FROM  GROUP BY NOME HAVING SUM(PRECO) >=  500;
/*
Estamos selecionando o c�digo, nome e somando os pre�os dos produtos. Agrupamos 
essa consulta por nome, no HAVING botamos a condi��o da fun��o de agrega��o, onde a 
soma dos pre�os dos produtos selecionados tem que ser maior ou igual a 500.
*/

/*
ORDER BY � Utilizada para definir a ordem que queremos os dados. Por padr�o o 
ORDER BY � ASC (ascendente � do menor para o maior) e tamb�m temos o 
DESC (descendente � do maior para o menor), podemos ordenar por texto, 
identificador, por data e etc�.
*/
/*EX:*/
SELECT NOME, PRECO FROM PRODUTO ORDER BY NOME;
/*
Estamos selecionando o nome e o pre�o do produto e os 
ordenamos em ASC (ascendente) menor para o maior.
*/
SELECT NOME, PRECO FROM PRODUTO ORDER BY NOME DESC;
/*
E agora em DESC (descendente) do maior para o menor.
*/

/*
DISTINCT � Utilizada para n�o selecionarmos dados duplicados (ou repetidos) em uma consulta.
*/
/*EX:*/ 
SELECT DISTINCT NOME FROM PRODUTO WHERE NOME = �MARIA�;
/*
Nesta consulta estamos selecionando o nome de todas as pessoas que tem o nome MARIA, 
ou seja, se fizemos a consulta sem o DISTINCT ele pode nos retornar varias MARIAS, 
com o DISTINCT ele eliminara os dados duplicados  e n�s retornara uma MARIA 
independente de haver outras MARIAS na base. Tudo depende do filtro que voc� 
estar� criando.
*/