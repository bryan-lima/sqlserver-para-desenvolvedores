SELECT * FROM Alunos;


SELECT * FROM Alunos
WHERE Id >= 3 AND Nome = 'Bruno';

SELECT * FROM Alunos
WHERE Id >= 3 AND (Nome = 'Bruno' OR Nome = 'Heloysa');