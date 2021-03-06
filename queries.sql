-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

    SELECT ProductName, CategoryName FROM Product JOIN Category on Product.CategoryId = Category.Id;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

    SELECT O.id, o.shipName FROM [Order] AS o JOIN Shipper ON o.ShipVia = Shipper.id WHERE o.OrderDate < '2012-08-09';

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

    SELECT p.ProductName, o.Quantity FROM [OrderDetail] AS o JOIN [Product] as p ON o.ProductId = p.Id WHERE o.OrderId = '10251';

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

    SELECT o.Id, c.CompanyName, e.LastName FROM "Order" AS o JOIN "Customer" as c ON o.CustomerId = c.Id JOIN "Employee" as e ON o.EmployeeId = e.Id;