SELECT * FROM Categorias;


BEGIN TRANSACTION;      -- Ou BEGIN TRAN;

    UPDATE Categorias
    SET Descricao = UPPER(Descricao)
    WHERE Id > 0;
    GO

    DELETE Categorias
    WHERE Id = 4;
    GO

-- ROLLBACK;
COMMIT;