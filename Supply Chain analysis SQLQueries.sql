SELECT
SUM([Revenue generated]) AS TotalRevenue
 FROM supply_chain_data$

 SELECT
 SUM([Order quantities]) AS TotalQuantitiesOrdered
 FROM supply_chain_data$

SELECT
 SUM([Number of products sold]) AS TotalProductSold
 FROM supply_chain_data$

 #ProductPerformanceAnalysis
SELECT 
    [Product type], 
    ROUND(SUM([Revenue generated]), 2) AS TotalRevenue,
    ROUND(SUM([Number of products sold]), 2) AS ProductSold,
    ROUND(AVG([Revenue generated]), 2) AS AvgRevenue,
    ROUND(AVG([Number of products sold]), 2) AS AvgProductSold
FROM supply_chain_data$
GROUP BY [Product type];

#ShippingPerformanceAnalysis
SELECT 
    [Shipping carriers], 
    ROUND(AVG([Shipping costs]), 2) AS AvgShippingCost,
    ROUND(AVG([Shipping times]), 2) AS AvgShippingTimes
FROM supply_chain_data$
GROUP BY [Shipping carriers];

#SupplierAndShipppingPerformance
SELECT 
    [Supplier name],
    [Shipping carriers],
    ROUND(SUM([Revenue generated]), 2) AS TotalRevenue,
    ROUND(SUM([Number of products sold]), 2) AS ProductSold,
    ROUND(AVG([Revenue generated]), 2) AS AvgRevenue,
    ROUND(AVG([Number of products sold]), 2) AS AvgProductSold
FROM supply_chain_data$
GROUP BY 
    [Supplier name],
    [Shipping carriers];