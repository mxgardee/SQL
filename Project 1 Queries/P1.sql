SELECT employees.first_name, employees.last_name, departments.department_name, salaries.salary, overtime.hours_worked
FROM employees LEFT JOIN departments
ON employees.departments = departments.departments_id
LEFT JOIN salaries  
ON employees.salary = salaries.salary_id
LEFT JOIN overtime  
ON employees.overtime = overtime.overtime_id





	
	
