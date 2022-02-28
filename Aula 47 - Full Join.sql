SELECT * FROM Categorias;

SELECT * FROM Cursos;


SELECT CR.Descricao Curso, CA.Descricao Categoria
FROM Cursos CR
RIGHT JOIN Categorias CA
ON CA.Id = CR.CategoriaId;

SELECT CR.Descricao Curso, CA.Descricao Categoria
FROM Cursos CR
FULL JOIN Categorias CA
ON CA.Id = (CR.CategoriaId + 4);