USE Employee;
GO

INSERT INTO dbo.GeneralInfo
    (  FirstName, MiddleName, LastName    , "Street Address"     , City         , "State", Zip    , "Date of Birth", "Employment Start Date", "Employment End Date")
VALUES
    (  'Jim'    , null      , 'Halpert'   , '120 Clarendon Drive', 'Bakersfield', 'CA'   , '93399', '1978-10-01'   , '1999-01-19'           , '2022-07-18')
    , ('Janet'  , null      , 'Levinson'  , '9902 Boyd Plaza'    , 'Baltimore'  , 'MD'   , '21281', '1967-06-29'   , '2020-12-17'           , null)
    , ('Karen'  , null      , 'Filippelli', '59 Vernon Parkway'  , 'Las Vegas'  , 'NV'   , '89115', '1979-02-25'   , '2005-08-03'           , '2022-04-02')
;
GO

SELECT * FROM dbo.GeneralInfo;
GO
