SELECT Descricao
FROM TabelaTeste
WHERE LEFT(Descricao, 16) = 'DESCRICAO 900000'


SELECT Descricao
FROM TabelaTeste
WHERE Descricao LIKE 'DESCRICAO 900000%'