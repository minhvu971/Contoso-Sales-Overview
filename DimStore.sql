SELECT 
  StoreKey, 
  g.ContinentName AS Continent, 
  g.RegionCountryName AS Country, 
  g.StateProvinceName AS "State/Province", 
  -- StoreManager,
  StoreType AS Type, 
  StoreName AS Name, 
  Status, 
  -- Zipcode,
  -- ZipcodeExtension,
  StorePhone AS Phone, 
  StoreFax AS Fax, 
  CASE WHEN AddressLine1 IS NOT NULL THEN AddressLine1 ELSE AddressLine2 END AS Address, 
  EmployeeCount AS Employee 
FROM 
  DimStore AS s 
  LEFT JOIN DimGeography AS g ON s.GeographyKey = g.GeographyKey 
WHERE 
  CloseDate < 2007 - 01 - 01 
  OR CloseDate IS NULL 
ORDER BY 
  Continent, 
  Country;
