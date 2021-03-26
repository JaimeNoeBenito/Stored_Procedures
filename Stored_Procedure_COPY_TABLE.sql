CREATE OR ALTER PROCEDURE [dbo].[COPY_TABLE]
	@tblName_Out as nvarchar(50),
	@tblName_In as nvarchar(50)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;
	DECLARE @Sql NVARCHAR(MAX)


    Begin
		SET @Sql = 'INSERT INTO ' + @tblName_Out + ' SELECT * FROM ' + @tblName_In + ''
        EXEC sp_executesql @Sql
            
    End
END
GO