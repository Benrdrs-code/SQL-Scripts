/*Script de Criação/Alteração dos Schemas e tabela com esquema vinculada*/

/*Criando um Esquema*/
CREATE SCHEMA Teste;
GO

/*
Alterando o esquema de uma tabela já existente
Passar esquema que será novo e após o TRANSFER nome do esquema junto com nome —-da tabela
*/
ALTER SCHEMA Teste TRANSFER dbo.CopiaFuncionario2;
GO

/*Criando Tabela com esquema já vinculando*/
CREATE TABLE Teste.TesteTabela
(
AddressID int NOT NULL IDENTITY(1,1),
StreetAddress varchar(125) NOT NULL,
StreetAddress2 varchar(75) NULL,
State char(2) NOT NULL,
EmployeeID int NOT NULL
);