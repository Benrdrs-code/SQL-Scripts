/*
Aqui vamos usar a tabela funcionário que se encontra no Schema Pessoa ok!
Vamos fazer uma consulta retornando O id, nome, data de admissão do funcionário
passando parâmetros dentro de variáveis.

1 – Primeiro usamos a clausula DECLARE – ela serve para declararmos a variável que será usada. Ela é composta do nome da variável @NOME e o tipo que ela armazenará (Data, inteiro, texto e etc…)

**Uma @(arroba) significa que a variável é local, duas @@ significa que ela é global.

2 – A clausula SET serve para definirmos um valor para a variavel;
Ela é composta da variável declarada no DECLARE e o valor que ela irá receber.

Ex¹: Trazer todos o funcionários que tiveram admissão antes do valor passado na variável @DATAADMISSAO.
*/

DECLARE @DATAADMISSAO DATE
SET @DATAADMISSAO = ‘2013-02-08’

SELECT F.FUNCID, F.NOME, F.DATAADMISSAO FROM PESSOA.FUNCIONARIO F
WHERE F.DATAADMISSAO < @DATAADMISSAO

/*
Ex²: Aqui vamos passar o valor de uma consulta SQL a uma variável e chama-lá dentro da consulta. Vamos trazer o funcionário que possui o maior salario.
*/

DECLARE @MSALARIO NUMERIC
SET @MSALARIO = (SELECT MAX(SALARIO) FROM PESSOA.FUNCIONARIO)

SELECT F.FUNCID, F.NOME, F.SALARIO FROM PESSOA.FUNCIONARIO F
WHERE F.SALARIO = @MSALARIO

/*
Ex³: Aqui vamos passar o valor de duas consultas SQL em variáveis e chama-lá dentro da consulta. Vamos trazer o funcionário que tem salario entre os valores passados.
*/

DECLARE @MSALARIO NUMERIC
SET @MSALARIO = (SELECT MAX(Salario) FROM PESSOA.FUNCIONARIO)

DECLARE @MINSALARIO NUMERIC
SET @MINSALARIO = (SELECT MIN(Salario) FROM PESSOA.FUNCIONARIO)

SELECT F.FUNCID, F.NOME, F.SALARIO FROM PESSOA.FUNCIONARIO F
WHERE F.SALARIO BETWEEN @MINSALARIO AND @MSALARIO