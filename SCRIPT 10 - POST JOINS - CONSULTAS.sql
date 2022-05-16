/*Script – Exemplo pratico JOINS*/
select * from funcionario
select * from cargo

/*INNER JOIN: Retorna linhas quando há uma correspondência em ambas as tabelas.*/
select f.nome_funcionario, f.salario_func, c.nome_cargo from funcionario (nolock)
f
inner join cargo (nolock) c
on f.fk_idCargo = c.id
/
*
LEFT JOIN ou LEFT OUTER JOIN: Retorna todas as linhas da tabela à esquerda,
mesmo se não houver nenhuma correspondência na tabela à direita.
*/

/*todos os Funcionarios, mesmo os que não tem cargo*/
select f.nome_funcionario, f.salario_func, c.nome_cargo from funcionario (nolock)
f
left outer join cargo (nolock) c
on f.fk_idCargo = c.id

/*todos os cargos, mesmo os que não estão relacionados a nenhum funcionario*/
select f.nome_funcionario, f.salario_func, c.nome_cargo from cargo (nolock) c
left outer join funcionario (nolock) f
on f.fk_idCargo = c.id

/*
RIGHT JOIN ou RIGHT OUTER JOIN: Retorna todas as linhas da tabela da direita,
mesmo que não haja correspondências na tabela à esquerda.
*/

/*todos os cargos, mesmo os que não tem funcionarios relacionados*/
select f.nome_funcionario, f.salario_func, c.nome_cargo from funcionario (nolock)
f
right outer join cargo (nolock) c
on f.fk_idCargo = c.id

/*todos os funcionarios, mesmo os que não tem cargo*/
select f.nome_funcionario, f.salario_func, c.nome_cargo from cargo (nolock) c
right outer join funcionario (nolock) f
on f.fk_idCargo = c.id

/*
FULL JOIN ou FULL OUTER JOIN: Combina os resultados de esquerda e direita se
junta exterior.
A tabela conterá todos os registros de ambas as tabelas, Caso uma linha de dados
não esteja
associada a qualquer linha da outra tabela, os valores das colunas a lista de
seleção serão nulos.
*/

select f.nome_funcionario, f.salario_func, c.nome_cargo from cargo (nolock) c
full outer join funcionario (nolock) f
on f.fk_idCargo = c.id

/*SELFJOIN: é usado para unir uma tabela a ela mesma.*/
select f1.id, f1.nome_funcionario as 'nome maior salario', f1.salario_func,
f2.id, f2.nome_funcionario as 'menor salario', f2.salario_func
from funcionario (nolock) f1, funcionario (nolock) f2
where f1.salario_func > f2.salario_func