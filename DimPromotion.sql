SELECT 
  PromotionKey, 
  PromotionName AS Name, 
  DiscountPercent, 
  PromotionType AS Type, 
  PromotionCategory, 
  StartDate, 
  EndDate 
FROM 
  DimPromotion;
