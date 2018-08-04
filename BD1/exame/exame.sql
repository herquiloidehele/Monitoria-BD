	
	select d.department_name, l.street_address, dept_emp.count_emp
		from departments d natural join locations l natural join
		(select d.department_id, count(e.employee_id) count_emp
		from employees e right join departments d
		on e.department_id = d.department_id
		group by d.department_id) dept_emp;



	SELECT first_name , last_name , salary , department_id 
	FROM employees
	WHERE salary < (SELECT AVG(salary) 
                       FROM employees )
	AND   department_id all (SELECT department_id 
                       FROM employees 
                       WHERE first_name = 'John');


	select * from employees where to_char(hire_date, 'DD') <=15; 