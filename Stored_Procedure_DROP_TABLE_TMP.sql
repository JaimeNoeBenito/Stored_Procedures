CREATE OR ALTER   PROCEDURE [dbo].[DROP_TABLE_TMP]
	@schema as nvarchar(20),
    @tblName as nvarchar(50)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;

	DECLARE @Sql NVARCHAR(MAX)

    Begin
            SET @Sql = 'DROP TABLE ' + @schema + '.' + @tblName + '_TMP'

            EXEC sp_executesql @Sql
        End
END
GO