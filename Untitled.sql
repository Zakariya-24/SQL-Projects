-- activate schema
use Northwind;

select * from customers;

select *  from orders;

select * from employees;

select * from order_details;

SELECT customername, City, Country FROM customers;

SELECT ProductID, ProductName FROM Products;

SELECT Country FROM Customers;

SELECT FirstName, LastName, BirthDate
FROM Employees;

SELECT CustomerName, Address, City
FROM Customers;

Select* From Customers 
Where City = "London";

SELECT COUNT(*)
FROM Customers
WHERE Country = 'USA';

Select* 
From Customers
Where CustomerID >="15";

-- UK customers outside London

select customername, City, Country from customers where Country = "UK" and City != "London";
 
select customername, City, Country

 from customers

 where Country = "UK" and not City = "London"; 
 
 -- Customers from UK or USA

 select customername, City, Country

 from customers

 where Country = "UK" or Country = "USA";
 
 -- product start with A

select *

from products

where productname like "a%";
 
-- product start with A

select *

from products

where productname like "%choco%";
 
-- product has second letter a

select *

from products

where productname like "_a%";
 
 Select SupplierName, Country From Suppliers Where "land%"; 
 
SELECT *
FROM Employees
WHERE FirstName LIKE '_n%';

-- Customers from France, UK or Germany

 SELECT CustomerName, Country FROM Customers

 WHERE Country IN ('Germany', 'France', 'UK');
 
SELECT CustomerName, Country FROM Customers

WHERE Country NOT IN ("Germany", "France", "UK");

-- Country for Suppliers

 SELECT distinct Country FROM Suppliers;
 
-- Customers same country as Suppliers

 select Customername, Country

 from customers

 Where country in (SELECT distinct Country FROM Suppliers);
 
Select CustomerName, Country FROM Customers 

Where Country = "Germany" and City = "Berlin" ; 

Select ShipperID FROM Orders
Where ShipperID IN ("ShipperID 1") or ("ShipperID 3");

Select customername, customerid 
From Customers 

 Where CustomerID IN ( Select CustomerID From Orders);
 
 SELECT * FROM Products

 WHERE Price BETWEEN 10 AND 20;
 
 SELECT * FROM Products

 WHERE Productname BETWEEN "Chais" AND "Pavlova";
 
 -- order by Country

 SELECT * FROM Customers

 ORDER BY Country;
 
 -- order by price 
 Select ProductName, Price From Products
 
 ORDER BY Price; 
 
 -- order by country 
Select * FROM Customers
ORDER BY Country DESC; 

SELECT Country, Customername FROM Customers

 ORDER BY Country, CustomerName;
 
 SELECT Country, Customername FROM Customers

 ORDER BY Country, CustomerName desc;
 
 SELECT * FROM Customers

 order by customerid desc

 LIMIT 3;
 
 SELECT * FROM Customers

 WHERE Country='Germany'

 LIMIT 3;
 
 -- min price

 select min(price)

 from products;
 
 -- min price

 select min(price)

 from products;
 
 SELECT CustomerName, CONCAT_WS(', ', Address, PostalCode, City, Country) as Address

 FROM Customers;
 
SELECT *
FROM Customers;

SELECT Customername, City
FROM Customers;

Select Customername, City
From Customers 
Where city in (select distinct city from Customers);

SELECT Price From Products Where Price >=50;

SELECT Country
FROM Customers
WHERE Country = 'UK'
OR Country = 'USA';
 
SELECT OrderDate From Orders 

Order by Orderdate DESC;  

SELECT Price From Products  

Where Price between 20 and 50;  

SELECT *
From Customers 
Where Country = "USA" and City IN ("Portland" ,"Kirkland")
ORDER BY Customername ASC; 

SELECT * 
FROM Customers  
WHERE Country = "UK" AND City IN ("London")
Order by CustomerName DESC; 

 

SELECT * 

From Products 

