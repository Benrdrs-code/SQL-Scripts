Select 
	f.FuncID,
	f.Nome,
	f.Email,
	f.Supervisor
from Funcionario f
where FuncID = 11



Select 
	f.FuncID,
	f.Nome,
	ISNULL(f.Email, 'SEM EMAIL') as Email, /*QUANDO O EMAIL FOR NULO COLOCAR 'SEM EMAIL'*/
	ISNULL(f.Supervisor, '0') as Supervisor /*QUANDO O SUPERVIDOR FOR NULO COLOCAR '0'*/
from Funcionario f
where FuncID = 11
