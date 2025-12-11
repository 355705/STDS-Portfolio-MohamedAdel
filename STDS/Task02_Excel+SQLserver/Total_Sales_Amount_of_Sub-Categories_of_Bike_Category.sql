SELECT t2.Name, FORMAT((SUM(s.LineTotal)),'#,0.00') AS SubCategoryTotalSales
FROM
	(SELECT t1.ProductSubcategoryID, t1.ProductCategoryID, t1.Name, ProductID
	 FROM 
		 (SELECT ProductSubcategoryID, ProductCategoryID, Name
		  FROM Production.ProductSubcategory
		  WHERE ProductCategoryID = (SELECT ProductCategoryID
									 FROM Production.ProductCategory 
									 WHERE Name = 'Bikes')) AS t1
	 LEFT JOIN Production.Product AS p
	 ON t1.ProductSubcategoryID = p.ProductSubcategoryID) AS t2
LEFT JOIN Sales.SalesOrderDetail AS s
ON t2.ProductID = s.ProductID
GROUP BY t2.Name;