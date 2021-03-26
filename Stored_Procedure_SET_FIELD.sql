CREATE OR ALTER PROCEDURE [dbo].[SET_FIELD]
	@tblName as nvarchar(50),
	@fieldToSetValue as nvarchar(15)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;
	DECLARE @Sql NVARCHAR(MAX)


    Begin
		SET @Sql = 'UPDATE ' + @tblName + ' SET fieldNameTable = ''' + @fieldToSetValue + ''''
        EXEC sp_executesql @Sql
    End
END
GO

exec SET_FIELD 'tblName', fieldToSetValue'