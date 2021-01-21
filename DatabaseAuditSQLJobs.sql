-- Move to the target database.
USE msdb ;
GO
-- Create the database audit specification.
CREATE DATABASE AUDIT SPECIFICATION AuditJobModifications
FOR SERVER AUDIT [Audit-20130429-162927]
ADD (INSERT, UPDATE, DELETE
     ON dbo.sysjobs BY dbo ),
ADD (INSERT, UPDATE, DELETE
     ON dbo.sysjobsteps BY dbo )
WITH (STATE = ON) ;
GO