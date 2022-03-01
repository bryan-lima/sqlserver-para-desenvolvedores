CREATE FUNCTION Mascarar(@Data VARCHAR(255), @QuantidadeCaracteres INT)
RETURNS VARCHAR(255)
AS
BEGIN
    RETURN LEFT(@Data, @QuantidadeCaracteres) + '**** ****'
END

----

SELECT dbo.Mascarar('BRYAN LIMA', 4);

SELECT dbo.Mascarar(Descricao, 4) FROM Categorias;



----------------------------------------------------------------------------------------------------------------------------

CREATE FUNCTION ContarRegistros()
RETURNS INT
AS
BEGIN
    RETURN (SELECT COUNT(*) FROM Categorias)
END

----

SELECT dbo.ContarRegistros();



----------------------------------------------------------------------------------------------------------------------------

CREATE FUNCTION GetCategoriaById(@Id INT)
RETURNS TABLE
AS
RETURN (SELECT * FROM Categorias WHERE Id = @Id)

----

SELECT * FROM dbo.GetCategoriaById(1);
SELECT * FROM dbo.GetCategoriaById(2);