CREATE PROCEDURE [dbo].[TestIt01] @logDateTime Datetime,@logSummary NVARCHAR(64),@logDetails NVARCHAR(Max)
as

SELECT  @logDateTime=ISNULL(@logDateTime,GETUTCDATE())

Print('Test')


GO
