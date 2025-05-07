-- 10 SQL Sorgusu

-- 1
SELECT * FROM Customers;

-- 2
SELECT TOP 5 ProductName, UnitPrice FROM Products ORDER BY UnitPrice DESC;

-- 3
SELECT CategoryID, COUNT(*) AS UrunSayisi FROM Products GROUP BY CategoryID;

-- 4
SELECT CustomerID, COUNT(*) AS SiparisSayisi FROM Orders GROUP BY CustomerID HAVING COUNT(*) > 5;

-- 5
SELECT AVG(UnitPrice) AS OrtalamaFiyat FROM Products;

-- 6
SELECT TOP 1 CustomerID, COUNT(*) AS ToplamSiparis FROM Orders GROUP BY CustomerID ORDER BY ToplamSiparis DESC;

-- 7
SELECT EmployeeID, COUNT(*) AS SiparisSayisi FROM Orders GROUP BY EmployeeID;

-- 8
SELECT * FROM Orders WHERE YEAR(OrderDate) = 1997;

-- 9
SELECT ProductID, SUM(Quantity) AS ToplamAdet FROM [Order Details] GROUP BY ProductID;

-- 10
SELECT Country, COUNT(*) AS MusteriSayisi FROM Customers GROUP BY Country;
