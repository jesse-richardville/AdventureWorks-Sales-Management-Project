/*
-- AdventureWorks Data Exploration, Sales Management Project
-- Data_cleaning\

-- Clean DIM_Date Table
-- Removed unnecessary columns and renamed columns for easier identification with visualization
-- Added abbreviated month column (MonthShort) from EnglishMonthName
-- Only retrieved data after 2020
-- Ordered by DateKey
*/

SELECT [DateKey],
      [FullDateAlternateKey] AS Date,
      --[DayNumberOfWeek] don't need,
      [EnglishDayNameOfWeek] AS Day,
      --[SpanishDayNameOfWeek] don't need,
      --[FrenchDayNameOfWeek] don't need,
      --[DayNumberOfMonth] don't need,
      --[DayNumberOfYear] don't need,
      [WeekNumberOfYear] AS WeekNo,
      [EnglishMonthName] AS Month,
	  LEFT([EnglishMonthName], 3) AS MonthShort,
      --[SpanishMonthName] don't need,
      --[FrenchMonthName] don't need,
      [MonthNumberOfYear] AS MonthNo,
      [CalendarQuarter] AS Quarter,
      [CalendarYear] AS Year
      --[CalendarSemester] don't need,
      --[FiscalQuarter] don't need,
      --[FiscalYear] don't need,
      --[FiscalSemester] don't need,
FROM 
	[AdventureWorksDW2019].[dbo].[DimDate]
WHERE
    CalendarYear > 2020
ORDER BY 
  DateKey ASC