/*Lembrando sempre que ao abrir um CASE, tem que se fechar com a cl�usula END.*/

SELECT 
       CASE
                  WHEN <EXPRESS�O L�GICA 1> THEN <RESULTADO DA EXPRESS�O 1>
                  WHEN <EXPRESS�O L�GICA 2> THEN <RESULTADO DA EXPRESS�O 2>
      ELSE
                   <RESULTADO FORA DAS CONDI��ES LISTADA>
      END
FROM <TABELA>

/*
Vamos fazer uma consulta para saber o dia da semana ok?!

Ex1: Aqui usamos a fun��o DATEPART,(para quem nunca viu essa fun��o estou deixando o link do post sobre fun��es de data. ) 
para trazer o dia da semana da data do sistema. Onde dentro de cada WHEN definimos a condi��o a ser atendida  
e dentro do THEN o resultado caso a condi��o seja atendida.

*/
SELECT 
               CASE DATEPART(w, GETDATE()) 
                            WHEN 1 THEN �Domingo�
                            WHEN 2 THEN �Segunda-feira�
                            WHEN 3 THEN �Ter�a-feira�
                            WHEN 4 THEN �Quarta-feira�
                            WHEN 5 THEN �Quinta-feira� 
                            WHEN 6 THEN �Sexta-feira�
                            WHEN 7 THEN �S�bado�
               END AS �Dia da Semana�

/*
Ex2:  Nesse segundo exemplo, vamos fazer um select com uma condi��o de 
reajuste dos sal�rios da tabela de funcion�rios dependendo do cargo que ele assuma.
*/

SELECT 
                 F.NOME_FUNCIONARIO,
                 C.NOME_CARGO,
                 F.SALARIO_FUNC, 
                                      CASE C.ID
                                                           WHEN 1 THEN F.SALARIO_FUNC * 1.06
                                                           WHEN 2 THEN F.SALARIO_FUNC * 1.04
                                                           WHEN 3 THEN F.SALARIO_FUNC * 1.04
                                                           WHEN 4 THEN F.SALARIO_FUNC * 1.03
                                                           WHEN 5 THEN F.SALARIO_FUNC * 1.03
                                     ELSE
                                                          F.SALARIO_FUNC
                                    END AS �SALARIO COM AUMENTO�
FROM FUNCIONARIO F 
INNER JOIN CARGO C 
ON F.FK_IDCARGO = C.ID

/*
Ex3: Vamos fazer um update com a consulta vista no Ex2, ap�s termos visto que o 
CASE fez o reajuste nos sal�rios dos funcion�rios pelo cargo que ele ocupa na consulta, v
amos colocar esses valores por definitivo na tabela.
*/

UPDATE FUNCIONARIO
                          SET SALARIO_FUNC =
                                       CASE C.ID
                                                            WHEN 1 THEN SALARIO_FUNC * 1.06
                                                            WHEN 2 THEN SALARIO_FUNC * 1.04
                                                            WHEN 3 THEN SALARIO_FUNC * 1.04
                                                            WHEN 4 THEN SALARIO_FUNC * 1.03
                                                            WHEN 5 THEN SALARIO_FUNC * 1.03
                                       ELSE
                                                            SALARIO_FUNC
                                      END
FROM FUNCIONARIO F 
INNER JOIN CARGO C 
ON F.FK_IDCARGO = C.ID


