	
	SET SERVEROUTPUT ON;

DECLARE
	
	PROCEDURE for_select IS
	BEGIN

		FOR empregado IN  (SELECT *FROM HR.EMPLOYEES) LOOP
			DBMS_OUTPUT.PUT_LINE(empregado.first_name);
		END LOOP;

	END;


	PROCEDURE FORMA_MANUAL IS
		empregado HR.EMPLOYEES%RowType;
		cursor cur_empregados IS (SELECT *FROM HR.EMPLOYEES);
	BEGIN

		OPEN cur_empregados;

		LOOP
			EXIT WHEN cur_empregados%NOTFOUND;
			FETCH cur_empregados INTO empregado; 
			DBMS_OUTPUT.PUT_LINE(empregado.first_name); 
		END LOOP;
		CLOSE cur_empregados;



	END;



BEGIN

	for_select();

	-- FORMA_MANUAL();

END;
/