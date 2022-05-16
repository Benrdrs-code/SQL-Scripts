/*
Comandos DML - Linguagem de Manipula��o de Dados
INSERT - INSERIR REGISTROS NA TABELA - OK
UPDATE - ATUALIZA REGISTROS DE UMA TABELA - OK
DELETE - EXCLUI REGISTROS DE UMA TABELA - OK
SELECT - SELECIONA (LISTA) REGISTROS DE UMA TABELA - OK
delete <> truncate
O delete nos da a op��o de excluir um determinado registro, o truncate exclui e renova a numera��o
da PK.
Alterando campo VALOR_UNITARIO TABELA DE PRODUTOS
ALTER TABLE PRODUTO
ALTER COLUMN VALOR_UNITARIO NUMERIC(18,2);
*/

/* ADICIONANDO NA TABELA DE CLIENTE*/

/* Insere registros em cliente, values especifica os campos queremos inserir na nossa tabela*/
insert into CLIENTE values ('Joana','Rua das Flores, n� 10, Recife');
insert into CLIENTE values ('Priscila','Avenida Joaquim Ribeiro, Bloco K, Apto 700, Recife');
insert into CLIENTE values ('Fl�vius','Rua das Am�lias, n� 250, Camaragibe');
insert into CLIENTE values ('S�rgio','Rua Severino dos Santos, n� 131, S�o Louren�o da Mata');
insert into CLIENTE values ('Carolina','Rua 15 de novembro, n� 1001, Olinda');

/* 
seleciona todos os clientes
 o asterisco ele retorna todos os campos de uma tabela
 from referencia a tabela que sera consultada ou atualizada ou deletada
 */
select * from CLIENTE;

/* seleciona pelo campo nome do cliente*/
select nome from CLIENTE

/* seleciona pelo campo nome e endere�o do cliente*/
select nome, endereco from CLIENTE

/* ADICIONANDO NA TABELA DE PRODUTO*/
insert into Produto values ('g','Biscoito Bono rechado cholocate 140g', 1.50, 'Bono');
insert into Produto values ('Kg','Refrigrante de Laranja Fanta 500ml', 1.75, 'Fanta');
insert into Produto values ('g','Margarina Cremosa sem Sal DEL�CIA 500g', 1.50, 'DEL�CIA');
insert into Produto values ('L','Whisky Escoc�s JOHNNIE WALKER Red Label 8 Anos 1L ', 69.90,
'JOHNNIE WALKER');

select * from produto

/* seleciona todos os produtos por nome e valor unitario*/
select nome, VALOR_UNITARIO from PRODUTO

/*atualiza a unidade do produto quando o codigo for igual a 2 o produto com codigo 2 tem a unidade Kg*/
update PRODUTO
set UNIDADE = 'ml'
where CODIGO = 2;

/*apos o update ele tera a unidade ml*/
select * from PRODUTO

/*atualiza o valor unitario do produto quando o codigo for igual a 1 valor do produto 1 � 1.50 apos o update ele ficar� com 2.75*/
update PRODUTO
set VALOR_UNITARIO = 2.75
where CODIGO = 1;

/*ADICIONANDO NA TABELA DE VENDEDOR*/
insert into Vendedor
values ('Neto','Cabral'),('Janete','Ferreira'),('Marluce','Santos'), ('Jessica','Santana'),
('Betania','Soares');
select * from Vendedor;

/*seleciona o vendedor por sobrenome*/
select sobrenome from VENDEDOR;

/*exclui o vendedor quando o codigo dele for igual a 4 vendedora jessica */
delete vendedor
where codigo = 4;

/*exclui o vendedor quando o codigo dele for igual a 5 vendedora betania*/
delete vendedor
where CODIGO = 5;
insert into Vendedor
values ('Paula','Fernanda')

/*o novo vendedor inserido vem com o codigo 6 mesmo tendo deletado os vendedores 4 e 5, pois o
codigo � auto incremental;*/
select * from VENDEDOR;