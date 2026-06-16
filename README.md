# SQL-Projects
# 📊 Data Technician Bootcamp — Databases & SQL

This repository contains my **Week 3 Data Technician workbook and SQL practice files**.
The work focuses on database design, SQL queries, relational databases, NoSQL databases, and SQL joins.

---

## 📌 Project Overview

The aim of this project is to practise using SQL to retrieve, filter, sort, and join data from databases.

The workbook includes tasks based on real-world business scenarios, using examples from **SkillUp Academy** and **Northwind Traders**.

---

## 📁 Files in This Repository

| File Name                                               | Description                                      |
| ------------------------------------------------------- | ------------------------------------------------ |
| `Data_Technician_Workbook_Week_3 Workbench Use(1).docx` | Week 3 workbook covering databases and SQL tasks |
| `sql world(1).sql`                                      | SQL practice using the World database            |
| `Untitled(1).sql`                                       | SQL practice using the Northwind database        |
| `README.md`                                             | Project overview and documentation               |

---

## 🧠 Topics Covered

* Database design
* Relational databases
* Non-relational databases
* Primary keys
* Foreign keys
* Table relationships
* SQL filtering
* SQL sorting
* SQL joins
* Aggregate functions
* Business reporting queries

---

## 🗃️ Database Design Task

The workbook includes a scenario for **SkillUp Academy**, where data needs to be organised into a relational database instead of being stored in one large spreadsheet.

Example tables include:

* Students
* Courses
* Trainers
* Enrolments
* Course_Trainers

This design helps to:

* Reduce duplicate data
* Improve data accuracy
* Make records easier to update
* Organise information more clearly

---

## 🔑 Primary Keys and Foreign Keys

Primary keys are used to uniquely identify records in a table.

Foreign keys are used to link related tables together.

Example:

| Table      | Primary Key |
| ---------- | ----------- |
| Students   | StudentID   |
| Courses    | CourseID    |
| Trainers   | TrainerID   |
| Enrolments | EnrolmentID |

The `StudentID` in the Enrolments table can be used as a foreign key to connect enrolments to students.

---

## 🧩 Relational vs Non-Relational Databases

### Relational Database

A relational database stores data in tables using rows and columns.
It is best for structured data.

Example use cases:

* Student records
* Course records
* Customer orders
* Product data

### Non-Relational Database

A non-relational database stores flexible or unstructured data.
It is useful when the data format changes often.

Example use cases:

* Website click data
* User activity logs
* Feedback comments
* Uploaded documents

---

## 💻 SQL Skills Practised

### Retrieve All Customer Data

```sql
SELECT *
FROM Customers;
```

### Retrieve Specific Columns

```sql
SELECT CustomerName, City
FROM Customers;
```

### Retrieve Unique Cities

```sql
SELECT DISTINCT City
FROM Customers;
```

### Filter Products by Price

```sql
SELECT *
FROM Products
WHERE Price > 50;
```

### Filter Customers by Country

```sql
SELECT *
FROM Customers
WHERE Country = 'UK' OR Country = 'USA';
```

### Sort Orders by Date

```sql
SELECT *
FROM Orders
ORDER BY OrderDate DESC;
```

### Filter Products Between Two Prices

```sql
SELECT *
FROM Products
WHERE Price BETWEEN 20 AND 50
ORDER BY Price DESC;
```

---

## 🔗 SQL Joins

SQL joins are used to combine data from multiple tables.

### Inner Join

Shows only matching records from both tables.

```sql
SELECT products.ProductName, suppliers.SupplierName
FROM products
INNER JOIN suppliers
ON products.SupplierID = suppliers.SupplierID;
```

### Left Join

Shows all records from the left table and matching records from the right table.

### Right Join

Shows all records from the right table and matching records from the left table.

### Full Join

Shows all records from both tables, whether they match or not.

### Cross Join

Creates every possible combination between two tables.

---

## 📊 Example Business Query

This query shows order information with customer and employee details.

```sql
SELECT 
    o.OrderID,
    o.OrderDate,
    c.CustomerName,
    e.FirstName,
    e.LastName
FROM Customers AS c
JOIN Orders AS o
ON o.CustomerID = c.CustomerID
JOIN Employees AS e
ON o.EmployeeID = e.EmployeeID;
```

---

## 🌍 World Database Practice

The World database SQL file includes practice queries such as:

* Finding cities in specific countries
* Sorting cities by population
* Filtering countries by continent
* Using `LIKE` to search names
* Finding capital cities
* Using aggregate functions such as `COUNT`, `MAX`, `MIN`, and `AVG`

---

## 🧾 Northwind Database Practice

The Northwind SQL file includes practice queries such as:

* Retrieving customer information
* Filtering products by price
* Finding customers by country
* Sorting orders by date
* Joining products with suppliers
* Joining products with categories
* Joining orders with customers and employees

---

## 🛠️ Tools Used

* MySQL Workbench
* SQL
* Northwind Database
* World Database
* Microsoft Word

---

## ✅ Learning Outcomes

By completing this project, I practised how to:

* Write basic SQL queries
* Retrieve data from database tables
* Filter records using `WHERE`
* Sort results using `ORDER BY`
* Use `IN`, `BETWEEN`, and `LIKE`
* Use aggregate functions
* Join multiple tables together
* Explain database relationships
* Understand when to use relational and non-relational databases

---

## 📌 Notes

Some SQL queries may need small changes depending on the database version, table names, or column names being used.

It is important to test each query in MySQL Workbench and check that the correct database is selected.

---

## 🎉 Summary

This project shows my progress in learning SQL and database design.
It demonstrates how SQL can be used to organise data, reduce duplication, and create useful reports for business scenarios.

