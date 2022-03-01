SELECT * FROM Cursos;

SELECT * FROM Categorias;


CREATE VIEW vwCursos
AS
SELECT C.Descricao, CA.Descricao Categoria 
FROM Cursos C 
INNER JOIN Categorias CA 
ON C.CategoriaId = CA.Id

---

SELECT * FROM vwCursos

SELECT * FROM vwCursos
WHERE Descricao = 'EF Core'


DROP VIEW vwCursos



----------------------------------------------------------------------------------------------------------------------------

CREATE VIEW vwCursos
AS
SELECT C.Descricao, CA.Descricao Categoria 
FROM Cursos C 
INNER JOIN Categorias CA 
ON C.CategoriaId = CA.Id

ALTER VIEW vwCursos
AS
SELECT C.Descricao, CA.Descricao Categoria, CA.CadastradoEm
FROM Cursos C 
INNER JOIN Categorias CA 
ON C.CategoriaId = CA.Id

---

SELECT * FROM vwCursos