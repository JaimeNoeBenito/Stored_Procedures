CREATE OR ALTER PROCEDURE [dbo].[RUN_SQL]
	@query as nvarchar(200)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;
	DECLARE @Sql NVARCHAR(MAX)


    Begin
		SET @Sql =  @query
        EXEC sp_executesql @Sql
    End
END
GO

exec RUN_SQL 'ALTER TABLE dbo.tabl1 ALTER COLUMN PK_Field  varchar(25) NULL'