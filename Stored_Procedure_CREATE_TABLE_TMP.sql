CREATE OR ALTER PROCEDURE [dbo].[CREATE_TABLE_TMP]
    @schema as nvarchar(20),
	@tblName as nvarchar(50)
AS
BEGIN
    SET NOCOUNT ON;

	DECLARE @Sql NVARCHAR(MAX)

    Begin
            SET @Sql = 'SELECT * INTO ' + @schema + '.' + @tblName + '_TMP from ' + @schema + '.' + @tblName + ' where 0=1'

            EXEC sp_executesql @Sql
        End
END
GO