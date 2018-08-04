-- Parte Teorica
-- 1
CREATE OR REPLACE VIEW letrasAE AS
SELECT ename FROM emp
WHERE ename LIKE '%A%' 
AND ename LIKE '%E%'


-- 2

CREATE OR REPLACE VIEW emp_sal_view AS
SELECT empno, ename, sal*12 salario_an, dname 
FROM emp e INNER JOIN dept d 
ON e.deptno = d.deptno
WHERE mgr IS NOT NULL;   



CREATE SEQUENCE sequence_teste
	MINVALUE 10
	INCREMENT BY 5
	NOMAXVALUE
	CACHE 50;


	CREATE OR REPLACE VIEW mgr_emp AS
	SELECT *from employees
	where employee_id in (
			SELECT manager_id FROM (
					SELECT manager_id, COUNT(employee_id) 
					FROM employees
					GROUP BY  manager_id
					HAVING COUNT(employee_id) > 5
				)
			);


	
	CREATE OR REPLACE VIEW JOB_EMP AS
	SELECT j.job_title, COUNT(employee_id) num_emp 
	FROM employees e INNER JOIN jobs j
	ON e.job_id = j.job_id
	GROUP BY j.job_title;



	-- Correcao do Teste
	SELECT * from (
			SELECT d.department_name, e.commission_pct
			from departments d inner join employees e 
			on d.department_id = e.department_id
		)
	where (SELECT COUNT (first_name) from employees) >5;


SELECT * FROM LOCATIONS l inner join
COUNTRIES c on l.COUNTRY_ID = c.COUNTRY_ID WHERE l.LOCATION_ID is null

SELECT DEPARTMENT_ID FROM EMPLOYEES e inner join departments d on e.department_id = d.department_id
HAVING COUNT(SELECT employee_id from employees where commission_pct is not null)>5;
GROUP BY d.DEPARTMENT_ID;

SELECT DEPARTMENT_ID FROM EMPLOYEES
-- WHERE COMMISSION_PCT IS NOT NULL
GROUP BY DEPARTMENT_ID
HAVING COUNT(COMMISSION_PCT)>5;

-- Imildo
SELECT a.DEPARTMENT_ID, b.employee_id from employees a join ( SELECT
	employee_id from employees where commission_pct is not null) b
	on a.employee_id=b.employee_id GROUP by a.department_id, b.employee_id HAVING COUNT (b.employee_id) > 5;

SELECT *from employees e join 
(SELECT b.department_id, COUNT(employee_id) from employees
GROUP by e.department_id order by COUNT(employee_id) desc) b
on e.department_id=b.department_id;


SELECT *from employees where department_id = (
	SELECT department_id from employees GROUP by department_id having department_id is not null 
	order by COUNT(employee_id) desc where rownum = 1
);

select ename from emp where ename startwith('A', 'B');




	