/*
Vamos a parte pr�tica.

Ex�: Aqui estamos fazendo uma consulta da tabela Cargo e colocando dentro de uma vari�vel do tipo Texto. Depois pegamos a vari�vel e colocamos no comando exec e vemos o resultado.

Declarando uma variavel do tipo texto chamada @SQL
*/
DECLARE @SQL VARCHAR(MAX)

/* A variavel ir� armazenar um texto com uma consulta sql na tabela Cargo, 
ela retornar� o nome e o as atividades do cargo
*/
SET @SQL = �SELECT C.Nome, C.Atividades FROM Pessoa.Cargo C �

/* executando a variavel que contem um texto dentro*/
EXEC (@SQL)

/*
Ex2: Aqui estamos fazendo uma jun��o das tabelas cargo e departamento e colocando-as dentro de uma vari�vel do tipo Texto. Depois armazenamos o comando WHERE em outra vari�vel e o valor do or�amento em uma vari�vel do tipo numeric. Ap�s tudo ser concatenado na vari�vel @SQL, executamos e analisamos o resultado.

declara��o de variaveis
*/
DECLARE @SQL VARCHAR(MAX)
DECLARE @WHERE VARCHAR(MAX)
DECLARE @ORCAMENTO NUMERIC

/* inner join da tabela cargo com departamento*/
SET @SQL = �SELECT C.Nome, C.Atividades, D.Nome, D.Orcamento FROM Pessoa.Cargo C � 
+ �INNER JOIN Departamento D ON D.DepartID = C.DepartID �

/* condi��o onde o or�amento for maior ou igual a*/
SET @WHERE = �WHERE D.Orcamento >= �

/* fazendo a variavel receber o valor de 20 mil*/
SET @ORCAMENTO = 50000.00

/* armazenando na variavel @SQL valores das outras variaveis*/
SET @SQL = @SQL + @WHERE + CONVERT(VARCHAR,@ORCAMENTO)

/* executando tudo que est� contido dentro da variavel*/
EXECUTE (@SQL)