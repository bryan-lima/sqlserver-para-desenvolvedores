USE DesenvolvedorIO

CREATE TABLE TabelaTeste
(
	Id INT,
	Descricao VARCHAR(80)
)

DECLARE @id INT = 1
DECLARE @p1 INT, @p2 INT, @p3 INT, @p4 INT

WHILE @id <= 200000
BEGIN
	SET @p1 = @id + 200000
	SET @p2 = @id + 400000
	SET @p3 = @id + 600000
	SET @p4 = @id + 800000
	INSERT INTO TabelaTeste (Id, Descricao)
	VALUES
		(@id, 'Descricao ' + CAST(@id AS VARCHAR(7))),
		(@p1, 'Descricao ' + CAST(@p1 AS VARCHAR(7))),
		(@p2, 'Descricao ' + CAST(@p2 AS VARCHAR(7))),
		(@p3, 'Descricao ' + CAST(@p3 AS VARCHAR(7))),
		(@p4, 'Descricao ' + CAST(@p4 AS VARCHAR(7)));
	SET @id = @id + 1
END

SELECT Descricao 
FROM TabelaTeste
WHERE Descricao = 'DESCRICAO 900000'




CREATE INDEX idx_tabelateste_descricao ON TabelaTeste(Descricao)

SELECT Descricao 
FROM TabelaTeste
WHERE Descricao = 'DESCRICAO 900000'
