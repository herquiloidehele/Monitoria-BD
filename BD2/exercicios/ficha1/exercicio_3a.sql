DECLARE

	max_deptno INTEGER(3);

BEGIN

	SELECT MAX(department_id) INTO max_deptno FROM departments;

	DBMS_OUTPUT.PUT_LINE('O MAXIMO DEPARTAMENTO ID: '|| max_deptno);

END;
/