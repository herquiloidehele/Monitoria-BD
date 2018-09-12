DECLARE 

	CURSOR cursor_dept_mgr IS 
			SELECT * FROM departments d
			INNER JOIN employees e ON e.employee_id = d.manager_id;

	dept_mgr cursor_dept_mgr%ROWTYPE;


BEGIN

	OPEN cursor_dept_mgr;

	LOOP
		EXIT WHEN cursor_dept_mgr%NOTFOUND;
		FETCH cursor_dept_mgr INTO dept_mgr;
		DBMS_OUTPUT.PUT_LINE(RPAD(dept_mgr.department_name, 20) || RPAD(dept_mgr.first_name, 20));
	END LOOP;

	CLOSE cursor_dept_mgr;

END;
/


