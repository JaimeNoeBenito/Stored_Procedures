CREATE OR ALTER   PROCEDURE [dbo].[APPEND_TABLE]
	@schema1 as nvarchar(20),
	@tblName1 as nvarchar(50),
	@schema2 as nvarchar(20),
	@tblName2 as nvarchar(50)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;
	DECLARE @Sql NVARCHAR(MAX)


    Begin
		SET @Sql = 'INSERT INTO ' + @schema1 + '.' + @tblName1 + 'SELECT * FROM ' + @schema2 + '.' + @tblName2 + ''

        EXEC sp_executesql @Sql
    End
END
GO

exec APPEND_TABLE 'dbo', 'Table1', 'dbo', 'Table12'