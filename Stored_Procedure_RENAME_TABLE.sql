CREATE  OR ALTER PROCEDURE [dbo].[RENAME_TABLE]
    @schema as nvarchar(20),
	@tblName as nvarchar(50)	
AS
BEGIN
    SET NOCOUNT ON;
 
	DECLARE @cmd varchar(400);
	DECLARE @tblNameNew nvarchar(50)

	SET @tblNameNew = @tblName + '_TMP'
	SET @cmd = 'sp_rename ''' + @schema +'.' + @tblNameNew + ''', ''' + @tblName + '''';
    EXEC(@cmd);

END
GO


EXEC  RENAME_TABLE @schema = 'dbo', @tblName = 'newTableName'