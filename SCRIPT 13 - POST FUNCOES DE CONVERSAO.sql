/*
CAST – Função do Padrão ANSI
CONVERT – Função do  engine do SQL Server, pode ser utilizado para formatação de valores do tipo datetime e money.

Como funcionam esses duas funções:

CAST – Primeiro parâmetro campo a ser convertido, segundo parâmetro tipo para qual será convertido o campo.

Ex: Vamos converter a data de validade do produto para o tipo VARCHAR, lembrando que na criação do banco usamos DATETIME.
*/

/*TRÁS UM NUMERO CORRESPONDENTE  A DATA NO SISTEMA*/
SELECT CAST(VALIDADE AS INTEGER) FROM PRODUTO

/*TRÁS A DATA EM FORMATO DE TEXTO*/
SELECT CAST(VALIDADE AS VARCHAR) FROM PRODUTO

/*
CONVERT – Primeiro parâmetro é o tipo para qual será convertido o campo, segundo parâmetro o campo a ser convertido, pode-se ter um terceiro parâmetro muito útil na conversão de datas.

Ex:  Vamos converter a validade do produto para VARCHAR e depois converter a data atual do sistema para outros padrões de data.
*/

/* CONVERTENDO A VALIDADE PARA TEXTO*/
SELECT CONVERT(VARCHAR, DATA) FROM PRODUTO

/*CONVERTENDO A VALIDADE PARA TEXTO, TRAZENDO APENAS OS 3 PRIMEIROS CARACTERES*/
SELECT CONVERT(CHAR(3), DATA) FROM PRODUTO

SELECT CONVERT (VARCHAR, GETDATE(),101) — PADRÃO
SELECT CONVERT (VARCHAR, GETDATE(),102) — EUA
SELECT CONVERT (VARCHAR, GETDATE(),103) — BRITÂNICO/FRANCÊS
SELECT CONVERT (VARCHAR, GETDATE(),104) — ALEMÃO
SELECT CONVERT (VARCHAR, GETDATE(),105) — ITALIANO
SELECT CONVERT (VARCHAR, GETDATE(),106) — ?
SELECT CONVERT (VARCHAR, GETDATE(),107) — ?
SELECT CONVERT (VARCHAR, GETDATE(),108) — ?
SELECT CONVERT (VARCHAR, GETDATE(),109) — PADRÃO + MILISSEGUNDOS
SELECT CONVERT (VARCHAR, GETDATE(),110) — EUA 
SELECT CONVERT (VARCHAR, GETDATE(),111) — JAPÃO
SELECT CONVERT (VARCHAR, GETDATE(),112) — ISO
SELECT CONVERT (VARCHAR, GETDATE(),113) — PADRÃO EUROPA
SELECT CONVERT (VARCHAR, GETDATE(),114) — ?
SELECT CONVERT (VARCHAR, GETDATE(),120) — ODBC CANÔNICO
SELECT CONVERT (VARCHAR, GETDATE(),121) — ODBC CANÔNICO + MILISSEGUNDOS
SELECT CONVERT (VARCHAR, GETDATE(),126) — ISO8601
SELECT CONVERT (VARCHAR, GETDATE(),127) — ISO8601 + FUSO HORÁRIO Z
SELECT CONVERT (VARCHAR, GETDATE(),130) — ISLÂMICO
SELECT CONVERT (VARCHAR, GETDATE(),121) — ISLÂMICO

/*Ao executarem esses selects com esses padrões, notem que cada saída é formatada de uma maneira diferente.*/