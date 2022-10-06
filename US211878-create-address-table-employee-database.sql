USE Employee;
GO

IF OBJECT_ID('dbo."Address"', 'U') IS NULL
CREATE TABLE dbo."Address" (
    Address_ID int IDENTITY NOT NULL PRIMARY KEY
    , "Street Address" nvarchar(255)
    , City nvarchar(255)
    , "State" nvarchar(255)
    , Zip varchar(9)
);
GO

INSERT INTO dbo."Address" (
    "Street Address"
    , City
    , "State"
    , Zip
)
SELECT DISTINCT
    "Street Address"
    , City
    , "State"
    , Zip
FROM
    dbo.GeneralInfo gi
WHERE
    NOT EXISTS (
        SELECT
            "Street Address"
            , City
            , "State"
            , Zip
        FROM
            dbo."Address" a
        WHERE
            a."Street Address" = gi."Street Address"
            AND a.City = gi.City
            AND a."State" = gi."State"
            AND a.Zip = gi.Zip
    )
;
GO

ALTER TABLE dbo.GeneralInfo
ADD Address_ID int FOREIGN KEY REFERENCES dbo."Address"(Address_ID);
GO

UPDATE dbo.GeneralInfo
SET Address_ID = a.Address_ID
FROM dbo."Address" a
WHERE
    dbo.GeneralInfo."Street Address" = a."Street Address"
    AND dbo.GeneralInfo.City = a.City
    AND dbo.GeneralInfo."State" = a."State"
    AND dbo.GeneralInfo.Zip = a.Zip
;
GO

ALTER TABLE dbo.GeneralInfo
DROP COLUMN
    "Street Address"
    , City
    , "State"
    , Zip
;
GO

SELECT * FROM dbo."Address";
SELECT * FROM dbo.GeneralInfo;
GO
