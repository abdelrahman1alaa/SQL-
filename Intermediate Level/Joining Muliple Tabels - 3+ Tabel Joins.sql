-- Joining Muliple Tabels - 3+ Tabel Joins
-- Multi Table Join

/* TASK 1 ==> Using SalesDB Retrieve a list of all ORDERS,
              along with the related customer, product , and details.

              For each order , desplay:
              - Order id 
              - Customer's name
              - Product name 
              - Sales amount 
              - Product price
              - Salesperson's name

*/

USE SalesDB;



SELECT * FROM Sales.Customers

SELECT * FROM Sales.Products

SELECT * FROM Sales.Employees

SELECT * FROM Sales.Orders

SELECT * FROM Sales.OrdersArchive



-- ******************************************************



SELECT 
    o.OrderID,
    o.Sales,
    c.FirstName AS CustomerFirstName,   
    c.LastName AS CustomerLastName,
    p.Product AS ProductName,
    p.Price,
    e.FirstName AS EmployeeFirstName,
    e.LastName AS EmployeeLastName
FROM Sales.Orders AS o
LEFT JOIN Sales.Customers AS c
ON o.CustomerID = c.CustomerID

LEFT JOIN Sales.Products AS p 
On o.ProductID = p.ProductID

LEFT JOIN Sales.Employees AS e
ON o.SalesPersonID = e.EmployeeID


