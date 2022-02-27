SELECT * FROM Alunos;

SELECT Cidade, Estado FROM Alunos;

SELECT Cidade, Estado FROM Alunos
GROUP BY Cidade, Estado;

SELECT Cidade, Estado, COUNT(*) FROM Alunos
GROUP BY Cidade, Estado;