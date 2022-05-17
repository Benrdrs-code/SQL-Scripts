/*SUBSTRING: Trás extrai uma subsequencia de uma sequencias de caracteres.*/
Ex: Select SUBSTRING(‘abcde’,1,3);
/* Nesta função ele pega o texto no primeiro parâmetro, no segundo ele pega a posição 
inicial do texto e no terceiro a posição final. Se executarmos essa consulta ele nos retornará  
a saída abc.*/
 

/*LEFT e RIGHT: Retorna um número de caracteres solicitados da esquerda ou da direita da sequencia de entrada.*/

/*Ex1:*/ 
Select LEFT (‘abcde’, 2); 
/*O primeiro parâmetro é o texto, o segundo é o número de palavras a serem extraídas do texto. 
Nossa saída do left será ab.  Aqui ele começa a extração das palavras pela esquerda.

/*Ex1:*/
 Select RIGHT(‘abcde’, 2); 
 /*O primeiro parâmetro é o texto, o segundo é o número de palavras a serem extraídas do texto.  
 Nossa saída do right será de. Aqui ele começa a extração das palavras pela direita.*/
 

/*LEN: retorna o número de caracteres da sequencia de entrada.*/
/*Ex:*/
 Select LEN (‘abcde’); 
 /*O único parâmetro é o texto nessa função. Nossa saída é o número 5. */
 

/*CHARINDEX: Retorna a posição da primeira ocorrência de uma subsequencia em uma sequencia de caracteres.*/
/*Ex:*/
 Select charindex(‘ ‘,’Consulta BD’); 
 /*No primeiro parâmetro informamos o que queremos encontrar e no a palavra ou texto q ele irá fazer a busca. 
 Nesta consulta informamos que queremos saber em que posição esta o espaço em branco na palavra . A saída será 9.*/
 

/*PATINDEX: Retorna a posição da primeira ocorrência de um  padrão em uma sequencia. */
/*Ex:*/ 
Select patindex(‘%BD%’,’Consulta BD, onde estudamos sobre od BDs e a linguagem sql.’); 
/*No primeiro parâmetro informamos que padrão de caracteres queremos encontrar e no segundo o texto.  
Nesta consulta informamos que queremos saber em que posição está a primeira ocorrência do o padrão de 
caracteres BD. A saída será a posição 10.*/
 

/*REPLACE: Substitui todas as ocorrências de uma subsequencia com outra.*/
/*Ex:*/ 
Select replace(‘Nome:Luiz Antonio’,’:’,’—>’); 
/*Nosso primeiro parâmetro é o texto, o segundo é o que a palavra ou caractere que será alterado 
na palavra, e o terceiro é o que será colocado no lugar do caractere ou palavra informado no segundo 
parâmetro. Nesse exemplo trocamos os 2 pontos por uma seta. Nossa saída será Nome—>Luiz Antonio.*/
 

/*REPLICATE: Replica uma sequencia de caracteres por um número de vezes solicitado.*/
/*Ex:*/ 
Select replicate(‘Consulta BD,’, 2); 
/*No primeiro parâmetro o texto, no segundo o número de vezes que ele será repetido. 
Nossa saída será Consulta BD,Consulta BD,*/
 

/*STUFF: Permite remover uma subsequencia de uma sequencia e insere uma nova subsequencia.*/
Select stuff(‘Lu,’, 2,2, ‘uiz’); 
/*Nosso primeiro parâmetro é o texto, o segundo é a posição que será excluído, 
o terceiro é o numero de caracteres apos a posição do segundo parâmetro, e o quarto é o 
texto que substituirá o texto excluído. Nesse exemplo colocamos a palavra Lu, informamos 
que queremos excluir a partir da posição 2 e que queremos excluir 2 caracteres após o inicio da posição 2, 
apos apagarmos o u, ele substituirá pelo uiz, trazendo na saída a palavra Luiz. Se tivéssemos colocado no 3º 
parâmetro o número 1, ele excluiria apenas o u e a virgula continuaria na substituição da palavra, a saída ficaria Luiz,.*/
 

/*UPPER e LOWER: Retorna a sequencia de saída com todos os caracteres maiúsculos ou minúsculos.*/
/*Ex1:*/ 
Select UPPER(‘Consulta BD’); 
/*Nessa consulta ele recebe como parâmetro o texto e na sua saída toda a palavra 
ficará maiúscula. A saída será CONSULTA BD.*/

/*Ex2:*/
 Select LOWER(‘Consulta BD’); 
 /*Nessa consulta ele recebe como parâmetro o texto e na sua saída toda a 
 palavra ficará minúscula . A saída será consulta bd.*/
 

/*RTRIM e LTRIM: Retornam a sequencia de entrada com os espaços à esquerda ou a direita.*/
/*Ex1:*/ 
Select RTRIM(‘   Consulta BD   ‘); 
/*Ele apenas recebe como parâmetro o texto. No exemplo foi adicionado 3 espaços em branco 
a esquerda e direita, com o rtrim ele removerá os espaços a direita, 
a nossa saída será ‘   Consulta BD’.*/

/*Ex2:*/ 
Select LTRIM(‘   Consulta BD   ‘); 
/*Ele apenas recebe como parâmetro o texto. No exemplo foi adicionado 3 espaços em branco a 
esquerda e direita, com o ltrim ele removerá os espaços a esqueda, 
a nossa saída será ‘Consulta BD   ‘.*/