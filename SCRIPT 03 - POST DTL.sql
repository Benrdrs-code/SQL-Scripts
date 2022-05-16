/*
COMANDOS DTL - Linguagem de Transa��o de Dados
BEGIN TRAN OU BEGIN TRANSACTION - INICIA UMA TRANSA��O
COMMIT - TERMINA A TRANSA��O E GRAVA OS DADOS NA TABELA
ROLLBACK - TERMINA A TRANSA��O E VOLTA AS ALTERA��ES FEITAS.
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