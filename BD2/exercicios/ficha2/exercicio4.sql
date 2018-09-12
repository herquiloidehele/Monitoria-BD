
DECLARE


	-- FUNCTION getNomeDept(department_id IN HR.employees.department_id%type) return varchar2 IS
	-- 	nome_departmento HR.departments.department_name%type;
	-- BEGIN

	-- 	FOR dept IN (select department_name
	-- 				 FROM departments
	-- 				 WHERE departments.department_id = department_id)
	-- 	LOOP

	-- 		DBMS_OUTPUT.PUT_LINE(dept.department_name);
	-- 		nome_departmento := dept.department_name;

	-- 	END LOOP;
		
	-- 	return nome_departmento;

	-- END getNomeDept; 
	
	PROCEDURE emp_salary IS
	BEGIN
		DBMS_OUTPUT.PUT_LINE(
			RPAD('Departamento', 20) ||
			RPAD('Salario Maximo', 20) ||
			RPAD('Salario Minimo', 20) ||
			'Salario Total');

		FOR departamento IN (
			SELECT 
			department_id,
			MAX(salary) AS salario_maximo,
			MIN(salary) AS salario_minimo,
			SUM(salary) AS salario_total
			FROM employees 
			GROUP BY department_id) LOOP

		DBMS_OUTPUT.PUT_LINE(
			RPAD((departamento.department_id), 20) ||
			RPAD(departamento.salario_maximo, 20)||
			RPAD(departamento.salario_minimo, 20)||
			departamento.salario_total);
		END LOOP; 

	END emp_salary;



BEGIN
	emp_salary;
	-- DBMS_OUTPUT.PUT_LINE(getNomeDept('100'));
	-- getNomeDept(100);
END;
/