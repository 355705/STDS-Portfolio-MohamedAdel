SELECT top 10
p.name AS ProductName,
SUM(sod.LineTotal) AS TotalProfit
FROM
Sales.SalesOrderDetail sod
INNER JOIN Production.Product p
ON sod.ProductID = p.ProductID
GROUP BY
p.Name
ORDER BY
SUM(sod.LineTotal) DESC;