/*
Ex1: Primeiro vamos criar uma copia vazia da tabela Funcionário com os campos FuncID, nome, 
CPF, Salario e Email. No filtro passamos uma valor qualquer para o SELECT INTO crie a copia vazia da tabela. 
*/
SELECT FuncID, Nome, CPF, Salario, Email INTO CopiaFuncionario
FROM Funcionario
where 1 = 2;

/*
Ex2: Agora vamos criar uma segunda copia da tabela com os mesmos campos do exemplo 1 
mas com os dados que estão na tabela original. No filtro passamos os valores de uma consulta normal. 
Vamos preencher com todos as pessoas que estão com status = 1. 
*/

SELECT FuncID, Nome, CPF, Salario, Email INTO CopiaFuncionario2
FROM Funcionario
where Status = 1