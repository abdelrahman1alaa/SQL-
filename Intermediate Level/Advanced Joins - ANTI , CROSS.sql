-- Left Anti Join 'Advanced Join Types'
-- Returns Rows from left that has 'No Match' in right 

SELECT * 
FROM customers AS c 
LEFT JOIN orders AS o 
ON c.id = o.customer_id

-- TASK 1 ==> Get all customers who haven't placed any order

SELECT * 
FROM customers AS c 
LEFT JOIN orders AS o 
ON c.id = o.customer_id
WHERE customer_id IS NULL


-- Right Anti Join ==> Return Rows from Right that has 'NO Match' in left

SELECT * 
FROM customers AS c 
RIGHT JOIN orders AS o 
ON c.id = o.customer_id

-- TASK 2 ==> Get all orders wihtout matching cusotmers

SELECT * 
FROM customers AS c 
RIGHT JOIN orders AS o 
ON c.id = o.customer_id
WHERE c.id IS NULL



-- TASK 3 ==> Get all orders wihtout matching cusotmers (Using LEFT JOIN)

SELECT * 
FROM orders AS o
LEFT JOIN customers AS c
ON c.id = o.customer_id
WHERE c.id IS NULL



-- FULL Anti Join ==> Returns only Rows that 'Don't Match' in either Tables

SELECT * 
FROM customers AS c
FULL JOIN orders AS o
ON c.id = o.customer_id

-- TASK 4 ==> Find customers without orders and orders without customers

SELECT * 
FROM customers AS c
FULL JOIN orders AS o
ON c.id = o.customer_id
WHERE c.id IS NULL OR o.customer_id IS NULL


/* TASK 5 ==> Get all customers along with their orders, but only for customers who have placed an order
                           (Without Using INNER JOIN)
*/


SELECT * 
FROM customers AS c 
LEFT JOIN orders AS o 
ON c.id = o.customer_id
WHERE o.customer_id IS NOT NULL


-- *************************** Another Solution *************************************

SELECT * 
FROM customers AS c 
FULL JOIN orders AS o 
ON c.id = o.customer_id
WHERE c.id IS NOT NULL AND o.customer_id IS NOT NULL



/* CROSS JOIN ==> Combines Every row from left with every row from right
                  All possible Combinations - Cartersian Join - 
*/

-- TASK 6 ==> Generate all possible combinations of customers and orders


SELECT * 
FROM customers
CROSS JOIN orders 