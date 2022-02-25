# SQL para Desenvolvedores

Curso disponível na plataforma [desenvolvedor.io](https://desenvolvedor.io/)

## Ambiente

- [Azure Data Studio](https://docs.microsoft.com/pt-br/sql/azure-data-studio/download-azure-data-studio)
- [Instalação do SQL Server (Docker)](https://docs.microsoft.com/pt-br/sql/linux/quickstart-install-connect-docker)


```docker cli
docker run -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=Dev*1234" -p 14033:1433 --name sqlserver -h hostsqlserver -d mcr.microsoft.com/mssql/server:2019-latest
```