
-- Q1

SELECT `orderNumber`,  `quantityOrdered`,`priceEach`,(quantityOrdered * priceEach)
 as total FROM `orderdetails` ;


-- Q2

SELECT
concat(emp.firstName,' ',emp.lastName) AS fullName_emp ,
concat(manager.firstName,' ',manager.lastName) AS fullName_manager 
FROM employees as emp JOIN employees as manager
ON emp.reportsTo = manager.employeeNumber ; 



-- Q3

SELECT `employeeNumber`, `firstName`, `lastName`, `officeCode` FROM `employees` WHERE officeCode = 7 ;


-- Q4

SELECT concat(employees.firstName,' ',employees.lastName)AS empName ,
offices.city , offices.officeCode AS cityCode  FROM `employees` JOIN offices  ON employees.officeCode = offices.officeCode 
AND offices.officeCode = 7  ;


-- Q5 

SELECT customers.customerName AS custumerName ,
(orderdetails.quantityOrdered*orderdetails.priceEach) AS total_paid
FROM customers JOIN orders  JOIN orderdetails 
ON customers.customerNumber = orders.customerNumber
AND orders.orderNumber = orderdetails.orderNumber;


