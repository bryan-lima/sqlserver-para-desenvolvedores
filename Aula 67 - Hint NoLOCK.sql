SELECT * FROM Categorias


BEGIN TRANSACTION
    UPDATE Categorias
    SET Descricao = 'Teste com NOLOCK'
    WHERE Id = 7



-- Selects em outra sessão
SELECT * FROM Categorias    -- Não é retornado os valores devido bloqueio em andamento pela transação acima

SELECT * FROM Categorias WITH (NOLOCK)  -- Retorna os valores (já com as mudanças aplicadas) mesmo que a transação acima ainda não tenha sido finalizada