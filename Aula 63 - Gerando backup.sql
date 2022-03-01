USE DesenvolvedorIO

BACKUP DATABASE DesenvolvedorIO
TO DISK = '/var/opt/mssql/data/AulaBackup.bak'
WITH INIT,
    NAME = 'Backup do banco de dados'   -- Backup do tipo FULL



BACKUP DATABASE DesenvolvedorIO
TO DISK = '/var/opt/mssql/data/AulaBackup-01.bak'
WITH DIFFERENTIAL,
    NAME = 'Backup do banco de dados - Diferencial'   -- Backup do tipo DIFFERENTIAL