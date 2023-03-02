USE ymir_employees;

SELECT CONCAT(e.last_name, ', ', e.first_name) AS fullname
FROM employees as e
LIMIT 10;

SELECT CONCAT(e.last_name, ', ', e.first_name) AS fullname, birth_date as DOB
FROM employees as e
LIMIT 10;

SELECT CONCAT(e.emp_no, ' - ' ,e.last_name, ', ', e.first_name) AS fullname, e.birth_date as DOB
FROM employees as e
LIMIT 10;