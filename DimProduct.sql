SELECT 
  ProductKey, 
  ProductLabel AS Label, 
  pc.ProductCategoryName AS Category, 
  ProductName AS Name, 
  -- ProductDescription,
  -- ProductSubCategoryName,
  Manufacturer, 
  BrandName, 
  -- ClassID,
  ClassName AS Class, 
  -- ColorID,
  ColorName AS Color, 
  -- StyleID,
  -- StyleName,
  -- Size,
  UnitCost AS Cost, 
  UnitPrice AS Price 
FROM 
  DimProduct AS p 
  LEFT JOIN DimProductSubCategory AS psc ON p.ProductSubcategoryKey = psc.ProductSubcategoryKey 
  LEFT JOIN DimProductCategory AS pc ON psc.ProductCategoryKey = pc.ProductCategoryKey 
ORDER BY 
  Category;
