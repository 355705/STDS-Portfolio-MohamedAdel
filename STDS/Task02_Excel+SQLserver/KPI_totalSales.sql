USE AdventureWorks2019

SELECT FORMAT(SUM(LineTotal),'#,0.00') AS TotalSales FROM Sales.SalesOrderDetail;
