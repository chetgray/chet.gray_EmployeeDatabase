USE Employee;
GO

CREATE OR ALTER PROCEDURE dbo.AddEmployee
    @FirstName nvarchar(255)
    , @MiddleName nvarchar(255)
    , @LastName nvarchar(255)
    , @DateOfBirth date
    , @EmploymentStartDate date
    , @EmploymentEndDate date
    , @StreetAddress nvarchar(255)
    , @City nvarchar(255)
    , @State nvarchar(255)
    , @Zip varchar(9)
AS
DECLARE @Address_ID int;

INSERT INTO dbo.Address (
    "Street Address"
    , City
    , "State"
    , Zip
)
VALUES (
    @StreetAddress
    , @City
    , @State
    , @Zip
);
        
SET @Address_ID = SCOPE_IDENTITY();
    
INSERT INTO dbo.GeneralInfo (
    FirstName
    , MiddleName
    , LastName
    , "Date of Birth"
    , "Employment Start Date"
    , "Employment End Date"
    , Address_ID
)
VALUES (
    @FirstName
    , @MiddleName
    , @LastName
    , @DateOfBirth
    , @EmploymentStartDate
    , @EmploymentEndDate
    , @Address_ID
);
