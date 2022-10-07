USE Employee;
GO

-- Make Pete homeless
UPDATE dbo.GeneralInfo
SET
    Address_ID = NULL
WHERE
    FirstName = 'Peter'
    AND LastName = 'Miller'
;
GO

-- All employees with an address.
SELECT
    gi.FirstName
    , gi.MiddleName
    , gi.LastName
    , gi."Date of Birth"
    , gi."Employment Start Date"
    , gi."Employment End Date"
    , a."Street Address"
    , a.City
    , a."State"
    , a.Zip
FROM
    dbo.GeneralInfo gi
    INNER JOIN dbo."Address" a
        ON gi.Address_ID = a.Address_ID
;
GO
