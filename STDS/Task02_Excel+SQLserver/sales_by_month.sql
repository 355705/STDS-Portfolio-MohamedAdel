SELECT
YEAR(OrderDate) AS Year,
DATENAME(MONTH, OrderDate) as Month,
ROUND(SUM(TotalDue),2) AS TotalSales
FROM Sales.SalesOrderHeader
GROUP BY
YEAR(OrderDate),
DATENAME(MONTH, OrderDate)
ORDER BY
YEAR(OrderDate) ASC