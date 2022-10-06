IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'Employee')
CREATE DATABASE Employee;
GO

USE Employee;
GO

IF OBJECT_ID('dbo.GeneralInfo', 'U') IS NOT NULL
DROP TABLE dbo.GeneralInfo;
GO

CREATE TABLE dbo.GeneralInfo (
    Id int IDENTITY(1, 1) NOT NULL PRIMARY KEY
    , FirstName nvarchar(255)
    , MiddleName nvarchar(255)
    , LastName nvarchar(255)
    , "Street Address" nvarchar(255)
    , City nvarchar(255)
    , "State" nvarchar(255)
    , Zip varchar(9)
    , "Date of Birth" nvarchar(255)
    , "Employment Start Date" nvarchar(255)
    , "Employment End Date" nvarchar(255)
);
GO

INSERT INTO dbo.GeneralInfo
    (  FirstName  , MiddleName, LastName , "Street Address"           , City           , "State", Zip    , "Date of Birth", "Employment Start Date", "Employment End Date")
VALUES
    (  'Michael'  , 'Gary'    , 'Scott'  , '9902 Boyd Plaza'          , 'Baltimore'    , 'MD'   , '21281', '1965-03-15'   , '1999-07-10'           , '2022-02-28')
    , ('Andrew'   , 'Baines'  , 'Bernard', '387 Hermina Terrace'      , 'Baton Rouge'  , 'LA'   , '70883', '1973-01-24'   , '2004-06-18'           , '2022-03-26')
    , ('Pamela'   , 'Morgan'  , 'Beesly' , '120 Clarendon Drive'      , 'Bakersfield'  , 'CA'   , '93399', '1979-03-25'   , '2004-08-25'           , '2022-08-27')
    , ('Kelly'    , 'Erin'    , 'Hannon' , '0 Doe Crossing Park'      , 'Raleigh'      , 'NC'   , '27626', '1984-05-01'   , '2012-04-04'           , null)
    , ('Kevin'    , null      , 'Malone' , '56 Cambridge Lane'        , 'San Francisco', 'CA'   , '94159', '1968-06-01'   , '2002-01-07'           , '2022-03-23')
    , ('Catherine', null      , 'Simms'  , '1628 Hollow Ridge Terrace', 'Chattanooga'  , 'TN'   , '37450', '1973-03-01'   , '2009-03-01'           , null)
    , ('Stanley'  , null      , 'Hudson' , '0235 Buhler Trail'        , 'Wichita'      , 'KS'   , '67236', '1951-07-14'   , '1996-01-09'           , '2022-01-13')
    , ('Peter'    , null      , 'Miller' , '2 Katie Crossing'         , 'Syracuse'     , 'NY'   , '13210', '1985-03-31'   , '2021-12-09'           , null)
;
GO

SELECT * FROM dbo.GeneralInfo;
GO
