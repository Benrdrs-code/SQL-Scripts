/* INSERTS DEPARTAMENTO */

/*Insert Departamento - com valor do orçamento*/
INSERT INTO Departamento (Nome, Orcamento)
VALUES
('Departamento Pessoal', 15078.00),
('Recursos Humanos', 11000.50),
('Seleção', 9555.50),
('Tecnologia da Informação', 50000.00);

/* Insert Departamento - com valor padrão*/
INSERT INTO Departamento (Nome)
VALUES
('Financeiro'),
('Controladoria'),
('Marketing');
SELECT * FROM Departamento;

/* INSERTS CARGOS */
INSERT INTO Cargo (Nome, Atividades, DepartID)
VALUES
('Gerente de TI','Gerenciar/Planejar projetos para os setores
da empresa e auxiliar as equipes de TI.', 4),
('Gerente de DP','Saber como vai o andamento das rotinas
referentes ao DP e melhorar os processos do mesmo', 1),
('Gerente Financeiro','Fazer projeções, Diminuir gastos,
gerenciar as areas do financeiro', 5),
('Analista de Infra','Analisar como anda a infra estrutura
computacional da empresa, dar suporte a usuarios', 4),
('Analista de Sistemas','Fazer formulas, dar suporte ao
sistema da empresa, suporte a usuario', 4),
('DBA','Verificar/tunar/melhorar as bases de dados da empresa
deixando-as integras',4),
('Analista de DP','Emitir resições, lançar beneficios,
cadastrar novos funcionarios',1),
('Analista de Seleção','Prepara teste para entrevistas, fazer
seleção de funcionarios, divulgar vagas',3),
('Coordenador de Marketing','Procurar novos clientes para
parceria, gerenciar analistas financeiros para melhores
praticas na busca de clientes',7)
;

SELECT * FROM Cargo;

/* INSERTS FUNCIONARIO */

/* FUNCIONARIOS SEM VALORES PADRÃO*/
INSERT INTO Funcionario (Nome, CPF, DataNascimento, Sexo,
DataAdmissao, DataDemissao, Salario, Email, Status,
Supervisor, CargoID)
VALUES
('Felipe Carvalho', '11111111111','1980-08-02', 'M', '2014-
10-30', null, 3000, 'felipe.carvalho@empresa.com', 1, null,
9),
('Fernanda Daniele', '22222222222','1989-10-20', 'F', '2012-
01-29', '2014-05-02', 2100, 'fernanda.daniele@empresa.com',
0, 3 , 8),
('Francisco Jose', '33333333333','1980-02-02', 'M', '2010-03-
30', null, 4510.55, 'francisco.jose@empresa.com', 1, null,
2),
('Giordano Giuliano', '44444444444','1988-06-15', 'M', '2013-
10-30', null, 5000, 'giordano.giuliano@empresa.com', 1, null,
1),
('Franciele Fernanda', '55555555555','1991-11-11', 'F',
'2011-11-05', '2013-05-05', 1400,
'felipe.carvalho@empresa.com', 0, 2, 7),
('Patricia Aragão', '66666666666','1985-07-22', 'F', '2009-
05-03', null, 4500, 'patricia.araguao@empresa.com', 1, null,
3),
('Marcelo Ferreira', '77777777777','1992-12-06', 'M', '2012-
10-30', '2014-09-15', 2100, 'marcelo.ferreira@empresa.com',
0, 4, 4),
('Jose Luis', '88888888888','1993-02-20', 'M', '2013-10-30',
'2014-04-25', 1200, 'jose.luis@empresa.com', 0, null, 8),
('Tarciana Juliana', '99999999999','1994-10-25', 'F', '2013-
10-30', null, 3500, 'tarciana.juliana@empresa.com', 1, 4, 6),
('Juliana Alcantra', '12345678910','1992-06-12', 'F', '2013-
10-30', null, 2000, 'juliana.alcantra@empresa.com', 1, 1, 5);

/* SABER NOME DO FUNCIONARIO, SUPERVISOR, NOME DA FUNÇÃO ,NOME DO DEPARTAMENTO*/

SELECT F.Nome AS 'FUNCIONARIO', F1.Nome AS 'SUPERVISO',
C.Nome AS 'FUNCAO', D.Nome AS 'DEPARTAMENTO' FROM Funcionario
F
INNER JOIN Cargo C
ON F.CargoID = C.CargoID
INNER JOIN Departamento D
ON D.DepartID = C.DepartID
INNER JOIN Funcionario F1
ON F.Supervisor = F1.FuncID
WHERE F.Supervisor = 4