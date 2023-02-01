/*
-- AdventureWorks Data Exploration, Sales Management Project
-- Data_cleaning\

-- Clean FACT_InternetSales Table
-- Removed unnecessary columns and renamed columns for easier identification with visualization
-- Calculate days to ship with DATEDIFF
-- Only retrieve OrderDate sales data from the last two years using GETDATE (today's date) for budgeting purposes
-- Ordered by OrderDateKey
*/

SELECT 
  [ProductKey], 
  [OrderDateKey], 
  [DueDateKey], 
  [ShipDateKey], 
  [CustomerKey], 
  --[PromotionKey] do not need,
  --[CurrencyKey] do not need,
  --[SalesTerritoryKey] do not need, 
  [SalesOrderNumber], 
  --[SalesOrderLineNumber] do not need,
  --[RevisionNumber] do not need,
  --[OrderQuantity] do not need,
  --[UnitPrice] do not need,
  --[ExtendedAmount] do not need,
  --[UnitPriceDiscountPct] do not need,
  --[DiscountAmount] do not need,
  --[ProductStandardCost] do not need,
  --[TotalProductCost] do not need,
  [SalesAmount], 
  --[TaxAmt] do not need,
  --[Freight] do not need,
  --[CarrierTrackingNumber] do not need,
  --[CustomerPONumber] do not need,
  [OrderDate], 
  --[DueDate] do not need,
  [ShipDate],
  DATEDIFF(DAY, OrderDate, ShipDate) AS [Days to Ship]
FROM 
  [AdventureWorksDW2019].[dbo].[FactInternetSales]
WHERE
  LEFT (OrderDateKey, 4) >= YEAR(GETDATE()) -2
ORDER BY
  OrderDateKey ASC

