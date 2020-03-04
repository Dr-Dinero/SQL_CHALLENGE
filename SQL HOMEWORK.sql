1)List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT employees.emp_no,employees.last_name,employees.first_name,employees.gender,salaries.salary
FROM public.employees
INNER JOIN public.salaries
ON employees.emp_no=salaries.emp_no ;
2)List employees who were hired in 1986.
SELECT * FROM public.employees
WHERE EXTRACT(year from hire_date)=1986;
3)List the manager of each department with the following information: department number, department name, the managers employee number, last name, first name, and start and end employment dates.
SELECT departments.dept_no,departments.dept_name,employees.emp_no,employees.last_name,employees.first_name,employees.hire_date,dept_manager.dept_no
FROM public.departments,public.employees,public.dept_manager
WHERE public.departments.dept_no = public.dept_manager.dept_no
5)List all employees whose first name is "Hercules" and last names begin with "B."
SELECT * FROM public.employees
WHERE first_name='Hercules'
AND   last_name LIKE 'B%';

8)In descending order, list the frequency count of employee last_names, i.e., how many employees share each last name.
SELECT COUNT(emp_no),last_name FROM public.employees
GROUP BY emp_no
ORDER BY(last_name)DESC;