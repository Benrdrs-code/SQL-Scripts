/*
COMANDOS DTL - Linguagem de Transação de Dados
BEGIN TRAN OU BEGIN TRANSACTION - INICIA UMA TRANSAÇÃO
COMMIT - TERMINA A TRANSAÇÃO E GRAVA OS DADOS NA TABELA
ROLLBACK - TERMINA A TRANSAÇÃO E VOLTA AS ALTERAÇÕES FEITAS.
*/

select * from vendedor;

 /*begin tran*/
 insert into Vendedor(nome, sobrenome) values ('Teste1','Teste1')
 /*commit*/
 
 /*begin tran*/
 update vendedor
 set nome = 'Nome da Pessoa',
 sobrenome = 'Sobrenome da pessoa'
 where codigo = 12;
 /*rollback*/
 
 /*begin tran*/
 delete vendedor
 where codigo = 12;
 select * from vendedor;
 /*commit*/