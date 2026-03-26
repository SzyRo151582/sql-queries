USE Northwind;
GO

SELECT * FROM dbo.Customers;

SELECT City, Country
FROM dbo.Customers;

SELECT  
FROM dbo.Customers

SELECT * FROM dbo.[Order Details]

SELECT UnitPrice, Quantity, Discount, UnitPrice * Quantity * (1-Discount)
FROM dbo.[Order Details];

SELECT UnitPrice, Quantity, Discount, UnitPrice * Quantity * (1-Discount) Total
FROM dbo.[Order Details];

SELECT UnitPrice AS Price, Quantity, Discount, Total = UnitPrice * Quantity * (1-Discount)
FROM dbo.[Order Details];

SELECT * FROM dbo.Customers;

SELECT DISTINCT Country
FROM dbo.Customers;

SELECT * FROM dbo.Customers;

SELECT ALL Country FROM dbo.Customers;

SELECT CompanyName, Country 
FROM dbo.Customers;

SELECT CustomerID, OrderDate
FROM dbo.Orders AS o;

SELECT CustomerID, OrderDate
FROM dbo.Orders o;

SELECT CustomerID, o.OrderDate
FROM dbo.Orders AS o;

SELECT UnitPrice, Quantity, Discount, UnitPrice * Quantity AS Total
FROM dbo.[Order Details]
ORDER BY UnitPrice * Quantity ASC;

SELECT UnitPrice, Quantity, Discount, UnitPrice * Quantity AS Total
FROM dbo.[Order Details]
ORDER BY UnitPrice * Quantity DESC;

SELECT UnitPrice, Quantity, Discount, UnitPrice * Quantity AS Total
FROM dbo.[Order Details]
ORDER BY Total DESC;

SELECT UnitPrice, Quantity, Discount, UnitPrice * Quantity AS Total
FROM dbo.[Order Details]
WHERE UnitPrice * Quantity > 8000;

SELECT UnitPrice, Quantity, Discount, UnitPrice * Quantity AS Total
FROM dbo.[Order Details]
WHERE UnitPrice * Quantity > 8000 AND OrderID=10865;

SELECT * FROM dbo.Categories;

iscampaign
1,7,8 Campaign Products, reszta Non Campaign Products

SELECT CampaignID, Name, ModifiedDate,
	CASE Name
	WHEN '1' THEN 'Campaign Products'
	WHEN '7' THEN 'Campaign Products' 
	WHEN '8' THEN 'Campaign Products'
	ELSE 'Non Campaign Products'
	END AS Nazwa_Polska
FROM Campaign.Products;

SELECT *,
	CASE
	WHEN CategoryID IN (1, 7, 8) THEN 'Campaign Products'
	ELSE 'Non Campaign Products'
	END AS iscampaign,
	CASE
	WHEN CategoryID = 1 THEN 'Beverages'
	WHEN CategoryID = 2 THEN 'Condiments'
	WHEN CategoryID = 3 THEN 'Confections'
	ELSE 'Other'
	END AS CategoryName2
FROM dbo.Categories;

SELECT e.EmployeeID, c.CustomerID
FROM dbo.Employees AS e
CROSS JOIN
dbo.Customers AS c;

SELECT c.CompanyName, o.OrderDate
FROM dbo.Customers AS c, dbo.Orders AS o
WHERE c.CustomerID = o.CustomerID;

-- Cartesian product

SELECT c.CompanyName, o.OrderDate
FROM dbo.Customers AS c, dbo.Orders AS o

SELECT c.CompanyName
FROM dbo.Customers AS c

SELECT o.OrderDate
FROM dbo.Orders AS o

SELECT c.CompanyName, o.OrderDate
FROM dbo.Customers AS c
INNER JOIN dbo.Orders AS o
ON c.CustomerID = o.CustomerID;

SELECT e.City, e.Country
FROM dbo.Customers AS c
INNER JOIN dbo.Employees AS e
ON c.City = e.City AND c.Country = e.Country;

SELECT c.CustomerID, c.ContactName
FROM dbo.Customers AS c
LEFT OUTER JOIN dbo.Orders AS o
ON c.CustomerID = o.CustomerID
WHERE o.CustomerID IS NULL;

SELECT c.CustomerID, c.ContactName
FROM dbo.Customers AS c
RIGHT OUTER JOIN dbo.Orders AS o
ON c.CustomerID = o.CustomerID
ORDER BY c.CustomerID

SELECT c.CustomerID, c.ContactName
FROM dbo.Customers AS c
FULL OUTER JOIN dbo.Orders AS o
ON c.CustomerID = o.CustomerID

SELECT e.EmployeeID, c.CustomerID
FROM dbo.Employees AS e
SELF JOIN
dbo.Customers AS c;

SELECT
e.EmpID, e.LastName, e.FirstName, e.Title, m.Reportsto,
m.LastName AS mgrlastname, m.FirstName AS mgrfirstname
FROM HR.Employees AS e
INNER JOIN HR.Employees AS m ON