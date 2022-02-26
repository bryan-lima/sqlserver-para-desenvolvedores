# SQL para Desenvolvedores

Curso disponível na plataforma [desenvolvedor.io](https://desenvolvedor.io/)

## Ambiente

- [Azure Data Studio](https://docs.microsoft.com/pt-br/sql/azure-data-studio/download-azure-data-studio)
- [Instalação do SQL Server (Docker)](https://docs.microsoft.com/pt-br/sql/linux/quickstart-install-connect-docker)


```docker cli
docker run -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=Dev*1234" -p 14033:1433 --name sqlserver -h hostsqlserver -d mcr.microsoft.com/mssql/server:2019-latest
```

## Conteúdo

### Introdução

- Apresentação


### Iniciando no mundo SQL

- O que é SQL?
- O que é SQL Server?
- História do SQL Server
- O que é um modelo relacional?
- O que é um banco de dados?
- O que é uma tabela?
- O que é uma chave primária?
- O que é uma chave estrangeira?
- O que é T-SQL?


### Ambiente

- Instalação do SQL Server
- Instalaçao do SQL Server (Docker)
- Instalação do SSMS
- Instalação do Azure Data Studio


### Hands-On-SQL Básico

- Introdução
- Criando um banco de dados
- Criando uma tabela
- Inserindo registros
- Consultando registros
- Atualizando registros
- Excluindo registros


### Base de conhecimentos

- Introdução
- O que é um índice?
- O que são constraints?
- O que é uma View?
- O que são Stored Procedures?
- O que são Functions?


### Cláusulas e Operadores

- Introdução
- Colocando a mão na massa
- Distinct
- Order By
- Top/Fetch
- Where
- And/Or
- Like
- Max/Min
- Count/Sum
- Group By
- Having
- Operador In
- Operador Between


### Joins

- Introdução
- Inner Join
- Left Join
- Right Join
- Full Join
- Union/Union All


### Transações

- Introdução
- O que é uma transação?
- Criando uma transação
- Save Point



### T-SQL

- Introdução
- Conhecendo as funções
- Criando funções
- Criando uma Stored Procedure
- Criando uma View
- Criando sequências
- Criando um campo novo
- Removendo coluna de uma tabela
- Renomeando objetos


### Backup

- Introdução
- Gerando backup
- Restaurando backup


### Tips & Tricks

- Introdução
- SQL Server Profiler
- Hint NoLOCK
- Plano de execução
- Usando corretamente o índice
- Desfragmentando índices
- Contador de registros eficiente
- CTE-Common Table Expression

### Encerramento

- Agradecimentos