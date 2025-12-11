SELECT 
p.Name AS ProductName,
SUM(sod.OrderQty) AS TotalUnitsSold
FROM
Sales.SalesOrderDetail sod
JOIN "Production".Product p on sod.productID = p.ProductID
GROUP BY p.Name
ORDER BY TotalUnitsSold DESC;