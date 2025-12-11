SELECT
Year(orderDate) AS Year,
Round(SUM(TotalDue), 2) AS TotalSales
FROM
Sales.SalesOrderHeader
GROUP BY
Year(orderDate)
ORDER BY Year ASC;