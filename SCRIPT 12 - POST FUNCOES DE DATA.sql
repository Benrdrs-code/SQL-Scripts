/*
Datas e hora atuais: Fun��es que retornam os valores de data e hora atuais do sistema onda a inst�ncia do SQL Server reside.
*/

SELECT GETDATE() as �GETDATE� /* Data e hora atuais do sistema.*/
SELECT CURRENT_TIMESTAMP as �CURRENT_TIMESTAMP� /* Data e hora atuais do sistema no padr�o SQL ANSI.*/

/*
TABELA ABREVIA��ES DE FRAGMENTO DE DATA ou DATEPARTS:

FRAGMENTO ABREVIA��O	DESCRI��O
YEAR

YY, YYYY	ANO
QUARTER

QQ, Q	
QUARTO DE ANO

MONTH	MM, M	
M�S

DAYOFYEAR

DY, Y	
DIA DO ANO (DE 1 A 365)

DAY

DD, D	
DIA DO M�S

WEEK

WK, WW	
SEMANA

WEEKDAY	DW	
DIA DA SEMANA (1 A 7)

HOUR	HH	
HORA

MINUTE

MI, N	
MINUTO

SECOND

SS, S	
SECUNDO

MILLISECOND

MS	
MILISEGUNDO

MICROSECOND	MCS	
MICROSEGUNDO

NANOSECOND	NS	
NANOSEGUNDO

Fun��o DATEPART() � Recebe 2 argumentos, sendo o primeiroo fragmenta da data que desejamos e o segundo a data propriamente dita. Est� fun��o retorna um valor inteiro, que representa o valor que desejamos obter.

Ex: No exemplo abaixo estou trazendo todos as partes da data de validade do produto.
*/

SELECT
                DATEPART(YEAR, VALIDADE ) AS �ANO�,
                DATEPART(QUARTER, VALIDADE ) AS �QUARTO DO ANO�,
                DATEPART(MONTH, VALIDADE ) AS �M�S�,
                DATEPART(DAYOFYEAR, VALIDADE ) AS �DIA DO ANO (DE 1 A 365 )�,
                DATEPART(DAY, VALIDADE ) AS �DIA DO M�S�,
                DATEPART(WEEK, VALIDADE ) AS �SEMANA�,
                DATEPART(WEEKDAY, VALIDADE ) AS �DIA DA SEMANA�,
                DATEPART(HOUR, VALIDADE ) AS �HORA�,
                DATEPART(MINUTE, VALIDADE ) AS �MINUTO�,
                DATEPART(SECOND, VALIDADE ) AS �SEGUNDO�,
                DATEPART(MILLISECOND, VALIDADE ) AS �MILISEGUNDO�,
                DATEPART(MICROSEGUND, VALIDADE ) AS �MICROSEGUNDO�,
                DATEPART(NANOSECOND, VALIDADE ) AS �NANOSEGUNDO�
FROM PRODUTO

/*
Fun��o DATEDIFF() � Retorna a diferen�a em um n�mero inteiro de um intervalo de duas datas usando como argumento o fragmento de compara��o.

Ex: Aqui fa�o uma consulta para saber a diferen�a entre a validade do produto e a validade atual do sistema.
*/

SELECT
                DATEDIFF(YEAR, VALIDADE , GETDATE()) AS �ANO�,
                DATEDIFF(QUARTER, VALIDADE , GETDATE()) AS �QUARTO DO ANO�,
                DATEDIFF(MONTH, VALIDADE , GETDATE()) AS �M�S�,
DATEDIFF(DAYOFYEAR, VALIDADE , GETDATE()) AS �DIA DO ANO(DE 1 A 365 )�,
                DATEDIFF(DAY, VALIDADE , GETDATE()) AS �DIA DO M�S�,
                DATEDIFF(WEEK, VALIDADE , GETDATE()) AS �SEMANA�,
                DATEDIFF(WEEKDAY, VALIDADE , GETDATE()) AS �DIA DA SEMANA�,
                DATEDIFF(HOUR, VALIDADE , GETDATE()) AS �HORA�,
                DATEDIFF(MINUTE, VALIDADE , GETDATE()) AS �MINUTO�,
                DATEDIFF(SECOND, VALIDADE , GETDATE()) AS �SEGUNDO�
FROM PRODUTO

/*
Fun��o DATEADD() � Tem como prop�sito incrementar ou subtrair valores absolutos de uma determinada data. Como argumentos a fun��o recebe a DatePart que ser� incrementada/subtra�da, o n�mero para a realiza��o da opera��o e a data a ser trabalhada.

Ex: Aqui incrementamos o valor 5 a cada DatePart da validade do produto.
*/

SELECT
                DATEADD(YEAR, 5, VALIDADE ) AS �ANO�,
                DATEADD(QUARTER, 5, VALIDADE ) AS �QUARTO DO ANO�,
                DATEADD(MONTH, 5, VALIDADE ) AS �M�S�,
                DATEADD(DAYOFYEAR, 5, VALIDADE ) AS �DIA DO ANO (DE 1 A 365 )�,
                DATEADD(DAY, 5, VALIDADE ) AS �DIA DO M�S�,
                DATEADD(WEEK, 5, VALIDADE ) AS �SEMANA�,
                DATEADD(WEEKDAY, 5, VALIDADE ) AS �DIA DA SEMANA�,
                DATEADD(HOUR, 5, VALIDADE ) AS �HORA�,
                DATEADD(MINUTE, 5, VALIDADE ) AS �MINUTO�,
                DATEADD(SECOND, 5, VALIDADE ) AS �SEGUNDO�
FROM PRODUTO

/*
Fun��es YEAR(), MONYH() e DAY() � S�o extens�es da fun��o DATEPART, por�m com os argumentos de DATEPART suprimidos. Por exemplo, em vez de usar DATEPARTE (MONTH, GETDATE()), no SQL Server podemos, ent�o, escrever apenas MONTH (GETDATE()), que produz o mesmo resultado.

Ex: Aqui trazemos o m�s, dia  e ano da validade do produto
*/

SELECT
                VALIDADE ,
                MONTH(VALIDADE ) AS �M�S�,
                DAY(VALIDADE ) AS �DIA�,
                YEAR(VALIDADE ) AS �ANO�,
                VALIDADE 
FROM PRODUTO