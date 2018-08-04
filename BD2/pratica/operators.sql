SET SERVEROUTPUT ON;

DECLARE 

	a NUMBER(2) DEFAULT 10;
	b NUMBER(2) DEFAULT 20;

BEGIN

	IF(a = b) THEN
		DBMS_OUTPUT.PUT_LINE(a || ' eh igual a ' || b);
	ELSE
		DBMS_OUTPUT.PUT_LINE(a || ' eh diferente de ' || b);
	END IF;

	IF(a > b) THEN
		DBMS_OUTPUT.PUT_LINE(a || ' eh maior que '|| b);
	ELSE
		DBMS_OUTPUT.PUT_LINE(a || ' eh menor ou igual a '||b);
	END IF;

	IF(b > a) THEN
		DBMS_OUTPUT.PUT_LINE(b || ' eh maior que '|| a);
	ELSE
		DBMS_OUTPUT.PUT_LINE(b || ' eh menor ou igual a '|| a);
	END IF;


END;
/
