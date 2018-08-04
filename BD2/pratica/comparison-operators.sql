-- Like
-- Between
-- IN
-- IS NULL

SET SERVEROUTPUT ON;

DECLARE

	PROCEDURE comparar(valor VARCHAR2, padrao VARCHAR2) IS
	BEGIN
		IF valor like padrao THEN
			DBMS_OUTPUT.PUT_LINE('TRUE');
		ELSE
			DBMS_OUTPUT.PUT_LINE('FALSE');
		END IF;
	END;


	PROCEDURE intervalo (valor NUMBER, limite_inferior NUMBER, limite_superior NUMBER) IS
	BEGIN
		IF valor BETWEEN limite_inferior AND  limite_superior THEN
			DBMS_OUTPUT.PUT_LINE('TRUE');
		ELSE
			DBMS_OUTPUT.PUT_LINE('FLASE');
		END IF;
	END;


BEGIN

	-- comparar('Herquiloide', 'H%');
	-- comparar('Maria', '_a___');

	intervalo(10, 20, 100);
	intervalo(10, 0, 100);

END;
/
