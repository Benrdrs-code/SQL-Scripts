INSERT INTO Funcionario(Nome,CPF, DataNascimento, Sexo, Salario, Email,
DepartID, CargoID)
VALUES ('Jos�', '22222222222', '1990-05-05', 'M', 1700.00,
'jose@empresa.com', 1, 3);

/* Verifica��o da restri��o Unique*/
INSERT INTO Funcionario(Nome,CPF, DataNascimento, Sexo, Salario, Email,
DepartID, CargoID)
VALUES ('Tiago', '22222222222', '1991-02-05', 'M', 1800.00,
'tiago@empresa.com', 2, 1);
INSERT INTO Funcionario(Nome,CPF, DataNascimento, Sexo, Salario, Email,
DepartID, CargoID)
VALUES ('Fabiana', '33333333333', '1990-10-10', 'F', 1700.00,
'fabiana@empresa.com', 5, 1)

/* Verifica��o da restri��o CHECK*/
INSERT INTO Funcionario(Nome,CPF, DataNascimento, Sexo, Salario, Email,
DepartID, CargoID)
VALUES ('Maria', '44444444444', '1985-07-10', 'Y', 1700.00,
'maria@empresa.com', 1, 2)

/*Inserir cargo com departamento vinculado*/
INSERT INTO Cargo (Nome, Atividades,DepartID)
VALUES
('Estagi�rio de TI', 'Auxiliar o Analista do DP nas suas atividades para
acumulo de experiencia',5)
;

/* Inserindo departamentos antes da restri��o default*/
INSERT INTO Departamento (Nome)
VALUES
('Departamento Pessoal'),
('Departamento Financeiro'),
('Departamento Controladoria')
;

/*inser��o dos departamentos or�amento padr�o*/
INSERT INTO Departamento (Nome)
VALUES
('Recursos Humanos')
;

INSERT INTO Departamento (Nome)
VALUES
('Tecnologia da Informa��o')
;
SELECT * FROM Cargo;
SELECT * FROM Departamento;
SELECT * FROM Funcionario;

/* exclus�o em cascata
DELETE Cargo
WHERE CargoID = 3

/* exclus�o sem o modo cascata*/
DELETE Cargo
WHERE CargoID = 1


UPDATE Funcionario
SET Sexo = 'F'
WHERE FuncID = 7
