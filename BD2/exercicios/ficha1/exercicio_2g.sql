DECLARE

	numero INTEGER(3) := &Numero;
	fatorial INTEGER(5) := 1;
BEGIN
	
	IF(numero > 1) THEN

		FOR contador IN REVERSE 1 .. numero LOOP
			fatorial := fatorial * contador;
		END LOOP;
		DBMS_OUTPUT.PUT_LINE('O FACTORIAL DE '|| numero || ' eh: '|| fatorial);
	ELSIF(numero < 0) THEN
		DBMS_OUTPUT.PUT_LINE('NAO EXISTE FACTORIAL DE NUMERO NEGATIVO');
	END IF;

END;
/