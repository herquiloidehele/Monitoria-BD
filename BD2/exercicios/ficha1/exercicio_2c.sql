DECLARE

	PROCEDURE exerc_d (media IN DOUBLE PRECISION) IS
	BEGIN
		CASE 
			WHEN media <10 THEN DBMS_OUTPUT.PUT_LINE('EXCLUIDO');
			WHEN media >= 10 AND media < 14  THEN DBMS_OUTPUT.PUT_LINE('ADMITIDO');
			WHEN media > 14 THEN DBMS_OUTPUT.PUT_LINE('Dispensado'); 
		ELSE
			DBMS_OUTPUT.PUT_LINE('MEDIA INVALIDA');
		END CASE; 
	END;

	PROCEDURE exerc_c IS
		nome VARCHAR2(50);
		TYPE notas_array IS VARRAY(3) OF NUMBER(3,1);
		notas notas_array;
		media DOUBLE PRECISION DEFAULT 0;
	BEGIN

		notas := notas_array(&nota1, &nota2, &nota3);
		media := (notas(1) + notas(2))*0.3 + notas(3) * 0.4;

		DBMS_OUTPUT.PUT_LINE('A MEDIA EH: '|| media);
		exerc_d(media);
	END;


BEGIN
	exerc_c();
END;
/