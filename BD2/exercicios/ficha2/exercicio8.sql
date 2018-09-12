
cursor teste




SET SERVEROUTPUT ON;
CREATE OR REPLACE FUNCTION buscar_emp RETURN SYS_REFCURSOR IS 
	empregados SYS_REFCURSOR;
BEGIN
	
	OPEN empregados FOR
	SELECT * FROM employees 
	WHERE to_char(sysdate(), 'YYYY') - to_char(hire_date, 'YYYY') > 10;

	return empregados;
END;
/


CREATE OR REPLACE PROCEDURE inserir_emp IS

	empregado HR.employees%ROWTYPE;
	curso_empregado SYS_REFCURSOR;

BEGIN
	curso_empregado := buscar_emp;

	LOOP
		FETCH curso_empregado INTO empregado;
		EXIT WHEN curso_empregado%NOTFOUND;
		-- DBMS_OUTPUT.PUT_LINE(empregado.FIRST_NAME);
		INSERT INTO emp_backup values (
			empregado.employee_id, 
			empregado.FIRST_NAME || ' ' || empregado.last_name, 
			empregado.salary, 
			empregado.email, 
			'dept' || '_' ||empregado.department_id
			);
	END LOOP;

	CLOSE curso_empregado;

END;
/





BEGIN
	inserir_emp;
END;
/