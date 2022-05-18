/*
Aqui vamos usar a tabela funcion�rio que se encontra no Schema Pessoa ok!
Vamos fazer uma consulta retornando O id, nome, data de admiss�o do funcion�rio
passando par�metros dentro de vari�veis.

1 � Primeiro usamos a clausula DECLARE � ela serve para declararmos a vari�vel que ser� usada. Ela � composta do nome da vari�vel @NOME e o tipo que ela armazenar� (Data, inteiro, texto e etc�)

**Uma @(arroba) significa que a vari�vel � local, duas @@ significa que ela � global.

2 � A clausula SET serve para definirmos um valor para a variavel;
Ela � composta da vari�vel declarada no DECLARE e o valor que ela ir� receber.

Ex�: Trazer todos o funcion�rios que tiveram admiss�o antes do valor passado na vari�vel @DATAADMISSAO.
*/

DECLARE @DATAADMISSAO DATE
SET @DATAADMISSAO = �2013-02-08�

SELECT F.FUNCID, F.NOME, F.DATAADMISSAO FROM PESSOA.FUNCIONARIO F
WHERE F.DATAADMISSAO < @DATAADMISSAO

/*
Ex�: Aqui vamos passar o valor de uma consulta SQL a uma vari�vel e chama-l� dentro da consulta. Vamos trazer o funcion�rio que possui o maior salario.
*/

DECLARE @MSALARIO NUMERIC
SET @MSALARIO = (SELECT MAX(SALARIO) FROM PESSOA.FUNCIONARIO)

SELECT F.FUNCID, F.NOME, F.SALARIO FROM PESSOA.FUNCIONARIO F
WHERE F.SALARIO = @MSALARIO

/*
Ex�: Aqui vamos passar o valor de duas consultas SQL em vari�veis e chama-l� dentro da consulta. Vamos trazer o funcion�rio que tem salario entre os valores passados.
*/

DECLARE @MSALARIO NUMERIC
SET @MSALARIO = (SELECT MAX(Salario) FROM PESSOA.FUNCIONARIO)

DECLARE @MINSALARIO NUMERIC
SET @MINSALARIO = (SELECT MIN(Salario) FROM PESSOA.FUNCIONARIO)

SELECT F.FUNCID, F.NOME, F.SALARIO FROM PESSOA.FUNCIONARIO F
WHERE F.SALARIO BETWEEN @MINSALARIO AND @MSALARIO