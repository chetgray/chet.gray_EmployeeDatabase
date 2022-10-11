USE Employee;
GO

CREATE OR ALTER PROCEDURE dbo.GetEmployeeDataByStartDateAfter
    @StartDate date
AS
SELECT
    FirstName
    , MiddleName
    , LastName
    , "Date of Birth"
    , "Employment Start Date"
    , "Employment End Date"
    , Address_ID
FROM
    dbo.GeneralInfo
WHERE
    @StartDate < CAST("Employment Start Date" as date)
;
GO

EXEC dbo.GetEmployeeDataByStartDateAfter 'Oct 11, 2005';
GO
