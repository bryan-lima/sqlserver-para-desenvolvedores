ALTER TABLE Categorias
DROP COLUMN Teste   -- Retorno: Erro - The object 'DF__Categoria__Teste__534D60F1' is dependent on column 'Teste'. ALTER TABLE DROP COLUMN Teste failed because one or more objects access this column



ALTER TABLE Categorias
DROP CONSTRAINT DF__Categoria__Teste__534D60F1  -- Retorno: Commands completed successfully

ALTER TABLE Categorias
DROP COLUMN Teste   -- Retorno: Commands completed successfully


SELECT * FROM Categorias