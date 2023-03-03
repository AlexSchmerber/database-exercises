USE ymir_employees;

# SELECT CONCAT(e.first_name, ' ', e.last_name) AS Name, d.dept_name as Department
# FROM employees as e, departments as d, dept_manager as dm
# WHERE dm.emp_no = e.emp_no AND dm.to_date = '9999-01-01'
# GROUP BY Name;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01';

SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no AND e.gender = 'F'
         JOIN departments as d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01';

SELECT t.title as Title, COUNT(title) as TOTAL
FROM employees as e
        JOIN titles as t ON e.emp_no = t.emp_no;

