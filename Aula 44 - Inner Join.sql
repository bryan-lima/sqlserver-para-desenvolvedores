SELECT * FROM Categorias;

SELECT * FROM Cursos;


SELECT * FROM Cursos CR
INNER JOIN Categorias CA 
ON CA.Id = CR.CategoriaId;

SELECT CR.Descricao Curso, CA.Descricao Categoria
FROM Cursos CR
INNER JOIN Categorias CA
ON CA.Id = CR.CategoriaId;