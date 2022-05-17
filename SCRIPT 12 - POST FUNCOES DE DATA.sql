/*
Datas e hora atuais: Funções que retornam os valores de data e hora atuais do sistema onda a instância do SQL Server reside.
*/

SELECT GETDATE() as ‘GETDATE’ /* Data e hora atuais do sistema.*/
SELECT CURRENT_TIMESTAMP as ‘CURRENT_TIMESTAMP’ /* Data e hora atuais do sistema no padrão SQL ANSI.*/

/*
TABELA ABREVIAÇÕES DE FRAGMENTO DE DATA ou DATEPARTS:

FRAGMENTO ABREVIAÇÃO	DESCRIÇÃO
YEAR

YY, YYYY	ANO
QUARTER

QQ, Q	
QUARTO DE ANO

MONTH	MM, M	
MÊS

DAYOFYEAR

DY, Y	
DIA DO ANO (DE 1 A 365)

DAY

DD, D	
DIA DO MÊS

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

Função DATEPART() – Recebe 2 argumentos, sendo o primeiroo fragmenta da data que desejamos e o segundo a data propriamente dita. Está função retorna um valor inteiro, que representa o valor que desejamos obter.

Ex: No exemplo abaixo estou trazendo todos as partes da data de validade do produto.
*/

SELECT
                DATEPART(YEAR, VALIDADE ) AS “ANO”,
                DATEPART(QUARTER, VALIDADE ) AS “QUARTO DO ANO”,
                DATEPART(MONTH, VALIDADE ) AS “MÊS”,
                DATEPART(DAYOFYEAR, VALIDADE ) AS “DIA DO ANO (DE 1 A 365 )”,
                DATEPART(DAY, VALIDADE ) AS “DIA DO MÊS”,
                DATEPART(WEEK, VALIDADE ) AS “SEMANA”,
                DATEPART(WEEKDAY, VALIDADE ) AS “DIA DA SEMANA”,
                DATEPART(HOUR, VALIDADE ) AS “HORA”,
                DATEPART(MINUTE, VALIDADE ) AS “MINUTO”,
                DATEPART(SECOND, VALIDADE ) AS “SEGUNDO”,
                DATEPART(MILLISECOND, VALIDADE ) AS “MILISEGUNDO”,
                DATEPART(MICROSEGUND, VALIDADE ) AS “MICROSEGUNDO”,
                DATEPART(NANOSECOND, VALIDADE ) AS “NANOSEGUNDO”
FROM PRODUTO

/*
Função DATEDIFF() – Retorna a diferença em um número inteiro de um intervalo de duas datas usando como argumento o fragmento de comparação.

Ex: Aqui faço uma consulta para saber a diferença entre a validade do produto e a validade atual do sistema.
*/

SELECT
                DATEDIFF(YEAR, VALIDADE , GETDATE()) AS “ANO”,
                DATEDIFF(QUARTER, VALIDADE , GETDATE()) AS “QUARTO DO ANO”,
                DATEDIFF(MONTH, VALIDADE , GETDATE()) AS “MÊS”,
DATEDIFF(DAYOFYEAR, VALIDADE , GETDATE()) AS “DIA DO ANO(DE 1 A 365 )”,
                DATEDIFF(DAY, VALIDADE , GETDATE()) AS “DIA DO MÊS”,
                DATEDIFF(WEEK, VALIDADE , GETDATE()) AS “SEMANA”,
                DATEDIFF(WEEKDAY, VALIDADE , GETDATE()) AS “DIA DA SEMANA”,
                DATEDIFF(HOUR, VALIDADE , GETDATE()) AS “HORA”,
                DATEDIFF(MINUTE, VALIDADE , GETDATE()) AS “MINUTO”,
                DATEDIFF(SECOND, VALIDADE , GETDATE()) AS “SEGUNDO”
FROM PRODUTO

/*
Função DATEADD() – Tem como propósito incrementar ou subtrair valores absolutos de uma determinada data. Como argumentos a função recebe a DatePart que será incrementada/subtraída, o número para a realização da operação e a data a ser trabalhada.

Ex: Aqui incrementamos o valor 5 a cada DatePart da validade do produto.
*/

SELECT
                DATEADD(YEAR, 5, VALIDADE ) AS “ANO”,
                DATEADD(QUARTER, 5, VALIDADE ) AS “QUARTO DO ANO”,
                DATEADD(MONTH, 5, VALIDADE ) AS “MÊS”,
                DATEADD(DAYOFYEAR, 5, VALIDADE ) AS “DIA DO ANO (DE 1 A 365 )”,
                DATEADD(DAY, 5, VALIDADE ) AS “DIA DO MÊS”,
                DATEADD(WEEK, 5, VALIDADE ) AS “SEMANA”,
                DATEADD(WEEKDAY, 5, VALIDADE ) AS “DIA DA SEMANA”,
                DATEADD(HOUR, 5, VALIDADE ) AS “HORA”,
                DATEADD(MINUTE, 5, VALIDADE ) AS “MINUTO”,
                DATEADD(SECOND, 5, VALIDADE ) AS “SEGUNDO”
FROM PRODUTO

/*
Funções YEAR(), MONYH() e DAY() – São extensões da função DATEPART, porém com os argumentos de DATEPART suprimidos. Por exemplo, em vez de usar DATEPARTE (MONTH, GETDATE()), no SQL Server podemos, então, escrever apenas MONTH (GETDATE()), que produz o mesmo resultado.

Ex: Aqui trazemos o mês, dia  e ano da validade do produto
*/

SELECT
                VALIDADE ,
                MONTH(VALIDADE ) AS “MÊS”,
                DAY(VALIDADE ) AS “DIA”,
                YEAR(VALIDADE ) AS “ANO”,
                VALIDADE 
FROM PRODUTO