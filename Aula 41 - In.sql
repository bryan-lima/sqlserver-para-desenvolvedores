SELECT * FROM Alunos;

SELECT * FROM Alunos
WHERE Id IN (2, 4);

SELECT * FROM Alunos
WHERE Id IN (SELECT Id FROM Alunos);