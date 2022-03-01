-- tinyint, smallint, int, bigint, decimal, numeric

CREATE SEQUENCE MinhaSequencia
AS INT
START WITH 6
INCREMENT BY 1
MINVALUE 6
MAXVALUE 1000
NO CYCLE    -- Ou CYCLE

---

SELECT NEXT VALUE FOR MinhaSequencia


CREATE TABLE TabelaTeste
(
    Id INT DEFAULT NEXT VALUE FOR MinhaSequencia,
    Descricao VARCHAR(20)
)


INSERT INTO TabelaTeste(Descricao)
VALUES ('Teste 01')

SELECT * FROM TabelaTeste


INSERT INTO TabelaTeste(Descricao)
VALUES ('Teste 02')

SELECT * FROM TabelaTeste