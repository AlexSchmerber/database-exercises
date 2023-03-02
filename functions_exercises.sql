USE ymir_employees;

SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name DESC, first_name DESC;

SELECT *
FROM employees
WHERE last_name LIKE 'E%'
ORDER BY emp_no DESC;

SELECT *
FROM employees
WHERE last_name LIKE '%Q%';

SELECT *
FROM employees
WHERE gender = 'M' AND first_name = 'Irena' OR gender = 'M' AND first_name = 'Vidya' OR gender = 'M' AND first_name = 'Maya';

SELECT *
FROM employees
WHERE last_name LIKE '%E'
OR last_name LIKE 'E%';

SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees
WHERE last_name LIKE 'E%E';

SELECT *
FROM employees
WHERE last_name LIKE '%q%'
AND NOT last_name LIKE '%qu%';

SELECT *
FROM employees
WHERE month(birth_date) = 12
AND day(birth_date) = 25;
# WHERE birth_date LIKE '%12-25';

SELECT *
FROM employees
WHERE month(birth_date) = 12
AND day(birth_date) = 25
AND year(hire_date) BETWEEN 1990 AND 1999;
# WHERE hire_date LIKE '199%' AND birth_date LIKE '%12-25';


SELECT *
FROM employees
WHERE hire_date LIKE '199%' AND birth_date LIKE '%12-25'
ORDER BY birth_date, hire_date desc;

SELECT (datediff(now(), hire_date)) AS days_employed
# SELECT ((UNIX_TIMESTAMP(NOW()) - UNIX_TIMESTAMP(hire_date)) / 86400) AS days_employed
FROM employees
WHERE month(birth_date) = 12
AND day(birth_date) = 25
AND year(hire_date) BETWEEN 1990 AND 1999;


