/*UTILIZANDO O TOP*/
SELECT 
	TOP 3 FUNCID, NOME
FROM Funcionario

/*TOP COM ORDER BY*/
SELECT 
	TOP 3 FUNCID, NOME
FROM Funcionario
ORDER BY FuncID DESC