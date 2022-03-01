SELECT * FROM Categorias;

SELECT Descricao FROM Categorias;

SELECT LEFT(Descricao, 4), Descricao FROM Categorias;

SELECT RIGHT(Descricao, 4), Descricao FROM Categorias;

SELECT SUBSTRING(Descricao, 2, 5), Descricao FROM Categorias;



SELECT 'BRYAN ' + ' LIMA';  -- Resultado: BRYAN  LIMA

SELECT 'BRYAN ' + ' LIMA' + NULL;  -- Resultado: NULL

SELECT CONCAT('BRYAN', ' LIMA');

SELECT CONCAT(Descricao, ' TESTE') FROM Categorias;



SELECT ISNULL(NULL, 'DEFAULT');

SELECT ISNULL(Descricao, 'SEM DESCRIÇÃO') FROM Categorias;



SELECT COALESCE(NULL, NULL, NULL, 'DEFAULT');   -- Retorno: DEFAULT

SELECT COALESCE(NULL, NULL, NULL, 'PRIMEIRO', 'SEGUNDO');   -- Retorno: PRIMEIRO

SELECT 1 / 0;   -- Retorno: Erro - Divide by zero error encountered

SELECT 1 / NULL;    -- Retorno: NULL

SELECT COALESCE(NULL, 1);   -- Retorno: 1

SELECT 2 * COALESCE(NULL, 1);   -- Retorno: 2



SELECT IIF(1 > 0, 'MAIOR QUE ZERO', 'MENOR QUE ZERO');

SELECT IIF(-1 > 0, 'MAIOR QUE ZERO', 'MENOR QUE ZERO');

SELECT IIF(LEN(Descricao) > 5, 'MAIOR QUE CINCO', 'MENOR QUE CINCO'), Descricao FROM Categorias;



SELECT GETDATE();

SELECT CAST(GETDATE() AS DATE), CAST(GETDATE() AS TIME);