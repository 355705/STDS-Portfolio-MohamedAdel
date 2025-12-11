SELECT name, database_id, create_date FROM sys.databases;
GO

USE AdventureWorks2019

SELECT name FROM sys.tables


SELECT * from HumanResources.Department;
SELECT COUNT(Name) from HumanResources.Department;

SELECT * from "HumanResources"."Employee"

SELECT count(NationalIDNumber) from HumanResources."Employee"

SELECT COUNT(DISTINCT(JobTitle)) from HumanResources."Employee"

SELECT * from HumanResources."EmployeeDepartmentHistory"

SELECT City, count(City) as "count city" from Person."Address"
GROUP BY City
ORDER BY COUNT(City) DESC

SELECT count(ProductID) from Production."Product"

SELECT * FROM Purchasing."ProductVendor"

SELECT * from Purchasing."ProductVendor"
WHERE ProductID = 2