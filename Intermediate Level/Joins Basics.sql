-- TASK 1 ==> Retrieve all data from customers and orders as separate results
SELECT * 
FROM customers;

SELECT * 
FROM orders;


-- INNER Join ==> Returns Only Matching Rows From Both Tables
/*
SELECT * 
FROM TABLE A
JOIN TABLE B 
ON  KEY(TABLE A) = KEY(TABLE B);
*/

-- TASK 2 ==> Get all customers along with their orders, but only for customers who have placed on order

SELECT * 
FROM customers
INNER JOIN orders  
ON id = customer_id;

-- 

SELECT 
	c.id,
	c.first_name,
	o.order_id,
	o.sales
FROM customers AS c 
INNER JOIN orders As o
ON c.id = o.customer_id;

-- LEFT Join ==> Returns All Rows From Left Table and Only Matching From Right Table

/*
	SELECT * 
	FROM A "LEFT Table"
	LEFT JOIN B "RIGHT Table"
	ON  KEY(TABLE A) = KEY(TABLE B);
*/

-- TASK 3 ==> Get all customers along with their orders , include those without orders
SELECT * 
FROM customers AS c 
LEFT JOIN orders AS o
ON c.id = o.customer_id;



-- RIGHT Join ==> Returns All Rows From RIGHT Table and Only Matching From LEFT Table

/*
	SELECT * 
	FROM A "LEFT Table"
	RIGHT JOIN B "RIGHT Table"
	ON  KEY(TABLE A) = KEY(TABLE B);
*/

-- TASK 4 ==> Get all customers along with their orders , include orders without Matching Customers

SELECT * 
FROM customers AS c 
RIGHT JOIN orders AS o
ON c.id = o.customer_id;


--*****************************************************************************************************


/* TASK 5 ==> Get all customers along with their orders,
		      including orders without matching customer
			              (Using LEFT JOIN)
*/

SELECT * 
FROM orders as o  
LEFT JOIN customers as c
ON c.id = o.customer_id;


-- FULL JOIN ==> Return All Rows from both tables

-- TASK 6 ==> Get all customers and all orders, even if there's no match

SELECT * 
FROM customers AS c 
FULL JOIN orders AS o
ON c.id = o.customer_id;