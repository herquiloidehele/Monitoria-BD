CREATE OR REPLACE PROCEDURE todos_emp IS

BEGIN
	FOR empregado IN (Select *from HR.employees) LOOP
		DBMS_OUTPUT.PUT_LINE(
			RPAD(empregado.first_name, 30) ||
			RPAD(empregado.salary, 30) ||
			RPAD(empregado.phone_number, 30) ||
			empregado.hire_date
			);
	END LOOP;

	EXCEPTION
		WHEN PROGRAM_ERROR THEN
			DBMS_OUTPUT.PUT_LINE('Nenum resultado foi encontrado');

END todos_emp;
/

BEGIN
	todos_emp;
end;
/
