-- VIEW ve STORED PROCEDURE

-- View
CREATE VIEW vw_YuksekFiyatliUrunler AS
SELECT ProductName, UnitPrice FROM Products WHERE UnitPrice > 50;

-- Stored Procedure
CREATE PROCEDURE sp_MusteriSiparisleri
    @CustomerID nchar(5)
AS
BEGIN
    SELECT * FROM Orders WHERE CustomerID = @CustomerID;
END;
