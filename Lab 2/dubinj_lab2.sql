/* 
Programmer's Name: Justin N. Dubin
Course: CSCI 2020 Section Number: 940 
Creation Date: 01/28/2022 Date of Last Modification: 01/31/2022 
E-mail Address: dubinj@etsu.edu 
Purpose - Become familiar with SQL Syntax
Lab 2 - Introduction to SQL 
Identifier dictionary - 
Not Applicable 
 
Notes and Assumptions – 
*/
-- A1. Select Employee Table
SELECT * FROM ALLPOWDER.Employee;

-- A2. Select Employee Table
SELECT lastname, firstname, department
FROM ALLPOWDER.Employee;

-- A3a. Select Customer Table for Andy
SELECT lastname, firstname, dateofbirth
FROM ALLPOWDER.Customer
WHERE firstname = 'Andy';

-- A3b. Select Customer Table for Sarah 
SELECT lastname, firstname, email
FROM ALLPOWDER.Customer
WHERE firstname = 'Sarah';

-- A3c. Select Customer Table for McCoy 
SELECT lastname, firstname, city
FROM ALLPOWDER.Customer
WHERE lastname = 'McCoy';

-- A4a. Select Employees in Boards Dept.
SELECT firstname, lastname
FROM ALLPOWDER.Employee
WHERE department = 'Boards';

-- A4b. Select Employees in Ski Departments
SELECT firstname, lastname
FROM ALLPOWDER.Employee
WHERE department = 'Ski-Alpine' OR department = 'Ski-Nordic';

-- A4c. Select Employees in both Ski Departments
SELECT firstname, lastname
FROM ALLPOWDER.Employee
WHERE department = 'Ski-Alpine' AND department = 'Ski-Nordic';

-- A4d. Select Manufacturers that produce specific types of items
SELECT name
FROM ALLPOWDER.Manufacturer
WHERE category IN('Boots','Clothes', 'Board', 
'Ski','Glasses','Poles');

-- A5a. Manufacturer Cities
SELECT city, state, zip
FROM ALLPOWDER.Manufacturer;

-- A5b. Manufacturer Cities without Duplicates.
SELECT DISTINCT city, state, zip
FROM ALLPOWDER.Manufacturer;

-- A5c. Number of Manufacturer Address Duplicates: 8

-- A6a. Number of Rentals:  1994
SELECT COUNT (RentID) 
FROM ALLPOWDER.Rental;

-- A6b. Number of Rentals by Payment Type:  
SELECT PAYMENTMETHOD, COUNT(RentID) as "Rentals per Payment Type"
FROM ALLPOWDER.Rental
GROUP BY paymentmethod;

-- A6c. Total Amount of Sales: $405,946
SELECT SUM (saleprice)
FROM ALLPOWDER.Saleitem;

-- A6d. Average Sale Price: $273.55
SELECT AVG (saleprice)
FROM ALLPOWDER.Saleitem;

-- A6e. Average Sales Tax Per Payment Type: 
SELECT paymentmethod, AVG(salestax) as "Average Sales tax per Payment Type"
FROM ALLPOWDER.SALE
GROUP BY paymentmethod;