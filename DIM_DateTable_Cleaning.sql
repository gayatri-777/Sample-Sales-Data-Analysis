/****** Script for SelectTopNRows command from SSMS  ******/
-- Cleansing the Dim_Date table
SELECT 
  [DateKey] AS Date, 
  [FullDateAlternateKey] 
  --,[DayNumberOfWeek]
  , 
  [EnglishDayNameOfWeek] AS Day 
  --,[SpanishDayNameOfWeek]
  --,[FrenchDayNameOfWeek]
  --,[DayNumberOfMonth]
  --,[DayNumberOfYear]
  , 
  [WeekNumberOfYear] AS Week, 
  [EnglishMonthName] AS Month
  --,[SpanishMonthName]
  --,[FrenchMonthName]
  , 
  LEFT([EnglishMonthName], 3) AS MonthSrt, 
  [MonthNumberOfYear] AS MonthNo, 
  [CalendarQuarter] AS Quater, 
  [CalendarYear] AS Year 
  --,[CalendarSemester]
  --,[FiscalQuarter]
  --,[FiscalYear]
  , 
  [FiscalSemester] 
FROM 
  [AdventureWorksDW2019].[dbo].[DimDate]
Where  CalendarYear >= 2019.
