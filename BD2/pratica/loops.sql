-- basic loop
-- while loop
-- for loop

SET SERVEROUTPUT ON;

DECLARE
		contador NUMBER(4) DEFAULT 0;
	
	PROCEDURE infinit_loop IS
	BEGIN
		LOOP 
			DBMS_OUTPUT.PUT_LINE(contador);
			contador := contador+1;
			IF contador = 200 THEN
				EXIT;
			END IF;

		END LOOP;
	END;


	PROCEDURE while_loop (stop_condition number) IS

		condicao_paragem number := stop_condition;
	BEGIN
		WHILE (condicao_paragem <= 100) LOOP
			DBMS_OUTPUT.PUT_LINE(condicao_paragem);
			condicao_paragem := condicao_paragem + 2;
		END LOOP;
	END;


	PROCEDURE for_loop(inicio number, fim number) IS
		contador number(3);
	BEGIN

		FOR contador IN inicio .. fim LOOP
			DBMS_OUTPUT.PUT_LINE(contador);
		END LOOP;

	END;


	PROCEDURE for_loop_reverse (inicio NUMBER, fim NUMBER) IS
		contador number (3);
	BEGIN
		FOR contador IN REVERSE inicio .. fim LOOP
			DBMS_OUTPUT.PUT_LINE(contador);
		END LOOP;
	END;

	PROCEDURE for_loop_nomeado(i NUMBER, j NUMBER) IS
		contador_i NUMBER(2);
		contador_J NUMBER(2);
	BEGIN
		<< loop_externo >>
		FOR contador_i IN 0 .. i LOOP
			<< loop_interno >>
			FOR contador_J IN 0 .. j LOOP
				DBMS_OUTPUT.PUT_LINE('valor de I: '|| contador_i || ' Valor de J: '|| contador_J);
			END LOOP loop_interno;
		END LOOP loop_externo;

	END;

	PROCEDURE continue_loop_control IS
		contado NUMBER(2) DEFAULT 0;
	BEGIN
		WHILE contador <= 20 LOOP
			DBMS_OUTPUT.PUT_LINE(contador);
			contador := contador + 1;
			IF contador > 2 THEN
				contador := contador + 1;
				CONTINUE;
			END IF;

			-- DBMS_OUTPUT.PUT_LINE('instrucoes depois do continue');

		END LOOP;
	END;



BEGIN

	-- infinit_loop();
	-- while_procedure(20);
	-- for_loop_procedure(10,20);
	-- for_loop_reverse(50, 100);
	-- for_loop_nomeado(3,3);
	continue_loop_control();
	
END;
/