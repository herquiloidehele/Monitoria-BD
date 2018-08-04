
	SET SERVEROUTPUT ON;
DECLARE 

	message char(1) := 'HELLO WORLD !';

BEGIN

	dbms_output.put_line(message);

END;
/