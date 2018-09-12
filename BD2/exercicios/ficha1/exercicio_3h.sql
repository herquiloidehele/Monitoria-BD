
BEGIN

	UPDATE HR.employees set salary = salary + salary*0.5 
	WHERE (TO_CHAR(sysdate, 'YYYY')  - TO_CHAR(hire_date, 'YYYY')) >= 15;

	IF SQL%found then
		DBMS_OUTPUT.PUT_LINE('Foram actualizados: '|| SQL%ROWCOUNT || ' empregados');
	ELSIF SQL%NOTFOUND THEN 
		DBMS_OUTPUT.PUT_LINE('NENHUM EMPREGADO FOI ACTUALIZADO');
	END IF;

END;
/