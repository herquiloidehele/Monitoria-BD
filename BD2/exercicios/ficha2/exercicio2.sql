
DECLARE

	PROCEDURE empregados IS 

	CURSOR cursor_emp IS 
	SELECT first_name, last_name, salary 
	FROM employees
	WHERE lower(last_name) LIKE '%p%'
	OR lower(first_name) LIKE '%b';

	empregado cursor_emp%ROWTYPE;

	BEGIN

		OPEN cursor_emp;
	
			LOOP
				FETCH cursor_emp INTO empregado;
				EXIT WHEN cursor_emp%NOTFOUND;
				DBMS_OUTPUT.PUT_LINE(RPAD(empregado.first_name, 30) || empregado.last_name);
			END LOOP;

		CLOSE cursor_emp;

		EXCEPTION 
		WHEN CURSOR_ALREADY_OPEN THEN
			DBMS_OUTPUT.PUT_LINE('Abertura duplicada de cursor');
		WHEN INVALID_CURSOR THEN
			DBMS_OUTPUT.PUT_LINE('OPERACAO NAO SUPORTADA COM CURSORES'); 

	END empregados;


BEGIN
	empregados;
END;
/