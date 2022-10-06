USE Employee;
GO

SELECT
    Id
    , FirstName
    , MiddleName
    , LastName
    , "Street Address"
    , City
    , "State"
    , Zip
    , "Date of Birth"
    , "Employment Start Date"
    , "Employment End Date"
FROM
    dbo.GeneralInfo
WHERE
    CAST("Employment Start Date" AS date) < '2000-01-01';
GO
