/*
-- AdventureWorks Data Exploration, Sales Management Project
-- Data_cleaning\

-- Clean DIM_Customer Table
-- Removed unnecessary columns and renamed columns for easier identification with visualization
-- Concatenated first and last names into 'Full Name'for unique values
-- Added a Case statement to write out gender for visuals and clarity
-- Joined on GeographyKey to obtain customer city for demographic data from the DimGeography table
-- Ordered by CustomerKey
*/

SELECT 
  [CustomerKey], 
  --[GeographyKey],
  --[CustomerAlternateKey],
  --[Title],
  [FirstName] AS [First Name], 
  --[MiddleName],
  [LastName] AS [Last Name], 
  CONCAT(FirstName, ' ', LastName) AS [Full Name], -- Concatenate First and Last to create Full Name column
  --[NameStyle],
  --[BirthDate],
  --[MaritalStatus],
  --[Suffix],
-- Case statement to display gender as 'Male' or 'Female'
  CASE(Gender) WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender, 
  --[EmailAddress],
  --[YearlyIncome],
  --[TotalChildren],
  --[NumberChildrenAtHome],
  --[EnglishEducation],
  --[SpanishEducation],
  --[FrenchEducation],
  --[EnglishOccupation],
  --[SpanishOccupation],
  --[FrenchOccupation],
  --[HouseOwnerFlag],
  --[NumberCarsOwned],
  --[AddressLine1],
  --[AddressLine2],
  --[Phone],
  [DateFirstPurchase], 
  --[CommuteDistance],
  DimGeography.City AS [Customer City] -- Left Join customer city from geography table
FROM 
  [AdventureWorksDW2019].[dbo].[DimCustomer] 
  LEFT JOIN [AdventureWorksDW2019].[dbo].[DimGeography] ON DimGeography.GeographyKey = DimCustomer.GeographyKey 
ORDER BY 
  CustomerKey ASC -- Order table by CustomerKey

