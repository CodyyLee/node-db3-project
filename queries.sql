-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.


SELECT p.ProductName, c.CategoryName
FROM Product AS p
JOIN Category AS c ON p.CategoryId = c.Id;

SELECT o.Id, s.CompanyName, o.OrderDate
FROM [Order] as o
JOIN Supplier as s ON o.ShipVia = s.Id
WHERE o.OrderDate < '2012-08-08 23:59:59';

SELECT p.ProductName, o.Quantity
From Product as p
LEFT JOIN OrderDetail as o ON o.OrderId = 10251;

SELECT p.ProductName, o.Quantity
FROM OrderDetail as o
JOIN Product as p ON o.ProductId = p.Id
WHERE o.OrderId = 10251;

SELECT o.Id, c.CompanyName, e.LastName
From [Order] as o
LEFT JOIN Employee as e ON o.EmployeeId = e.Id
Join Customer as c ON o.CustomerId = c.Id;