# Print Distinct City from Table Customers and Print Count Distinct City from Table Customers.

SELECT COUNT( distinct city ) as totcity
FROM ecom.customers;

#2.Write a SQL query to get the least number of quantities and the highest number of quantities bought by the user consider the OrderDetails Table.

SELECT MAX(quantity) as least,min(quantity) as highest
FROM ecom.order_details
ORDER BY Quantity ;


#3.Print the total and an average number of quantities ordered by users, consider the OrderDetails Table.

SELECT avg(quantity) as avg, SUM(quantity) as total_quan
FROM ecom.order_details;

#4Print name of the product which is present at the 5th position till the 15th position from Products table, use LIMIT keyword.

SELECT ProductID, ProductName
FROM ecom.products
LIMIT  5, 10;

#5 Write a SQL query for all the details of the supplier whose name consists of “A” at the second position from the Suppliers table.

SELECT *
FROM ecom.suppliers
WHERE SupplierName LIKE '_A%';

#6 Print the details of the customer who doesn’t stay in the USA and Canada from the Customers table.
SELECT * 
FROM ecom.customers
WHERE Country NOT IN ('canada','USA');

#7Print the details of all the orders which were placed between the year 2020 to 2021 also print the same in descending order from 
#the OrderDetails table.

SELECT *
FROM ecom.Orders
JOIN ecom.Order_Details 
ON ecom.Orders.OrderID = ecom.Order_Details.OrderID
WHERE OrderDate BETWEEN '2020-01-01' AND '2021-12-31'
ORDER BY OrderDate DESC;

#8 Print Distinct City from Table Customers and Print Count Distinct City from Table Customers.

SELECT DISTINCT city , count(city)
FROM ecom.customers;

# 9 Write a query to fetch details of all employees excluding the employees with first names, “Sanjay” and “Sonia” from the Employees table.

SELECT * 
FROM ecom.employees
WHERE lastName NOT IN('soniya', 'sanjay');

#10 Duplicate a table as similar to the Suppliers table and name it as SupplierDetail.

CREATE TABLE supplierdetail
AS
SELECT *
FROM suppliers;

#11 Delete customer details whose country is Venezuela and print the rest of the Customer table
DELETE FROM ecom.customers
WHERE Country = 'Venezuela';

SELECT *  FROM ecom.customers;




















