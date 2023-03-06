USE ymir_employees;

SELECT *
from employees e
WHERE e.hire_date IN (
    SELECT e2.hire_date
    FROM employees e2
    WHERE e2.emp_no = '101010'
    );

SELECT DISTINCT t.title
FROM titles t
WHERE t.emp_no IN (
    SELECT e.emp_no
    FROM employees e
    WHERE e.first_name = 'Aamod'
    );

SELECT e.first_name as `First Name`, e.last_name as `Last Name`
FROM employees e
WHERE e.gender = 'F' AND e.emp_no IN (
    SELECT dm.emp_no
    FROM dept_manager dm
    WHERE dm.to_date = '9999-01-01'
    );

SELECT d.dept_name as dept_name
FROM departments d
WHERE d.dept_no IN (
    SELECT dm.dept_no
    FROM dept_manager dm
    WHERE dm.to_date = '9999-01-01' AND dm.emp_no IN (
        SELECT e.emp_no
        FROM employees e
        WHERE e.gender = 'F'
        )
    );

# SELECT e.first_name, e.last_name
# FROM employees e
# WHERE e.emp_no = (
#     select s.emp_no
#     from salaries s
#     order by s.salary desc
#     limit 1);