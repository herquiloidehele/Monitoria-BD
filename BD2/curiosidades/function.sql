set serveroutput on;



CREATE FUNCTION fn_testes RETURN employees%ROWTYPE IS
	empregado employees%ROWTYPE;
BEGIN

	SELECT * INTO empregado from employees where employee_id = 170;
	RETURN empregado;

END;
/

DECLARE

data_type employees%ROWTYPE; 

BEGIN
	data_type := fn_testes();
	DBMS_OUTPUT.PUT_LINE(data_type.salary);
END;
/