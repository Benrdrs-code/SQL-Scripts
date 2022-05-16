/*
DCL - DATA CONTROL LANGUAGE - Linguagem de controle de dados
GRANT - Concede permiss�es ao usuario de realizar opera��es
REVOKE - Retira (restringe) permiss�es do usuario de executar opera��es
Aqui estamos logados como usuario: sa
*/

/* dando permiss�o para somente consultar a tabela produto*/
grant select on produto to teste;

/*total ao usuario da tabela produto*/
grant select,insert, delete, update on produto to teste;

/*retirando a permiss�o de inserir, alterar e deletar da tabela produto*/
revoke insert, delete, update on produto to teste;
revoke select on produto to teste;