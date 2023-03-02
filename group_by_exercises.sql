SELECT DISTINCT title
from titles;

SELECT last_name
FROM employees
WHERE last_name LIKE 'E%E'
GROUP BY last_name;

SELECT last_name
FROM employees
WHERE last_name LIKE 'E%E'
GROUP BY first_name, last_name;

SELECT CONCAT(COUNT(last_name), ' ', last_name) as counted_last_names
FROM employees
WHERE last_name LIKE '%q%'
AND NOT last_name LIKE '%qu%'
GROUP BY last_name
ORDER BY last_name;

SELECT COUNT(*), gender
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;