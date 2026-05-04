			-- SQL - WHERE Conditions

/*
				
				WHERE Operators
				
		- Comparison Operators ==> '= , <> != , > , < , >= ,<='
		- Logical Operators ==> 'AND , OR , NOT'
		- Range Operator ==> 'BETWEEN'
		- Membership Operators ==> 'IN , NOT IN'
		- Search Operator ==> 'Like'
*/


-- ******************************************************************************************************

-- Comparison Operators

	/*
		Condition ==> Expression . Operator . Expression
					  Column1          =      column2      | First_Name = Last_Name
					  Column1          =      Value        | First_Name = 'John'
					  Function         =      Value        | UPPER(First_Name) = 'JOHN'
					  Expression       =      Value        | Price * Quantity = 1000
		  'Advanced'  SubQuery         =      Value        | (SELECT AVG(Sales)FROM Orders) = 1000
	
	*/

-- ******************************************************************************************************


-- TASK 1 ==> Retrive all customers from Germany 

SELECT * 
FROM customers
WHERE country = 'Germany'

-- TASK 2 ==> Retrive all customers who are not from Germany 

SELECT * 
FROM customers
WHERE country <> 'Germany'  -- We can use ( != or <> )

-- TASK 3 ==> Retrive all customers with a score greater than 500

SELECT * 
FROM customers
WHERE score > 500

-- TASK 4 ==> Retrive all customers with a score greater than or equal 500

SELECT * 
FROM customers
WHERE score >= 500

-- TASK 5 ==> Retrive all customers with a score Smaller than 500

SELECT * 
FROM customers
WHERE score < 500


-- TASK 6 ==> Retrive all customers with a score Smaller than or equal 500

SELECT * 
FROM customers
WHERE score <= 500








-- *****************************************************************

-- Logical Operators

	/* 
		AND ==> All conditions MUST be TRUE.
		OR  ==> At least one condition MUST be TRUE..
		NOT ==> Reverse the result (The condition MUST be FALSE).
	*/

-- *****************************************************************


-- TASK 1 ==> Retrieve all customers who are from the USA AND have a score greater than 500 

SELECT * 
FROM customers
WHERE country = 'USA' AND score > 500

-- TASK 2 ==> Retrieve all customers who are either from the USA OR have a score greater than 500 

SELECT * 
FROM customers
WHERE country = 'USA' OR score > 500


-- TASK 3 ==> Retrieve all customers with a score NOT less than 500

SELECT * 
FROM customers
WHERE score >= 500


SELECT * 
FROM customers
WHERE NOT score < 500




 

-- *****************************************************************

-- Range Operator

	/*
			- BETWEEN ==> check if a value is within a range


			Lower Boundry          Between        Upper Boundry

			<------|-----------------------------------|------>
			      100                                500
			FALSE                  TRUE                  FALSE
	*/

-- *****************************************************************


-- TASK 1 ==> Retrive all customers whose score falls in the range between 100 and 500

SELECT * 
FROM customers
WHERE score BETWEEN 100 AND 500 


SELECT * 
FROM customers
WHERE score >= 100 AND score <= 500 






-- *****************************************************************

-- Membership Operators

	/*
		- IN ==> Check if a value exists in a list
		- NOT IN
	*/

-- *****************************************************************


-- TASK 1 ==> Retrive all customers from either Germany OR USA

SELECT * 
FROM customers
WHERE country = 'Germany' OR country = 'USA'


-- If we have a lot of countries this is the best way
SELECT * 
FROM customers
WHERE country IN ('Germany' , 'USA')


-- TASK 2 ==> Retrive all customers whose not from either Germany OR USA

SELECT * 
FROM customers
WHERE country NOT IN ('Germany' , 'USA')








-- *****************************************************************

-- Search Operator

		-- LIKE ==> Search for a pattern in text
		/*
			. M%    Maria / Martin 
			. Ma%   Maria / Martin
			. %in   Martin
			. %r%   Maria
			. __b%  Albert / Rob 
		*/

-- *****************************************************************


-- TASK 1 ==> Find all customers whose first name Starts with "M"

SELECT * 
FROM customers
WHERE first_name LIKE 'M%'


-- TASK 2 ==> Find all customers whose first name Ends with "n"

SELECT * 
FROM customers
WHERE first_name LIKE '%n'


-- TASK 3 ==> Find all customers whose first name contains "r"

SELECT * 
FROM customers
WHERE first_name LIKE '%r%'


-- TASK 4 ==> Find all customers whose first name has "r" in the third position

SELECT * 
FROM customers
WHERE first_name LIKE '__r%'