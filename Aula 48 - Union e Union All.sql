SELECT * FROM Cursos WHERE Id = 1;


SELECT * FROM Cursos WHERE Id = 1
UNION
SELECT * FROM Cursos WHERE Id = 2;


SELECT Descricao FROM Cursos WHERE Id = 1
UNION
SELECT Descricao FROM Categorias WHERE Id = 2
UNION
SELECT 'Valor dinâmico';


SELECT Descricao FROM Cursos WHERE Id = 1
UNION ALL
SELECT Descricao FROM Categorias WHERE Id = 2
UNION ALL
SELECT 'Valor dinâmico';


SELECT Descricao FROM Cursos WHERE Id = 1
UNION ALL
SELECT Descricao FROM Categorias WHERE Id = 2
UNION ALL
SELECT 'Valor dinâmico'
UNION ALL
SELECT 'Valor dinâmico';


SELECT Descricao FROM Cursos WHERE Id = 1
UNION
SELECT Descricao FROM Categorias WHERE Id = 2
UNION
SELECT 'Valor dinâmico'
UNION
SELECT 'Valor dinâmico';