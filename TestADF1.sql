--ASMOD4321
/****** Object:  StoredProcedure [dbo].[LogIt]    Script Date: 21/09/2022 4:09:25 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[TestIt] @logDateTime Datetime,@logSummary NVARCHAR(64),@logDetails NVARCHAR(Max)
as

SELECT  @logDateTime=ISNULL(@logDateTime,GETUTCDATE()) --IF @logDateTime is null then set as utcnow()
--BEGIN
--    Print('Test')
--END
SELECT * FROM [dbo].[activityLog]

GO
