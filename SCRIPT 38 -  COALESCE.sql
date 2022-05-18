/*CRIAÇÃO DE NOVAS TABELAS*/

CREATE TABLE TipoContato
(TipoID INT PRIMARY KEY IDENTITY,
Tipo VARCHAR(100) NOT NULL
)

CREATE TABLE ContatoFunc
(ContatoId INT PRIMARY KEY IDENTITY,
InfoContato VARCHAR (100),
ContatoPrincipal bit , /*0 - nao , 1 - sim*/
TipoID INT CONSTRAINT FK_TipoContato_Contato
FOREIGN KEY (TipoID) REFERENCES TipoContato(TipoID),
FuncionarioID INT CONSTRAINT FK_ContatoFunc_Funcionario
FOREIGN KEY (FuncionarioID) REFERENCES Funcionario(FuncID)
)

/*INSERTS*/
INSERT INTO TipoContato (Tipo)
VALUES ('Celular'),('Comercial'),('Residencial'),('Email'), ('Fax')

INSERT INTO ContatoFunc (InfoContato,ContatoPrincipal, TipoID, FuncionarioID)
VALUES ('81 91111-2222',1, 1, 11), (NULL,0, 2, 11),(NULL,0, 3, 11),('felipec1980@seila.com',1, 4, 11)

SELECT * FROM TipoContato
SELECT * FROM ContatoFunc

/*utilizando o coalesce*/
SELECT F.Nome, COALESCE(F.Email, NULL, FC.InfoContato) AS CONTATO FROM Funcionario F
INNER JOIN ContatoFunc FC
ON F.FuncID = FC.FuncionarioID
WHERE F.FuncID = 11 AND FC.TipoID = 1