SELECT 
  DateKey, 
  FullDateLabel AS Date, 
  -- DateDescription,
  CalendarYear AS Year, 
  -- CalendarYearLabel,
  -- CalendarHalfYear,
  -- CalendarHalfYearLabel,
  -- CalendarQuarter,
  CalendarQuarterLabel AS Quarter, 
  -- CalendarMonth,
  LEFT(CalendarMonthLabel, 3) AS Month, 
  -- CalendarWeek,
  -- CalendarWeekLabel,
  -- CalendarDayofWeekLabel,
  -- FiscalYear,
  -- FiscalYearLabel,
  IsWorkDay, 
  -- IsHoliday, 
  -- HolidayName, 
  EuropeSeason, 
  NorthAmericaSeason, 
  AsiaSeason 
FROM 
  DimDate 
WHERE 
  YEAR(DateKey) IN (2007, 2008, 2009) 
ORDER BY 
  Datekey;
