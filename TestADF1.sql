--ASMOD4321
/****** Object:  StoredProcedure [dbo].[LogIt]    Script Date: 21/09/2022 4:09:25 PM ******/
SET ANSI_NULLS ON
GO



SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[LogIt] @logDateTime Datetime,@logSummary NVARCHAR(64),@logDetails NVARCHAR(Max)
as



SELECT  @logDateTime=ISNULL(@logDateTime,GETUTCDATE()) --IF @logDateTime is null then set as utcnow()
--BEGIN
--    Print('Test')
--END




INSERT INTO [dbo].[activityLog]
           ([logSource]
           ,[logSummary]
           ,[logLevel],
           [logDetails]
           )
     VALUES
           ('source'
           ,@logSummary
           ,0
           ,@logDetails
           )



--DECLARE @MySmallDateTime smalldatetime = CURRENT_TIMESTAMP;
--DECLARE @MyDateTime datetime = GETUTCDATE();
--EXECUTE [dbo].[LogIt] @MyDateTime ,"logSummary","logDetails"
--EXECUTE [dbo].[LogIt] "EventName" ,"20220919T04:52" ,"EventDetail"




GO
