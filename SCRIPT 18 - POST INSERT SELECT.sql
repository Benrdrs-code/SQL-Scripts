/*Vamos usar o comando INSERT SELECT. Informamos a tabela em que vamos inserir os dados no nosso caso 
CopiaFuncionario passamos os campos que a tabela contem, e ao inv�s do comando VALUES passamos uma instru��o 
select com um filtro de sua escolha, no exemplo abaixo estou inserindo todos os funcion�rios que tem status = 0. 

Ex:
*/

INSERT INTO CopiaFuncionario(Nome, CPF, Salario, Email)
SELECT Nome, CPF, Salario, Email FROM Funcionario
WHERE Status = 0