Where CategoryID = 1 or 2   

Order by ProductName ASC; 

select customers.CustomerID, Orders.OrderID, Orders.OrderDate, 
customers.CustomerName, customers.Country
from Orders
inner join Customers
on Orders.CustomerID = Customers.CustomerID
order by customers.CustomerID;

select suppliername, productname
from suppliers
inner join products
on suppliers.supplierid = products.supplierid;

-- G'Day, Mate and products
select suppliername, productname
from suppliers
inner join products
on suppliers.supplierid = products.supplierid
where suppliername = "G'Day, mate";

Select firstname, lastname, birthdate, orders.orderid
From orders
inner join employees
on orders.employeeid= employees.employeeid;


/* Write a query to find all orders shipped by a specific shipper (e.g., ShipperName = 'Speedy Express'). */
select ShipperName, OrderID, OrderDate
from orders
inner join shippers
on orders.ShipperID = shippers.ShipperID
where ShipperName = 'Speedy Express';

 
/* Write a query to display all products along with their category names.*/
select CategoryName, ProductName
from products
inner join categories
on products.CategoryID = categories.CategoryID;
 
 
/* Write a query to list all products and their quantities for each order.*/
select ProductName, Quantity
from products
inner join order_details
on products.ProductID = order_details.ProductID;

SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
CROSS JOIN Orders
order by customername;

select city, count(customerid) as numberofcustomers
from customers
group by city
order by numberofcustomers desc;

select FirstName, LastName, count(o.orderid) as nooforders
from orders as o
join employees as e
on o.EmployeeID = e.EmployeeID
group by FirstName, LastName;

select FirstName, LastName, e.EmployeeID, count(o.orderid) as nooforders
from orders as o
join employees as e
on o.EmployeeID = e.EmployeeID
group by FirstName, LastName, e.EmployeeID;


SELECT products.productname, suppliers.suppliername
FROM products
INNER JOIN suppliers
ON products.supplierid = suppliers.supplierid;

select categories.categoryname, products.productname
From products
Inner join categories
On products.categoryID= categories.categoryID;

-- 📘 Complete Order Overview 
-- The business team wants to see a detailed order list with customer and employee information. 
-- ➡️ Write a SQL query to retrieve the Order ID, Order Date, Customer Name, and Employee Name for all orders. 


select o.OrderID, o.OrderDate, c.CustomerName, e.FirstName, e.LastName
from customers as c
join orders as o
on o.CustomerID = c.CustomerID -- match
join employees as e
on o.EmployeeID = e.EmployeeID;

-- 3.📘 Category-Specific Product Report: Meat/Poultry 
-- The food department wants to view all items in the Meat/Poultry category. 
-- ➡️ Write a SQL query to retrieve all products belonging to the Meat/Poultry category. 

SELECT*
FROM Products P
JOIN Categories C
    ON C.CategoryID = P.CategoryID
WHERE C.CategoryName = 'Meat/Poultry';

Select o.orderid, o.orderdate, c.customername, e.firstname,e.lastname, e.birthdate

From Employees e

Join orders o

On o.employeeid = e.employeeid 

Join customers c

On c.customerid = o.customerid;

Select P.productname, categoryname, suppliername 

From suppliers s 

Join products p 

On s.supplierid=p.supplierid 

Join categories c 

On c.categoryid= p.categoryid;

Select c.customername, count(orderdate) as nooforders

From Orders o

Join Customers c 

On c.customerid= o.customerid 

Where Year(o.orderdate)= 1996 

GROUP BY c.customername;

Select c.categoryname, count(p.productname) as nooforders

From categories c

Join products p 

On p.categoryid= c.categoryid  

group by c.categoryname;


Select p.productname, o.orderdate, od.quantity, sum(price) as totalprice

From products p

Join order_details od

On od.productid=p.productid

Join orders o

On od.orderid= o.orderid

Group by od.quantity,o.orderdate,p.productname