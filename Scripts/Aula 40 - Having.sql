SELECT * FROM Alunos;

SELECT Cidade, Estado, COUNT(*) Total FROM Alunos
GROUP BY Cidade, Estado;

SELECT Cidade, Estado, COUNT(*) Total FROM Alunos
GROUP BY Cidade, Estado
HAVING COUNT(*) > 1;