-- DDL: CREATE TABLE
CREATE TABLE Customers (
    CustomerID nchar(5) PRIMARY KEY,
    CompanyName nvarchar(40) NOT NULL,
    ContactName nvarchar(30),
    City nvarchar(15),
    Country nvarchar(15)
);

CREATE TABLE Orders (
    OrderID int PRIMARY KEY,
    CustomerID nchar(5),
    EmployeeID int,
    OrderDate datetime,
    ShipCity nvarchar(15),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);
