SET SERVEROUTPUT ON;

DECLARE

	string1 VARCHAR2(50) := 'EU SOU UMA STRING';
	string2 CHAR(10) := 'A';

BEGIN

	DBMS_OUTPUT.PUT_LINE('REPRESENTACAO DO CODIGO ASCII: ' || ASCII(string2));
	DBMS_OUTPUT.PUT_LINE('RETORNA O CARACTER ATRAVEZ DO VALOR ASCII: ' || CHR(23));
	DBMS_OUTPUT.PUT_LINE(CONCAT(string2, 'CONCATENACAO: '));
	DBMS_OUTPUT.PUT_LINE(INITCAP('herquiloide'));
	DBMS_OUTPUT.PUT_LINE(INSTR('HERQUILOIDE', 'LOIDE'));
	DBMS_OUTPUT.PUT_LINE('TAMANHO DA STRING: ' || LENGTHB(string1));
	DBMS_OUTPUT.PUT_LINE(ASCII(NULL));

END;
/