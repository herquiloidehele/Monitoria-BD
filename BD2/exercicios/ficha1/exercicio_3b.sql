DECLARE

	empregado HR.employees%ROWTYPE;

BEGIN

	SELECT * INTO empregado FROM employees WHERE employee_id = 176;

	IF(SQL%FOUND) THEN
		DBMS_OUTPUT.PUT_LINE(
			RPAD(empregado.first_name, 10) || 
			RPAD(empregado.last_name, 30) ||
			RPAD(empregado.phone_number, 30) ||
			empregado.salary);
	END IF;

	IF(SQL%NOTFOUND) THEN
		DBMS_OUTPUT.PUT_LINE('EMPREGADO NAO ENCONTRADO');
	END IF;
END;
/