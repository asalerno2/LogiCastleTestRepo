SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[TestIt01] @logDateTime Datetime,@logSummary NVARCHAR(64),@logDetails NVARCHAR(Max)
as

SELECT  @logDateTime=ISNULL(@logDateTime,GETUTCDATE()) --IF @logDateTime is null then set as utcnow()

Print('Test')

SELECT * FROM [dbo].[activityLog]

GO
