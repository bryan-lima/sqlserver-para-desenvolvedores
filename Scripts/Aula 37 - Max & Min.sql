SELECT * FROM Alunos;


SELECT MAX(Id) FROM Alunos;

SELECT MIN(Id) FROM Alunos;

SELECT * FROM Alunos WHERE Id = (SELECT MAX(Id) FROM Alunos);