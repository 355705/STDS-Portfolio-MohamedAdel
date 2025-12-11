-- Active: 1760527093731@@localhost@1433@master
RESTORE DATABASE AdventureWorks2019
FROM DISK = N'/var/opt/mssql/code/AdventureWorks2019.bak'
WITH MOVE 'AdventureWorks2019' TO '/var/opt/mssql/data/AdventureWorks2019.mdf',
     MOVE 'AdventureWorks2019_log' TO '/var/opt/mssql/data/AdventureWorks2019_log.ldf',
     REPLACE;
