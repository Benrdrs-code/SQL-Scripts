/*
Vamos a parte prática.

Ex¹: Aqui estamos fazendo uma consulta da tabela Cargo e colocando dentro de uma variável do tipo Texto. Depois pegamos a variável e colocamos no comando exec e vemos o resultado.

Declarando uma variavel do tipo texto chamada @SQL
*/
DECLARE @SQL VARCHAR(MAX)

/* A variavel irá armazenar um texto com uma consulta sql na tabela Cargo, 
ela retornará o nome e o as atividades do cargo
*/
SET @SQL = ‘SELECT C.Nome, C.Atividades FROM Pessoa.Cargo C ‘

/* executando a variavel que contem um texto dentro*/
EXEC (@SQL)

/*
Ex2: Aqui estamos fazendo uma junção das tabelas cargo e departamento e colocando-as dentro de uma variável do tipo Texto. Depois armazenamos o comando WHERE em outra variável e o valor do orçamento em uma variável do tipo numeric. Após tudo ser concatenado na variável @SQL, executamos e analisamos o resultado.

declaração de variaveis
*/
DECLARE @SQL VARCHAR(MAX)
DECLARE @WHERE VARCHAR(MAX)
DECLARE @ORCAMENTO NUMERIC

/* inner join da tabela cargo com departamento*/
SET @SQL = ‘SELECT C.Nome, C.Atividades, D.Nome, D.Orcamento FROM Pessoa.Cargo C ‘ 
+ ‘INNER JOIN Departamento D ON D.DepartID = C.DepartID ‘

/* condição onde o orçamento for maior ou igual a*/
SET @WHERE = ‘WHERE D.Orcamento >= ‘

/* fazendo a variavel receber o valor de 20 mil*/
SET @ORCAMENTO = 50000.00

/* armazenando na variavel @SQL valores das outras variaveis*/
SET @SQL = @SQL + @WHERE + CONVERT(VARCHAR,@ORCAMENTO)

/* executando tudo que está contido dentro da variavel*/
EXECUTE (@SQL)