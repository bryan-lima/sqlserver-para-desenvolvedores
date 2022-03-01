DROP TABLE Alunos;

CREATE TABLE Alunos
(
    Id INT PRIMARY KEY IDENTITY,
    Nome VARCHAR(80) NOT NULL,
    Cpf CHAR(11) NOT NULL,
    Cidade VARCHAR(60) NOT NULL,
    Estado CHAR(2) NOT NULL,
    DataNascimento DATE,
    Ativo BIT DEFAULT 1
);

CREATE TABLE Categorias
(
    Id INT PRIMARY KEY IDENTITY,
    Descricao VARCHAR(80) NOT NULL,
    CadastradoEm DATETIME DEFAULT GETDATE()
);

CREATE TABLE Cursos
(
    Id INT PRIMARY KEY IDENTITY,
    CategoriaId INT NOT NULL,
    Descricao VARCHAR(80) NOT NULL,
    TotalHoras INT NOT NULL,
    Valor DECIMAL(12, 2) NOT NULL DEFAULT 0,
    CadastradoEm DATETIME DEFAULT GETDATE(),
    Ativo BIT DEFAULT 1,
    CONSTRAINT FK_CategoriaId FOREIGN KEY (CategoriaId) REFERENCES Categorias(Id)
);

CREATE TABLE AlunosCursos
(
    AlunoId INT NOT NULL,
    CursoId INT NOT NULL,
    CadastradoEm DATETIME DEFAULT GETDATE(),
    CONSTRAINT PK_AlunosCursos PRIMARY KEY(AlunoId, CursoId),
    CONSTRAINT FK_AlunoId FOREIGN KEY (AlunoId) REFERENCES Alunos(Id),
    CONSTRAINT FK_CursoId FOREIGN KEY (CursoId) REFERENCES Cursos(Id),
);



INSERT INTO Alunos (Nome, Cpf, Cidade, Estado, DataNascimento)
VALUES 
    ('Rafael', '00000000001', 'Aracaju', 'SE', '2000-01-01'),
    ('Eduardo', '00000000002', 'São Paulo', 'SP', '2000-01-02'),
    ('Bruno', '00000000003', 'São Paulo', 'SP', '2000-01-03'),
    ('Tiago', '00000000004', 'Rio de Janeiro', 'RJ', '2000-01-04'),
    ('Heloysa', '00000000005', 'Aracaju', 'SE', '2000-01-05');


INSERT INTO Categorias (Descricao)
VALUES 
    ('Acesso a Dados'),
    ('Segurança'),
    ('WEB');


INSERT INTO Cursos (Descricao, CategoriaId, TotalHoras, Valor)
VALUES
    ('EF Core', 1, 17, 300),
    ('SQL Server', 1, 5, 200),
    ('ASP.NET Core Enterprise', 3, 5, 200),
    ('Fundamentos de IdentityServer4', 2, 5, 200);


INSERT INTO AlunosCursos (AlunoId, CursoId)
VALUES 
    (1, 1),
    (1, 2),
    (2, 3),
    (3, 1),
    (4, 4),
    (5, 1),
    (5, 2),
    (5, 3);


SELECT * FROM Categorias;