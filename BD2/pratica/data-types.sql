
SET SERVEROUTPUT ON;
	
DECLARE

	nome VARCHAR2(50) := '&Qual_eh_o_seu_nome';
	idade NUMBER(2) := &Introduza_a_idade;
	sexo CHAR(1) := '&Introduza_o_sexo';
	altura float := &Introduza_a_altura;
	

	constante CONSTANT VARCHAR2(10) := 'CONTANTE';
	nao_nulo INTEGER(2) NOT NULL := 10;

BEGIN

	
	
	
	DBMS_OUTPUT.PUT_LINE('O seu nome eh: ' || nome);
	DBMS_OUTPUT.PUT_LINE('Voce tem: ' || idade);
	DBMS_OUTPUT.PUT_LINE('Voce eh do sexo: ' || sexo);
	DBMS_OUTPUT.PUT_LINE('Voce tem altura de: '|| altura);
	DBMS_OUTPUT.PUT_LINE('Eu sou uma: ' || constante);
	DBMS_OUTPUT.PUT_LINE(nao_nulo);

END;
/