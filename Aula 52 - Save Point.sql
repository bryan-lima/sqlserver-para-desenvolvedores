SELECT * FROM Categorias


BEGIN TRANSACTION

    INSERT INTO Categorias (Descricao, CadastradoEm)
    VALUES 
        ('Categoria Nova 1', GETDATE()),
        ('Categoria Nova 2', GETDATE())
    GO

    SAVE TRANSACTION AtualizacaoPoint

    UPDATE Categorias
    SET Descricao = 'Aplicação WEB'
    WHERE Descricao = 'WEB'
    GO

    ROLLBACK TRANSACTION AtualizacaoPoint

COMMIT