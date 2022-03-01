SELECT * FROM Categorias;

SELECT * FROM Cursos;

SELECT CR.Descricao Curso, CA.Descricao Categoria
FROM Cursos CR
INNER JOIN Categorias CA
ON CA.Id = CR.CategoriaId;

SELECT CR.Descricao Categoria, CA.Descricao Curso
FROM Categorias CR
LEFT JOIN Cursos CA
ON CA.CategoriaId = CR.Id;

SELECT CR.Descricao Curso, CA.Descricao Categoria
FROM Cursos CR
RIGHT JOIN Categorias CA
ON CA.Id = CR.CategoriaId;