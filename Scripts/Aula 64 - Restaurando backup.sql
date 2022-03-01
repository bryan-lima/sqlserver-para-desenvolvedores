USE master

RESTORE DATABASE DesenvolvedorIO
FROM DISK = '/var/opt/mssql/data/AulaBackup.bak'
WITH REPLACE    -- Retorno: RESTORE DATABASE successfully