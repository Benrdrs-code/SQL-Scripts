/*Vamos usar o comando INSERT SELECT. Informamos a tabela em que vamos inserir os dados no nosso caso 
CopiaFuncionario passamos os campos que a tabela contem, e ao invés do comando VALUES passamos uma instrução 
select com um filtro de sua escolha, no exemplo abaixo estou inserindo todos os funcionários que tem status = 0. 

Ex:
*/

INSERT INTO CopiaFuncionario(Nome, CPF, Salario, Email)
SELECT Nome, CPF, Salario, Email FROM Funcionario
WHERE Status = 0

