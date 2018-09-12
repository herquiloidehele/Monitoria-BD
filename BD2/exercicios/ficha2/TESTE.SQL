
declare
CURSOR empregados1 is select *from employees;


 function fn_emp return empregados1%ROWTYPE as
	
	CURSOR empregados is select *from employees;

begin

	open empregados;

	return empregados;
	
end;
/

begin
	null;
end;
/
