USE ymir_employees;

SELECT *
from employees e
WHERE e.hire_date IN (
    SELECT e2.hire_date
    FROM employees e2
    WHERE e2.emp_no = '101010'
    );

SELECT t.title
FROM titles t
WHERE t.emp_no IN (
    SELECT e.emp_no
    FROM employees e
    WHERE e.first_name = 'Aamod'
    );

SELECT e.first_name as First_Name, e.last_name as Last_Name
FROM employees e
WHERE e.emp_no IN (
    SELECT dm.emp_no
    FROM dept_manager dm
    WHERE e.gender = 'F' AND dm.to_date = '9999-01-01'
    );