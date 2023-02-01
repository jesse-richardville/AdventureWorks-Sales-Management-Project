/*
-- AdventureWorks Data Exploration Project
-- import_restore_update_data.sql
-- Skills used: update data with SQL script
-- Download and restore sample data for transformation and analysis 
*/

-- Download Data to restore database (.bak files) from Microsoft using SMSS 2019
https://learn.microsoft.com/en-us/sql/samples/adventureworks-install-configure?view=sql-server-ver15&tabs=ssms

[AdventureWorksDW2019.bak](https://github.com/Microsoft/sql-server-samples/releases/download/adventureworks/AdventureWorksDW2019.bak)
[AdventureWorksLT2019.bak](https://github.com/Microsoft/sql-server-samples/releases/download/adventureworks/AdventureWorksLT2019.bak)

-- Update data using the following updated SQL script:
https://github.com/techtalkcorner/SampleDemoFiles/blob/master/Database/AdventureWorks/Update_AdventureWorksDW_Data.sql


-- View data after executing script update to check dates
/****** Script for SelectTopNRows command from SSMS  ******/

-- View top 1000 rows of DimDate for review
SELECT TOP (1000) [DateKey]
      ,[FullDateAlternateKey]
      ,[DayNumberOfWeek]
      ,[EnglishDayNameOfWeek]
      ,[SpanishDayNameOfWeek]
      ,[FrenchDayNameOfWeek]
      ,[DayNumberOfMonth]
      ,[DayNumberOfYear]
      ,[WeekNumberOfYear]
      ,[EnglishMonthName]
      ,[SpanishMonthName]
      ,[FrenchMonthName]
      ,[MonthNumberOfYear]
      ,[CalendarQuarter]
      ,[CalendarYear]
      ,[CalendarSemester]
      ,[FiscalQuarter]
      ,[FiscalYear]
      ,[FiscalSemester]
  FROM [AdventureWorksDW2019].[dbo].[DimDate]

  --View data by calendar year to make sure data is up to date (2010-2022)
  SELECT DISTINCT CalendarYear
	  FROM [AdventureWorksDW2019].[dbo].[DimDate]
