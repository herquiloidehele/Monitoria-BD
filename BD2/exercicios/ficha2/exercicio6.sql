SET SERVEROUTPU ON;

CREATE OR REPLACE FUNCTION fn_departamentos RETURN SYS_REFCURSOR IS
	cursor_departamentos SYS_REFCURSOR;
BEGIN
	
	OPEN cursor_departamentos FOR 
	SELECT department_name, count(employee_id) AS quant_emp
	FROM employees NATURAL JOIN departments
	GROUP BY department_name
	HAVING COUNT(employee_id) > 3;

	return cursor_departamentos;

END;
/


DECLARE

	cursor_local SYS_REFCURSOR;	
	department_name VARCHAR2(50);
	quant_emp NUMBER(4);

BEGIN

	cursor_local := fn_departamentos;
	
	LOOP
		Fetch cursor_local INTO department_name, quant_emp;
		EXIT WHEN cursor_local%NOTFOUND;
		DBMS_OUTPUT.PUT_LINE(
			RPAD(department_name, 20) || 
			quant_emp);
	END LOOP;
	CLOSE cursor_local;
END;
/