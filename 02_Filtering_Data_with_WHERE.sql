-- The WHERE CLAUSE
-- This script filters employee data to isolate specific demographics, 
-- salary brackets, and name patterns for targeted HR analysis


-- 1. Basic filtering  to find out specific individuals, can also call them Comparison operators 
-- Filtering records based on exact matches.
SELECT *
FROM employee_salary 
where first_name ='Leslie'
;

-- 2. Below I am showing a numerical filtering to find out a salary or numerical threshold
SELECT *
FROM employee_salary 
where SALARY <= 50000
;

-- 3. Here I am demostrating how to filter out gender 
SELECT *
FROM employee_demographics
where gender != 'female'
;

-- 4. This script demonstrates how I have used the where clause to filter out the birthdate of individual born in '1985-01-01'
SELECT *
FROM employee_demographics
where birth_date > '1985-01-01'
;

-- 5.  These are logical operators  and parenthesis uses to 
-- demonstrate  complex filtering logic and order of operations
-- AND OR NOT -- Logical operators 
SELECT *
FROM employee_demographics
where birth_date > '1985-01-01'
OR NOT GENDER = 'MALE'
;
-- 6. Using parenthesis to isolate or remove logic groups
SELECT *
FROM employee_demographics
where (first_name = 'Leslie' AND AGE = 44) or age > 55
;

-- 7. Advanced Pattern Matching 
-- Like Statement, super unique as we use it to look for specific patterns
-- % and '_' Using wildcards '_' to find out a specific character count and '%' for any sequence before or after
SELECT *
FROM employee_demographics
where first_name LIKE 'a___%'
;

-- Take note on line 13, the numerical value is not wrapped in single quotes, that is because some databases might treat the 50000 as a "text",this would cause a problem should we want to use aggregate functions like sum, count or average
-- 50000 is a numeric value. SQL is designed to do math with these, so it treats them as pure numbers.