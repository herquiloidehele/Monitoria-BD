DECLARE

	CURSOR cursor_emp_dept IS 
	SELECT d.department_id, COUNT(e.department_id) empregados 
	FROM departments d INNER JOIN  employees e 
	ON d.manager_id = e.employee_id
	GROUP BY d.department_id;
	

	SELECT * 
	FROM departments d INNER JOIN  employees e 
	ON d.manager_id = e.employee_id
	GROUP BY d.department_id;


	select department_name, quant_emp from departments INNER JOIN
		(select department_id, count(employee_id) as quant_emp from employees
		group by department_id) interno
		ON department_id;

BEGIN

END;
/
