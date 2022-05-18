/* CRIANDO CONSULTA*/
SELECT 
	F.FuncID 'ID_FUNCIONARIO',
	F.Nome 'FUNCIONARIO', 
	F.CPF 'CPF', 
	F.DataNascimento 'NASCIMENTO',	
	CASE F.Sexo
		WHEN 'F' THEN 'FEMININO'
		ELSE
			'MASCULINO'
		END 'SEXO', 
	F.Email 'EMAIL', 
	C.Nome 'CARGO', 
	D.Nome 'DEPARTAMENTO'
FROM Funcionario F
	INNER JOIN Cargo C
		ON (F.CargoID = C.CargoID)
	INNER JOIN Departamento D
		ON (C.DepartID = D.DepartID)
WHERE F.Status = 1

/* CRIANDO VIEW*/
CREATE VIEW VW_DADOS_FUNC
AS
SELECT 
	F.FuncID 'ID_FUNCIONARIO',
	F.Nome 'FUNCIONARIO', 
	F.CPF 'CPF', 
	F.DataNascimento 'NASCIMENTO',	
	CASE F.Sexo
		WHEN 'F' THEN 'FEMININO'
		ELSE
			'MASCULINO'
		END 'SEXO', 
	F.Email 'EMAIL', 
	C.Nome 'CARGO', 
	D.Nome 'DEPARTAMENTO'
FROM Funcionario F
	INNER JOIN Cargo C
		ON (F.CargoID = C.CargoID)
	INNER JOIN Departamento D
		ON (C.DepartID = D.DepartID)
WHERE F.Status = 1

/*CONSULTANDO VIEW*/
SELECT * FROM VW_DADOS_FUNC

/*JUNÇÃO DA VIEW COM A TABELA FUNCIONARIO*/
SELECT 
	VW.*, 
	F.Salario 
FROM VW_DADOS_FUNC VW
INNER JOIN Funcionario F
ON (F.FuncID = VW.ID_FUNCIONARIO)
WHERE Salario > 3000
