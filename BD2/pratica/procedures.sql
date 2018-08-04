-- CREATE OR REPLACE PROCEDURE teste_procedimento (texto IN VARCHAR) AS
-- BEGIN
-- 	DBMS_OUTPUT.PUT_LINE(texto);
-- END teste_procedimento;
-- /
SET SERVEROUTPUT ON; 

DECLARE
	
	a_var number(3) DEFAULT 10;
	b_var NUMBER(3) DEFAULT 20;
	c_var NUMBER(3);
	
	PROCEDURE in_out_parameter(a IN NUMBER, b IN NUMBER, c OUT NUMBER) AS

	BEGIN
		IF (a > 20) AND (b >20) THEN
			c := a + b;
		ELSE
			c := a * b;
		END IF;

		DBMS_OUTPUT.PUT_LINE('O VALOR DE C EH: ' || c);
	END;

BEGIN
	
	in_out_parameter(a_var, b_var, c_var);

END;



/