/*SUBSTRING: Tr�s extrai uma subsequencia de uma sequencias de caracteres.*/
Ex: Select SUBSTRING(�abcde�,1,3);
/* Nesta fun��o ele pega o texto no primeiro par�metro, no segundo ele pega a posi��o 
inicial do texto e no terceiro a posi��o final. Se executarmos essa consulta ele nos retornar�  
a sa�da abc.*/
 

/*LEFT e RIGHT: Retorna um n�mero de caracteres solicitados da esquerda ou da direita da sequencia de entrada.*/

/*Ex1:*/ 
Select LEFT (�abcde�, 2); 
/*O primeiro par�metro � o texto, o segundo � o n�mero de palavras a serem extra�das do texto. 
Nossa sa�da do left ser� ab.  Aqui ele come�a a extra��o das palavras pela esquerda.

/*Ex1:*/
 Select RIGHT(�abcde�, 2); 
 /*O primeiro par�metro � o texto, o segundo � o n�mero de palavras a serem extra�das do texto.  
 Nossa sa�da do right ser� de. Aqui ele come�a a extra��o das palavras pela direita.*/
 

/*LEN: retorna o n�mero de caracteres da sequencia de entrada.*/
/*Ex:*/
 Select LEN (�abcde�); 
 /*O �nico par�metro � o texto nessa fun��o. Nossa sa�da � o n�mero 5. */
 

/*CHARINDEX: Retorna a posi��o da primeira ocorr�ncia de uma subsequencia em uma sequencia de caracteres.*/
/*Ex:*/
 Select charindex(� �,�Consulta BD�); 
 /*No primeiro par�metro informamos o que queremos encontrar e no a palavra ou texto q ele ir� fazer a busca. 
 Nesta consulta informamos que queremos saber em que posi��o esta o espa�o em branco na palavra . A sa�da ser� 9.*/
 

/*PATINDEX: Retorna a posi��o da primeira ocorr�ncia de um  padr�o em uma sequencia. */
/*Ex:*/ 
Select patindex(�%BD%�,�Consulta BD, onde estudamos sobre od BDs e a linguagem sql.�); 
/*No primeiro par�metro informamos que padr�o de caracteres queremos encontrar e no segundo o texto.  
Nesta consulta informamos que queremos saber em que posi��o est� a primeira ocorr�ncia do o padr�o de 
caracteres BD. A sa�da ser� a posi��o 10.*/
 

/*REPLACE: Substitui todas as ocorr�ncias de uma subsequencia com outra.*/
/*Ex:*/ 
Select replace(�Nome:Luiz Antonio�,�:�,��>�); 
/*Nosso primeiro par�metro � o texto, o segundo � o que a palavra ou caractere que ser� alterado 
na palavra, e o terceiro � o que ser� colocado no lugar do caractere ou palavra informado no segundo 
par�metro. Nesse exemplo trocamos os 2 pontos por uma seta. Nossa sa�da ser� Nome�>Luiz Antonio.*/
 

/*REPLICATE: Replica uma sequencia de caracteres por um n�mero de vezes solicitado.*/
/*Ex:*/ 
Select replicate(�Consulta BD,�, 2); 
/*No primeiro par�metro o texto, no segundo o n�mero de vezes que ele ser� repetido. 
Nossa sa�da ser� Consulta BD,Consulta BD,*/
 

/*STUFF: Permite remover uma subsequencia de uma sequencia e insere uma nova subsequencia.*/
Select stuff(�Lu,�, 2,2, �uiz�); 
/*Nosso primeiro par�metro � o texto, o segundo � a posi��o que ser� exclu�do, 
o terceiro � o numero de caracteres apos a posi��o do segundo par�metro, e o quarto � o 
texto que substituir� o texto exclu�do. Nesse exemplo colocamos a palavra Lu, informamos 
que queremos excluir a partir da posi��o 2 e que queremos excluir 2 caracteres ap�s o inicio da posi��o 2, 
apos apagarmos o u, ele substituir� pelo uiz, trazendo na sa�da a palavra Luiz. Se tiv�ssemos colocado no 3� 
par�metro o n�mero 1, ele excluiria apenas o u e a virgula continuaria na substitui��o da palavra, a sa�da ficaria Luiz,.*/
 

/*UPPER e LOWER: Retorna a sequencia de sa�da com todos os caracteres mai�sculos ou min�sculos.*/
/*Ex1:*/ 
Select UPPER(�Consulta BD�); 
/*Nessa consulta ele recebe como par�metro o texto e na sua sa�da toda a palavra 
ficar� mai�scula. A sa�da ser� CONSULTA BD.*/

/*Ex2:*/
 Select LOWER(�Consulta BD�); 
 /*Nessa consulta ele recebe como par�metro o texto e na sua sa�da toda a 
 palavra ficar� min�scula . A sa�da ser� consulta bd.*/
 

/*RTRIM e LTRIM: Retornam a sequencia de entrada com os espa�os � esquerda ou a direita.*/
/*Ex1:*/ 
Select RTRIM(�   Consulta BD   �); 
/*Ele apenas recebe como par�metro o texto. No exemplo foi adicionado 3 espa�os em branco 
a esquerda e direita, com o rtrim ele remover� os espa�os a direita, 
a nossa sa�da ser� �   Consulta BD�.*/

/*Ex2:*/ 
Select LTRIM(�   Consulta BD   �); 
/*Ele apenas recebe como par�metro o texto. No exemplo foi adicionado 3 espa�os em branco a 
esquerda e direita, com o ltrim ele remover� os espa�os a esqueda, 
a nossa sa�da ser� �Consulta BD   �.*/