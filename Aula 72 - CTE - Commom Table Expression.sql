USE DesenvolvedorIO;

CREATE TABLE Produtos
(
	Id INT IDENTITY PRIMARY KEY,
	Descricao VARCHAR(100)
)
GO


CREATE TABLE Pedidos
(
	Id INT IDENTITY PRIMARY KEY,
	Data DATE,
	Observacao VARCHAR(100)
)
GO


CREATE TABLE PedidoItens
(
	Id INT IDENTITY PRIMARY KEY,
	PedidoId INT,
	ProdutoId INT,
	Quantidade INT,
	Valor DECIMAL(12, 2),
	FOREIGN KEY(PedidoId) REFERENCES Pedidos(Id),
	FOREIGN KEY(ProdutoId) REFERENCES Produtos(Id),
)
GO


DECLARE @Produtos INT = 1 
WHILE @Produtos <= 50
BEGIN  
  INSERT INTO Produtos (Descricao) 
  VALUES ('PRODUTO ' + CAST(@Produtos AS VARCHAR));
  SET @Produtos = @Produtos+1
END 

DECLARE @Pedidos INT = 1 
DECLARE @Itens INT = 1 
WHILE @Pedidos <= 1000
BEGIN  
  INSERT INTO Pedidos (Data, Observacao) 
  VALUES (GETDATE(), 'OBSERVACAO ' + CAST(@Pedidos AS VARCHAR));
  WHILE @Itens <= 50
  BEGIN
	INSERT INTO PedidoItens (PedidoId, ProdutoId, Quantidade, Valor)
	VALUES (@Pedidos, @Itens, 1, 1);
	SET @Itens = @Itens + 1;
  END
  SET @Itens = 1;
  SET @Pedidos = @Pedidos + 1
END 
GO

CREATE NONCLUSTERED INDEX idx_PedidoItens_Pedido_Id
ON  PedidoItens (PedidoId)
INCLUDE (ProdutoId, Quantidade)
GO


-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SELECT I.ProdutoId, SUM(I.Quantidade) Total
FROM PedidoItens I
INNER JOIN Pedidos P ON I.PedidoId = P.Id
GROUP BY I.ProdutoId
ORDER BY I.ProdutoId


SELECT Prod.Descricao, I.ProdutoId, SUM(I.Quantidade) Total
FROM PedidoItens I
INNER JOIN Pedidos P ON I.PedidoId = P.Id
INNER JOIN Produtos Prod ON Prod.Id = I.ProdutoId
GROUP BY Prod.Descricao, I.ProdutoId
ORDER BY I.ProdutoId
GO



WITH Consulta (Codigo, Quantidade) AS (
	SELECT I.ProdutoId, SUM(I.Quantidade) Total
	FROM PedidoItens I
	INNER JOIN Pedidos P ON I.PedidoId = P.Id
	GROUP BY I.ProdutoId
)

SELECT Prod.Descricao, C.Codigo, C.Quantidade
FROM Consulta C
INNER JOIN Produtos Prod ON Prod.Id = C.Codigo
ORDER BY C.Codigo