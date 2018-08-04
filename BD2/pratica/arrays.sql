SET SERVEROUTPUT ON;


DECLARE

	TYPE nome_array IS VARRAY(3) OF VARCHAR2(50);

	nomes nome_array;

BEGIN

	nomes := nome_array('Her', 'teste', 'Teste');

	FOR contador IN 1 .. nomes.count LOOP

		DBMS_OUTPUT.PUT_LINE(NOMES(contador));

	END LOOP; 
	

END;
/