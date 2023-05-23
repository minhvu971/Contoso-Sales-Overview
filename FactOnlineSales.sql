SELECT 
  OnlineSalesKey, 
  DateKey, 
  StoreKey, 
  ProductKey,
  PromotionKey, 
  -- CurrencyKey
  CustomerKey, 
  SalesOrderNumber, 
  -- SalesOrderLineNumber,
  -- SalesQuantity,
  SalesAmount, 
  ReturnQuantity, 
  TotalCost 
FROM 
  FactOnlineSales 
WHERE 
  YEAR(Datekey) IN (2007, 2008, 2009) 
ORDER BY 
  DateKey