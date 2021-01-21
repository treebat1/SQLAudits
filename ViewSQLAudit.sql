SELECT event_time, server_instance_name, succeeded, session_id, session_server_principal_name, database_name, object_name, statement --, *
FROM sys.fn_get_audit_file 
('D:\SQLAudit\*',default,default)
--where --statement not like '%execute as%'
--and 
--event_time > '2019-08-01 00:00'
--and statement not like '%restore%only%'
--and statement <> ''
order by 1 desc, 2 desc


--Testing audit is working.
/*
EXEC master..sp_addsrvrolemember @loginame = N'ignite', @rolename = N'bulkadmin'
GO

EXEC master..sp_dropsrvrolemember @loginame = N'ignite', @rolename = N'bulkadmin'
GO
*/
