SELECT * FROM Alunos;

/*

    UPDATE NomeTabela
    SET Campo = Valor, Campo1 = Valor1, Campo2 = Campo2 + 'novo valor'
    WHERE Filtro

*/

UPDATE Alunos
SET DataNascimento = GETDATE(), Ativo = 1