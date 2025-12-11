SELECT
st.Name AS TerritoryName,
sum(soh.TotalDue) as TotalSales
FROM Sales.SalesOrderHeader soh
join Sales.SalesTerritory st 
on soh.TerritoryID = st.TerritoryID
GROUP BY st.Name
ORDER BY TotalSales DESC