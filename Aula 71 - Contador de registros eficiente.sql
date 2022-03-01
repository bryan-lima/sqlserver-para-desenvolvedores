SET STATISTICS IO, TIME ON

SELECT COUNT(*) FROM TabelaTeste WITH (NOLOCK)

SELECT SUM(S.row_count) FROM sys.dm_db_partition_stats S
WHERE OBJECT_NAME(object_id) = 'TabelaTeste'
AND S.index_id IN (0, 1)