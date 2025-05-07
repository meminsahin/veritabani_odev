-- DML: INSERT, UPDATE, DELETE
INSERT INTO Customers (CustomerID, CompanyName, ContactName, City, Country) 
VALUES ('Z9999', 'Zirve Ltd.', 'Ali Kaya', 'Ankara', 'Turkey');

UPDATE Customers 
SET ContactName = 'Mehmet Demir' 
WHERE CustomerID = 'Z9999';

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShipCity) 
VALUES (11001, 'Z9999', 5, '2025-05-01', 'Ankara');

UPDATE Orders 
SET OrderDate = GETDATE() 
WHERE OrderID = 11001;

DELETE FROM Customers 
WHERE CustomerID = 'Z9999';
