

SET SERVEROUTPUT ON;

DECLARE
	SUBTYPE nome IS varchar(50);
	SUBTYPE idade IS integer;

	nome1  nome := 'Nome Teste';
	idade1 idade := 10;
BEGIN

	dbms_output.put_line(nome1 || ' tem '|| idade1 || ' anos');

END;
/