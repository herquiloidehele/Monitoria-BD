DECLARE 
	
	texto VARCHAR2(50) DEFAULT 'Eu Serei Bom a PL/SQL';
	numero Number(8,2) := 234959.89;
	constante CONSTANT CHAR(5) DEFAULT '8203F';
	booleano BOOLEAN := FALSE;
	data DATE DEFAULT TO_DATE(sysdate + 7); 

BEGIN
	DBMS_OUTPUT.PUT_LINE(texto);
	DBMS_OUTPUT.PUT_LINE(numero);
	DBMS_OUTPUT.PUT_LINE(constante);
	-- DBMS_OUTPUT.PUT_LINE(BOOLEAN_MGR.BOOL_TO_STR(BOOLEANO));
	DBMS_OUTPUT.PUT_LINE(data);
	IF booleano = true THEN
		DBMS_OUTPUT.PUT_LINE('TRUE');
	ELSE
		DBMS_OUTPUT.PUT_LINE('FALSE');
	END IF;
END;
/