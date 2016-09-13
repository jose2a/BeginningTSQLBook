USE AdventureWorks2012;
GO

-- 2. Writing Simple SELECT Queries
-- Selecting a Literal Value
SELECT 1 
SELECT 'ABC' 

-- Sintax: SELECT <column1>, <column2> FROM <schema>.<table>;
SELECT BusinessEntityID, JobTitle 
FROM HumanResources.Employee;

-- Mixing Literals and Column Names
SELECT 'A Literal Value' AS "Literal Value", 
BusinessEntityID AS EmployeeID, 
LoginID JobTitle 
FROM HumanResources.Employee;

-- Exercises
SELECT CustomerID, StoreID, AccountNumber FROM Sales.Customer;
SELECT Name, ProductNumber, Color FROM Production.Product;
SELECT CustomerID, SalesOrderID FROM Sales.SalesOrderHeader;

-- Filtering Data
-- Adding a WHERE Clause
-- Sintax: SELECT <column1>,<column2> 
--		   FROM <schema>.<table> 
--		   WHERE <column> = <value>;
--1 
SELECT CustomerID, SalesOrderID 
FROM Sales.SalesOrderHeader 
WHERE CustomerID = 11000; 
--2 
SELECT CustomerID, SalesOrderID 
FROM Sales.SalesOrderHeader 
WHERE SalesOrderID = 43793; 
--3 
SELECT CustomerID, SalesOrderID, OrderDate 
FROM Sales.SalesOrderHeader 
WHERE OrderDate = '2005-07-02'; 
--4 
SELECT BusinessEntityID, LoginID, JobTitle 
FROM HumanResources.Employee 
WHERE JobTitle = 'Chief Executive Officer';

-- Using WHERE Clauses with Alternate Operators
-- Using a DateTime column 
--1 
SELECT CustomerID, SalesOrderID, OrderDate 
FROM Sales.SalesOrderHeader 
WHERE OrderDate > '2005-07-05'; 
--2 
SELECT CustomerID, SalesOrderID, OrderDate 
FROM Sales.SalesOrderHeader 
WHERE OrderDate < '2005-07-05'; 
--3 
SELECT CustomerID, SalesOrderID, OrderDate 
FROM Sales.SalesOrderHeader 
WHERE OrderDate >= '2005-07-05'; 
--4
SELECT CustomerID, SalesOrderID, OrderDate 
FROM Sales.SalesOrderHeader 
WHERE OrderDate <> '2005-07-05'; 
--5 
SELECT CustomerID, SalesOrderID, OrderDate 
FROM Sales.SalesOrderHeader 
WHERE OrderDate != '2005-07-05'; 
--Using a numeric column 
--6 
SELECT SalesOrderID, SalesOrderDetailID, OrderQty 
FROM Sales.SalesOrderDetail 
WHERE OrderQty > 10; 
--7 
SELECT SalesOrderID, SalesOrderDetailID, OrderQty 
FROM Sales.SalesOrderDetail 
WHERE OrderQty <= 10; 
--8 
SELECT SalesOrderID, SalesOrderDetailID, OrderQty 
FROM Sales.SalesOrderDetail 
WHERE OrderQty <> 10;
--9 
SELECT SalesOrderID, SalesOrderDetailID, OrderQty 
FROM Sales.SalesOrderDetail 
WHERE OrderQty != 10;
--Using a string column 
--10 
SELECT BusinessEntityID, FirstName 
FROM Person.Person 
WHERE FirstName <> 'Catherine'; 
--11 
SELECT BusinessEntityID, FirstName 
FROM Person.Person 
WHERE FirstName != 'Catherine';
--12 
SELECT BusinessEntityID, FirstName 
FROM Person.Person 
WHERE FirstName > 'M'; 
--13  !> not greater than
SELECT BusinessEntityID, FirstName 
FROM Person.Person 
WHERE FirstName !> 'M'; 

-- Using BETWEEN
-- Sintax: SELECT <column1>,<column2> 
--		   FROM <schema>.<table> 
--		   WHERE <column> BETWEEN <value1> AND <value2>;
--1 
SELECT CustomerID, SalesOrderID, OrderDate 
FROM Sales.SalesOrderHeader 
WHERE OrderDate BETWEEN '2005-07-02' AND '2005-07-04';
--2 
SELECT CustomerID, SalesOrderID, OrderDate 
FROM Sales.SalesOrderHeader 
WHERE CustomerID BETWEEN 25000 AND 25005; 
--3 
SELECT BusinessEntityID, JobTitle 
FROM HumanResources.Employee 
WHERE JobTitle BETWEEN 'C' and 'E'; 
--An invalid BETWEEN expression 
--4 
SELECT CustomerID, SalesOrderID, OrderDate 
FROM Sales.SalesOrderHeader 
WHERE CustomerID BETWEEN 25005 AND 25000;

-- Using NOT BETWEEN
--1 
SELECT CustomerID, SalesOrderID, OrderDate 
FROM Sales.SalesOrderHeader 
WHERE OrderDate NOT BETWEEN '2005-07-02' AND '2005-07-04'; 
--2 
SELECT CustomerID, SalesOrderID, OrderDate 
FROM Sales.SalesOrderHeader 
WHERE CustomerID NOT BETWEEN 25000 AND 25005; 
--3 
SELECT BusinessEntityID, JobTitle 
FROM HumanResources.Employee 
WHERE JobTitle NOT BETWEEN 'C' and 'E'; 
--An invalid BETWEEN expression 
--4 
SELECT CustomerID, SalesOrderID, OrderDate 
FROM Sales.SalesOrderHeader 
WHERE CustomerID NOT BETWEEN 25005 AND 25000;