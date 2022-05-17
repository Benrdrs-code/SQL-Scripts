/*
CAST � Fun��o do Padr�o ANSI
CONVERT � Fun��o do  engine do SQL Server, pode ser utilizado para formata��o de valores do tipo datetime e money.

Como funcionam esses duas fun��es:

CAST � Primeiro par�metro campo a ser convertido, segundo par�metro tipo para qual ser� convertido o campo.

Ex: Vamos converter a data de validade do produto para o tipo VARCHAR, lembrando que na cria��o do banco usamos DATETIME.
*/

/*TR�S UM NUMERO CORRESPONDENTE  A DATA NO SISTEMA*/
SELECT CAST(VALIDADE AS INTEGER) FROM PRODUTO

/*TR�S A DATA EM FORMATO DE TEXTO*/
SELECT CAST(VALIDADE AS VARCHAR) FROM PRODUTO

/*
CONVERT � Primeiro par�metro � o tipo para qual ser� convertido o campo, segundo par�metro o campo a ser convertido, pode-se ter um terceiro par�metro muito �til na convers�o de datas.

Ex:  Vamos converter a validade do produto para VARCHAR e depois converter a data atual do sistema para outros padr�es de data.
*/

/* CONVERTENDO A VALIDADE PARA TEXTO*/
SELECT CONVERT(VARCHAR, DATA) FROM PRODUTO

/*CONVERTENDO A VALIDADE PARA TEXTO, TRAZENDO APENAS OS 3 PRIMEIROS CARACTERES*/
SELECT CONVERT(CHAR(3), DATA) FROM PRODUTO

SELECT CONVERT (VARCHAR, GETDATE(),101) � PADR�O
SELECT CONVERT (VARCHAR, GETDATE(),102) � EUA
SELECT CONVERT (VARCHAR, GETDATE(),103) � BRIT�NICO/FRANC�S
SELECT CONVERT (VARCHAR, GETDATE(),104) � ALEM�O
SELECT CONVERT (VARCHAR, GETDATE(),105) � ITALIANO
SELECT CONVERT (VARCHAR, GETDATE(),106) � ?
SELECT CONVERT (VARCHAR, GETDATE(),107) � ?
SELECT CONVERT (VARCHAR, GETDATE(),108) � ?
SELECT CONVERT (VARCHAR, GETDATE(),109) � PADR�O + MILISSEGUNDOS
SELECT CONVERT (VARCHAR, GETDATE(),110) � EUA 
SELECT CONVERT (VARCHAR, GETDATE(),111) � JAP�O
SELECT CONVERT (VARCHAR, GETDATE(),112) � ISO
SELECT CONVERT (VARCHAR, GETDATE(),113) � PADR�O EUROPA
SELECT CONVERT (VARCHAR, GETDATE(),114) � ?
SELECT CONVERT (VARCHAR, GETDATE(),120) � ODBC CAN�NICO
SELECT CONVERT (VARCHAR, GETDATE(),121) � ODBC CAN�NICO + MILISSEGUNDOS
SELECT CONVERT (VARCHAR, GETDATE(),126) � ISO8601
SELECT CONVERT (VARCHAR, GETDATE(),127) � ISO8601 + FUSO HOR�RIO Z
SELECT CONVERT (VARCHAR, GETDATE(),130) � ISL�MICO
SELECT CONVERT (VARCHAR, GETDATE(),121) � ISL�MICO

/*Ao executarem esses selects com esses padr�es, notem que cada sa�da � formatada de uma maneira diferente.*/