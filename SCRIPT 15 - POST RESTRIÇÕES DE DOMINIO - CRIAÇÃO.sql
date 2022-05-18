/*
Restri��es de Dom�nio - Objetivo Integridade dos dados. Em outras
palavras melhorar a validadee a consist�ncia dos dados.
1 - Primary Key - valores unicos na coluna
2 - Foreign Key - Referencia de uma coluna a outra tabela
3 - Foreign Key com exclus�o em Cascata - Exclui o dados das tabelas que
tem referencias em outras tabelas
4 - Unique - Permite que n�o sejam inseridos valores duplicados na coluna
5 - Default - cont�m um valor padr�o especificado
6 - Check - conferi se o valor inserido esta de acordo com as express�es.
*/

CREATE DATABASE EmpresaConsultaBD;
USE EmpresaConsultaBD;
GO

/*Saber restri��es do banco de dados que esta sendo usado/*
SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS;

/* TABELA DEPARTAMENTO */
CREATE TABLE Departamento
(
DepartID INT PRIMARY KEY IDENTITY (1,1),
Nome VARCHAR(50)NOT NULL,
Orcamento DECIMAL (10,2),
);

/*Adicionando restri��o padr�o no campo or�amento da tabela Departamento*/
ALTER TABLE Departamento
ADD CONSTRAINT DF_Orcamento DEFAULT 16500 FOR Orcamento;

/*Adicionando constraint para a chave primaria DepartID*/
ALTER TABLE Departamento
ADD CONSTRAINT PK_Depart PRIMARY KEY(DepartID);

/*Apagando a constraint padr�o de cria��o da tabela*/
ALTER TABLE Departamento DROP CONSTRAINT PK__Departam__0E53E1D531B10EA9;

/* TABELA CARGO */
CREATE TABLE Cargo
(
CargoID INT CONSTRAINT PK_Cargo PRIMARY KEY IDENTITY (1,1),
Nome VARCHAR (50) NOT NULL,
Atividades VARCHAR (100) NOT NULL
);

/* Inserindo campo na tabela Cargo*/
ALTER TABLE Cargo
ADD DepartID INT;

/* Adicionando restri��o de chave estrangueira no campo DepartID*/
ALTER TABLE Cargo ADD CONSTRAINT FK_CargoDepart
FOREIGN KEY (DepartID) REFERENCES Departamento(DepartID);

/* TABELA FUNCIONARIO */
CREATE TABLE Funcionario
(
FuncID INT CONSTRAINT PK_Func PRIMARY KEY IDENTITY (1,1),
Nome VARCHAR(50)NOT NULL,
CPF CHAR(11) CONSTRAINT UQ_CPF UNIQUE,
DataNascimento DATE NOT NULL,
Sexo CHAR(1)CONSTRAINT CK_Sexo
CHECK (Sexo ='M' OR Sexo='F'),
DataAdmissao DATE CONSTRAINT DF_Admissao DEFAULT GETDATE(),
DataDemissao DATE CONSTRAINT DF_Demissao DEFAULT NULL,
Salario DECIMAL(10,2),
Email VARCHAR (20),
Status bit CONSTRAINT DF_Status DEFAULT 1,
Supervisor INT CONSTRAINT DF_Supervisor DEFAULT NULL,
DepartID INT CONSTRAINT FK_FuncDepart
FOREIGN KEY (DepartID) REFERENCES Departamento(DepartID),
CargoID INT REFERENCES Cargo(CargoID)
ON DELETE CASCADE
);

/*Adicionando Restri��o de chave estrangeira (FOREIGN KEY) com a tabela Cargo*/
ALTER TABLE Funcionario ADD CONSTRAINT FK_FuncCargo
FOREIGN KEY(CargoID) REFERENCES Cargo(CargoID)

/*Apagando a constraint padr�o de cria��o da tabela*/
ALTER TABLE Funcionario DROP CONSTRAINT FK__Funcionar__Cargo__1CF15040;

/*Apagando Restri��o de verifica��o ao campo sexo da tabela Funcionario*/
ALTER TABLE Funcionario DROP CONSTRAINT CK_Sexo;

/*Adicionando Restri��o de verifica��o ao campo sexo da tabela Funcionario*/
ALTER TABLE Funcionario ADD CONSTRAINT CK_Sexo
CHECK (Sexo='M' OR Sexo='F');