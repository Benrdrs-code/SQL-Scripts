INSERT INTO Funcionario(Nome,CPF, DataNascimento, Sexo, Salario, Email,
DepartID, CargoID)
VALUES ('José', '22222222222', '1990-05-05', 'M', 1700.00,
'jose@empresa.com', 1, 3);

/* Verificação da restrição Unique*/
INSERT INTO Funcionario(Nome,CPF, DataNascimento, Sexo, Salario, Email,
DepartID, CargoID)
VALUES ('Tiago', '22222222222', '1991-02-05', 'M', 1800.00,
'tiago@empresa.com', 2, 1);
INSERT INTO Funcionario(Nome,CPF, DataNascimento, Sexo, Salario, Email,
DepartID, CargoID)
VALUES ('Fabiana', '33333333333', '1990-10-10', 'F', 1700.00,
'fabiana@empresa.com', 5, 1)

/* Verificação da restrição CHECK*/
INSERT INTO Funcionario(Nome,CPF, DataNascimento, Sexo, Salario, Email,
DepartID, CargoID)
VALUES ('Maria', '44444444444', '1985-07-10', 'Y', 1700.00,
'maria@empresa.com', 1, 2)

/*Inserir cargo com departamento vinculado*/
INSERT INTO Cargo (Nome, Atividades,DepartID)
VALUES
('Estagiário de TI', 'Auxiliar o Analista do DP nas suas atividades para
acumulo de experiencia',5)
;

/* Inserindo departamentos antes da restrição default*/
INSERT INTO Departamento (Nome)
VALUES
('Departamento Pessoal'),
('Departamento Financeiro'),
('Departamento Controladoria')
;

/*inserção dos departamentos orçamento padrão*/
INSERT INTO Departamento (Nome)
VALUES
('Recursos Humanos')
;

INSERT INTO Departamento (Nome)
VALUES
('Tecnologia da Informação')
;
SELECT * FROM Cargo;
SELECT * FROM Departamento;
SELECT * FROM Funcionario;

/* exclusão em cascata
DELETE Cargo
WHERE CargoID = 3

/* exclusão sem o modo cascata*/
DELETE Cargo
WHERE CargoID = 1


UPDATE Funcionario
SET Sexo = 'F'
WHERE FuncID = 7
