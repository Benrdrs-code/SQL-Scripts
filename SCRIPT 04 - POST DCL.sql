/*
DCL - DATA CONTROL LANGUAGE - Linguagem de controle de dados
GRANT - Concede permissões ao usuario de realizar operações
REVOKE - Retira (restringe) permissões do usuario de executar operações
Aqui estamos logados como usuario: sa
*/

/* dando permissão para somente consultar a tabela produto*/
grant select on produto to teste;

/*total ao usuario da tabela produto*/
grant select,insert, delete, update on produto to teste;

/*retirando a permissão de inserir, alterar e deletar da tabela produto*/
revoke insert, delete, update on produto to teste;
revoke select on produto to teste;