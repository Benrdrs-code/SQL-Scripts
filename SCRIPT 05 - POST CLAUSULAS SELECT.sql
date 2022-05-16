/*
WHERE – Utilizada para especificar quais as condições para realizarmos a consulta que queremos. 
As condições melhoram a performance por permitir que o engine do banco de dados utilize os índices 
para organizar a forma de procura, não fazendo método bolha e sim de ponteiro.
*/
/*EX:*/ 
SELECT * FROM PRODUTO WHERE CODIGO= 10;
/*
Estamos especificando que queremos selecionar o produto 
que possui o código (identificador único) igual a 10;
*/

/*
GROUP BY – Utilizada para separar os registros selecionados em grupos específicos. 
Nos casos em que colunas não agregadas serão utilizadas para criarem grupos de somas, 
utilizamos esta instrução.
*/
/*EX:*/ 
SELECT NOME, CODIGO, AVG(PRECO) FROM PRODUTO WHERE PRECO > 10 GROUP BY NOME;
/*Estamos selecionando o código, nome e a média de preços. No filtro WHERE 
dizemos que queremos os preços com media maior que 10 e agrupamos todos os 
registros pelo nome;
*/

/*
HAVING – Utilizada para fazer as condições quando uma consulta é agrupada 
(GROUP BY).  O HAVING cria a condição quando usamos funções de agregação.
*/
/*EX:*/ 
SELECT NOME, CODIGO, SUM(PRECO), QTD FROM  GROUP BY NOME HAVING SUM(PRECO) >=  500;
/*
Estamos selecionando o código, nome e somando os preços dos produtos. Agrupamos 
essa consulta por nome, no HAVING botamos a condição da função de agregação, onde a 
soma dos preços dos produtos selecionados tem que ser maior ou igual a 500.
*/

/*
ORDER BY – Utilizada para definir a ordem que queremos os dados. Por padrão o 
ORDER BY é ASC (ascendente – do menor para o maior) e também temos o 
DESC (descendente – do maior para o menor), podemos ordenar por texto, 
identificador, por data e etc….
*/
/*EX:*/
SELECT NOME, PRECO FROM PRODUTO ORDER BY NOME;
/*
Estamos selecionando o nome e o preço do produto e os 
ordenamos em ASC (ascendente) menor para o maior.
*/
SELECT NOME, PRECO FROM PRODUTO ORDER BY NOME DESC;
/*
E agora em DESC (descendente) do maior para o menor.
*/

/*
DISTINCT – Utilizada para não selecionarmos dados duplicados (ou repetidos) em uma consulta.
*/
/*EX:*/ 
SELECT DISTINCT NOME FROM PRODUTO WHERE NOME = ‘MARIA’;
/*
Nesta consulta estamos selecionando o nome de todas as pessoas que tem o nome MARIA, 
ou seja, se fizemos a consulta sem o DISTINCT ele pode nos retornar varias MARIAS, 
com o DISTINCT ele eliminara os dados duplicados  e nós retornara uma MARIA 
independente de haver outras MARIAS na base. Tudo depende do filtro que você 
estará criando.
*/