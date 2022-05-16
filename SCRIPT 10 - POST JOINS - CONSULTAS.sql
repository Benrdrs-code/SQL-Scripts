/*Script � Exemplo pratico JOINS*/
select * from funcionario
select * from cargo

/*INNER JOIN: Retorna linhas quando h� uma correspond�ncia em ambas as tabelas.*/
select f.nome_funcionario, f.salario_func, c.nome_cargo from funcionario (nolock)
f
inner join cargo (nolock) c
on f.fk_idCargo = c.id
/
*
LEFT JOIN ou LEFT OUTER JOIN: Retorna todas as linhas da tabela � esquerda,
mesmo se n�o houver nenhuma correspond�ncia na tabela � direita.
*/

/*todos os Funcionarios, mesmo os que n�o tem cargo*/
select f.nome_funcionario, f.salario_func, c.nome_cargo from funcionario (nolock)
f
left outer join cargo (nolock) c
on f.fk_idCargo = c.id

/*todos os cargos, mesmo os que n�o est�o relacionados a nenhum funcionario*/
select f.nome_funcionario, f.salario_func, c.nome_cargo from cargo (nolock) c
left outer join funcionario (nolock) f
on f.fk_idCargo = c.id

/*
RIGHT JOIN ou RIGHT OUTER JOIN: Retorna todas as linhas da tabela da direita,
mesmo que n�o haja correspond�ncias na tabela � esquerda.
*/

/*todos os cargos, mesmo os que n�o tem funcionarios relacionados*/
select f.nome_funcionario, f.salario_func, c.nome_cargo from funcionario (nolock)
f
right outer join cargo (nolock) c
on f.fk_idCargo = c.id

/*todos os funcionarios, mesmo os que n�o tem cargo*/
select f.nome_funcionario, f.salario_func, c.nome_cargo from cargo (nolock) c
right outer join funcionario (nolock) f
on f.fk_idCargo = c.id

/*
FULL JOIN ou FULL OUTER JOIN: Combina os resultados de esquerda e direita se
junta exterior.
A tabela conter� todos os registros de ambas as tabelas, Caso uma linha de dados
n�o esteja
associada a qualquer linha da outra tabela, os valores das colunas a lista de
sele��o ser�o nulos.
*/

select f.nome_funcionario, f.salario_func, c.nome_cargo from cargo (nolock) c
full outer join funcionario (nolock) f
on f.fk_idCargo = c.id

/*SELFJOIN: � usado para unir uma tabela a ela mesma.*/
select f1.id, f1.nome_funcionario as 'nome maior salario', f1.salario_func,
f2.id, f2.nome_funcionario as 'menor salario', f2.salario_func
from funcionario (nolock) f1, funcionario (nolock) f2
where f1.salario_func > f2.salario_func