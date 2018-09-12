set verify off;

CREATE OR REPLACE FUNCTION fn_quant_emp(codigo_dept IN NUMBER) 
RETURN NUMBER is
quant_emp NUMBER(3) DEFAULT 0;
numero_invalido EXCEPTION;

BEGIN

	IF (codigo_dept <=0) THEN 
		RAISE numero_invalido;
	END IF;

	SELECT COUNT(employee_id) INTO quant_emp 
	FROM employees
	WHERE department_id = codigo_dept
	GROUP BY department_id;


	EXCEPTION 
	WHEN NO_DATA_FOUND THEN
		DBMS_OUTPUT.PUT_LINE('NAO FORAM ENCONTRADOS RESULTADOS');
		RETURN 0;
	WHEN INVALID_NUMBER OR numero_invalido THEN
		DBMS_OUTPUT.PUT_LINE('Codigo do departamento invalido');
		RETURN 0;
	WHEN OTHERS THEN 
		DBMS_OUTPUT.PUT_LINE('ALGUNA COISA DE ERRADO NAO ESTA CERTO');
		RETURN 0;
		RAISE;
	
	RETURN quant_emp;


END fn_quant_emp;
/

ACCEPT dept_cod NUMBER PROMPT 'INTRODUZA O CODIGO DO DEPARTAMENTO: ';


BEGIN

	DBMS_OUTPUT.PUT_LINE(fn_quant_emp(&dept_cod));
END;
/