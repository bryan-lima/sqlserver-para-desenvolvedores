ALTER TABLE Categorias
ADD Teste VARCHAR(100)

SELECT * FROM Categorias



EXEC sp_rename 'dbo.Categorias.Teste', 'Observacao', 'COLUMN'

SELECT * FROM Categorias



SELECT * FROM TabelaTeste

EXEC sp_rename 'dbo.TabelaTeste', 'TabelaAlterada'

SELECT * FROM TabelaAlterada