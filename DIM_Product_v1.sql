/*
-- AdventureWorks Data Exploration, Sales Management Project
-- Data_cleaning\

-- Clean DIM_Product Table
-- Removed unnecessary columns and renamed columns for easier identification with visualization
-- Abbreviated dbo.DimProduct AS p to shorten the script, similarly dbo.DimProductSubcategory AS ps,
-- and dbo.DimProductCategory AS pc (in case these values are needed by the stakeholder, Steven)
-- Joined ProductCategory and ProductSubCategory dimension tables
-- Created Sub Category column from EnglishProductSubcategoryName table 
-- Created Product Category column from EnglishProductCategoryName table
-- Removed status NULL values and replaced with 'Outdated' for relevancy
-- Ordered by ProductKey
*/

SELECT 
  p.[ProductKey], 
  p.[ProductAlternateKey] AS [Product Code], 
  --[ProductSubcategoryKey] do not need,
  --[WeightUnitMeasureCode] do not need,
  --[SizeUnitMeasureCode] do not need,
  p.[EnglishProductName] AS [Product Name], 
  ps.EnglishProductSubcategoryName AS [Sub Category], -- Joined from Product SubCategory Table
  pc.EnglishProductCategoryName AS [Product Category],  -- Joined from Product Category Table
  --[SpanishProductName] do not need,
  --[FrenchProductName] do not need,
  --[StandardCost] do not need,
  --[FinishedGoodsFlag] do not need,
  p.[Color] AS [Product Color], 
  --[SafetyStockLevel] do not need,
  --[ReorderPoint] do not need,
  --[ListPrice] do not need,
  p.[Size] AS [Product Size], 
  --[SizeRange] do not need,
  --[Weight] do not need,
  --[DaysToManufacture] do not need,
  p.[ProductLine] AS [Product Line], 
  --[DealerPrice] do not need,
  --[Class] do not need,
  --[Style] do not need,
  p.[ModelName] AS [Model], 
  --[LargePhoto] do not need,
  p.[EnglishDescription] AS [Description], 
  --[FrenchDescription] do not need,
  --[ChineseDescription] do not need,
  --[ArabicDescription] do not need,
  --[HebrewDescription] do not need,
  --[ThaiDescription] do not need,
  --[GermanDescription] do not need,
  --[JapaneseDescription] do not need,
  --[TurkishDescription] do not need,
  --[StartDate] do not need,
  --[EndDate] do not need,
  ISNULL (p.Status, 'Outdated') AS [Product Status]
FROM 
  [dbo].[DimProduct] AS p
  LEFT JOIN dbo.DimProductSubcategory AS ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey
  LEFT JOIN dbo.DimProductCategory AS pc ON ps.ProductCategoryKey = pc.ProductCategoryKey
ORDER BY
  p.ProductKey ASC