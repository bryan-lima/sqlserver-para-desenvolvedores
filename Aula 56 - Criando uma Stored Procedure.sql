CREATE PROCEDURE PesquisarCategoriaPorId(@Id INT)
AS
BEGIN
    SELECT * FROM Categorias WHERE Id = @Id
END

---

SELECT * FROM dbo.PesquisarCategoriaPorId(1)    -- Retorno: Erro - Invalid object name 'dbo.PesquisarCategoriaPorId'

EXEC dbo.PesquisarCategoriaPorId 1
EXEC dbo.PesquisarCategoriaPorId @Id = 1
EXEC dbo.PesquisarCategoriaPorId @Id = 2



----------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE PersistirDadosEmCategorias(@Descricao VARCHAR(255))
AS
BEGIN
    INSERT INTO Categorias (Descricao, CadastradoEm) VALUES (@Descricao, GETDATE())
END

---

EXEC dbo.PersistirDadosEmCategorias @Descricao = 'Categoria Procedure'

SELECT * FROM Categorias


DROP PROCEDURE PersistirDadosEmCategorias



----------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE PersistirDadosEmCategorias(@Descricao VARCHAR(255))
AS
BEGIN
    IF(@Descricao IS NULL)
    BEGIN
        RAISERROR('Descrição não é válida', 16, 1)
        RETURN 
    END
    INSERT INTO Categorias (Descricao, CadastradoEm) VALUES (@Descricao, GETDATE())
END

---

EXEC dbo.PersistirDadosEmCategorias @Descricao = NULL