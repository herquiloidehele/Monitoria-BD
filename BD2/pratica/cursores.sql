SET SERVEROUTPUT ON;

DECLARE

	c_empno emp.empno%type;
	c_ename emp.ename%type;

	
	CURSOR c_emp IS SELECT empno, ename FROM EMP;

BEGIN

	OPEN c_emp;

	while(sql%found) LOOP
		FETCH c_emp INTO c_empno, c_ename;
		DBMS_OUTPUT.PUT_LINE('Codigo: '|| c_empno || ' Nome: '|| c_ename);
	END LOOP;
	CLOSE c_emp;
END;
/