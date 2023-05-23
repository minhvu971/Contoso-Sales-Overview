SELECT
  SalesKey,
  DateKey,
  -- ChannelKey,
  ChannelName AS Channel,
  StoreKey,
  PromotionKey,
  -- UnitCost,
  -- UnitPrice,
  -- SalesQuantity,
  -- ReturnQuantity,
  -- ReturnAmount,
  -- ETLLoadID,
  -- LoadDate,
  -- UpdateDate,
  DiscountAmount,
  TotalCost,
  SalesAmount
FROM 
  FactSales AS fs 
  LEFT JOIN DimChannel as c ON fs.ChannelKey = c.ChannelKey
WHERE 
  YEAR(DateKey) IN (2007, 2008, 2009)
ORDER BY
  DateKey, Channel;
