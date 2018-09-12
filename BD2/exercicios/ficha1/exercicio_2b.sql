DECLARE

	PROCEDURE exerc_b IS
		area NUMBER(5,2) DEFAULT 0;
		pi CONSTANT DOUBLE PRECISION := 3.1415;
		raio number(3) DEFAULT &INTRODUZA_O_RAIO;

	BEGIN
		area := pi*raio**2;
		DBMS_OUTPUT.PUT_LINE('A area da circinferencia eh: '|| area);
	END;

BEGIN
	exerc_c();
END;
/