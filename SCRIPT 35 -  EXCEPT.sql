/*
SINTAXE:

SELECT <CAMPOS> FROM TABELA1
EXCEPT
SELECT <CAMPOS> FROM TABELA2

Ex1.: Exibir os locais que são locais de funcionários, mas não de clientes
*/

SELECT COUNTRY, CITY FROM HR.EMPLOYEES
EXCEPT
SELECT COUNTRY, CITY FROM SALES.CUSTOMERS

/*
Ex2.: Exibir os locais que são locais de clientes, mas não de funcionários
*/

SELECT COUNTRY, CITY FROM SALES.CUSTOMERS
EXCEPT
SELECT COUNTRY, CITY FROM HR.EMPLOYEES