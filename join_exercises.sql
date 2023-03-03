USE ymir_employees;

# SELECT CONCAT(e.first_name, ' ', e.last_name) AS Name, d.dept_name as Department
# FROM employees as e, departments as d, dept_manager as dm
# WHERE dm.emp_no = e.emp_no AND dm.to_date = '9999-01-01'
# GROUP BY Name;


SELECT  d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name
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

SELECT t.title as title, COUNT(*) as TOTAL
FROM titles as t
        JOIN dept_emp as de
            ON t.emp_no = de.emp_no
        JOIN departments as d
            ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Customer Service' AND t.to_date = '9999-01-01' AND de.to_date = '9999-01-01'
GROUP BY t.title
ORDER BY COUNT(*) desc;

SELECT d.dept_name as 'Department Name', CONCAT(e.first_name, ' ', e.last_name) as 'Employee Name', s.salary as Salary
FROM departments as d
        JOIN dept_manager as dm
            ON d.dept_no = dm.dept_no
        JOIN employees as e
            ON e.emp_no = dm.emp_no
        JOIN salaries as s on dm.emp_no = s.emp_no
WHERE dm.to_date = '9999-01-01' AND s.to_date = '9999-01-01'
GROUP BY d.dept_name, e.first_name, s.salary;

SELECT CONCAT(e.first_name, ' ', e.last_name) as `Employee Name`
     , d.dept_name as `Department`
    , CONCAT(e2.first_name, ' ', e2.last_name) as `Manager`
FROM employees as e
    inner join dept_emp de on e.emp_no = de.emp_no
    inner join departments d on de.dept_no = d.dept_no
    inner join dept_manager dm on d.dept_no = dm.dept_no
    inner join employees e2 on dm.emp_no = e2.emp_no
where de.to_date = '9999-01-01'
    and dm.to_date = '9999-01-01';