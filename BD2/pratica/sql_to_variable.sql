SET SERVEROUTPUT ON;

DECLARE
	v_nome funcionario.nome%type;
	v_sexo funcionario.sexo%type;
	v_salario funcionario.salario%type;
	v_id funcionario.id%type DEFAULT &Introduza_O_id_pesquia;

BEGIN

	SELECT nome, sexo, salario INTO v_nome, v_sexo, v_salario from funcionario
	WHERE id =  v_id;

	DBMS_OUTPUT.PUT_LINE(v_nome || ', ' || 'vc recebe ' || v_salario || 'MT como salaroo');
	DBMS_OUTPUT.PUT_LINE('MAGANA''s');

END;
/