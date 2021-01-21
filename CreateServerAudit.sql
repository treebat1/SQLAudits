USE [master]
GO

/****** Object:  Audit [Audit-Internal-CLDBA-DEV]    Script Date: 7/15/2019 4:46:45 PM ******/
CREATE SERVER AUDIT [Audit-Internal-CLDBA-DEV]
TO FILE 
(	FILEPATH = N'D:\SQLAudit\'
	,MAXSIZE = 10 MB
	,MAX_ROLLOVER_FILES = 10
	,RESERVE_DISK_SPACE = OFF
)
WITH
(	QUEUE_DELAY = 1000
	,ON_FAILURE = CONTINUE
	,AUDIT_GUID = 'd6c0ca36-e139-4ed2-b53a-8f1df1b87fef'
)
WHERE ([session_server_principal_name]<>'ignite' AND [session_server_principal_name]<>'UBOC-AD\CHDC')
ALTER SERVER AUDIT [Audit-Internal-CLDBA-DEV] WITH (STATE = ON)
GO


