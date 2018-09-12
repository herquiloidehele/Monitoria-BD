SET SERVEROUTPUT ON;


DECLARE

	TYPE nome_array IS VARRAY(4) OF VARCHAR2(50);

	nomes nome_array;
	nomes1 nome_array;
	nome VARCHAR2(50);

BEGIN

	nomes := nome_array('nome_1', 'nome_1', 'nome_1', 'nome_1');

	FOR contador in 1..4 loop
		DBMS_OUTPUT.PUT_LINE(contador);
		nomes1 := nome_array('&nome');
		nomes(contador) := nomes1(1);
	END LOOP;


	FOR contador2 in 1..4 loop
		DBMS_OUTPUT.PUT_LINE(nomes(contador2));
	END LOOP; 

	

END;
/