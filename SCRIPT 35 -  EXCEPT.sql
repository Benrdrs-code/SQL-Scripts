/*
SINTAXE:

SELECT <CAMPOS> FROM TABELA1
EXCEPT
SELECT <CAMPOS> FROM TABELA2

Ex1.: Exibir os locais que s�o locais de funcion�rios, mas n�o de clientes
*/

SELECT COUNTRY, CITY FROM HR.EMPLOYEES
EXCEPT
SELECT COUNTRY, CITY FROM SALES.CUSTOMERS

/*
Ex2.: Exibir os locais que s�o locais de clientes, mas n�o de funcion�rios
*/

SELECT COUNTRY, CITY FROM SALES.CUSTOMERS
EXCEPT
SELECT COUNTRY, CITY FROM HR.EMPLOYEES