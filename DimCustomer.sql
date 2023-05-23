SELECT 
  c.CustomerKey, 
  c.FirstName + CASE WHEN MiddleName IS NULL THEN ' ' ELSE (' ' + MiddleName + ' ') END + LastName AS Fullname, 
  c.BirthDate, 
  CASE c.MaritalStatus WHEN 'M' THEN 'Married' WHEN 'S' THEN 'Single' END AS "Marital Status", 
  -- Suffix,
  CASE c.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'FEMALE' END AS Gender, 
  -- EmailAddress,
  -- YearlyIncome,
  -- TotalChildren,
  -- NumberChildrenAtHome,
  -- Education,
  -- Occupation,
  c.DateFirstPurchase, 
  c.CustomerType, 
  g.ContinentName AS Continent, 
  g.RegionCountryName AS Country, 
  g.StateProvinceName AS Province 
FROM 
  DimCustomer as c 
  LEFT JOIN DimGeography as g ON c.GeographyKey = g.GeographyKey 
ORDER BY 
  CustomerKey
