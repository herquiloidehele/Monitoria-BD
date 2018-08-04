-- 1.
	SELECT deptno, max(sal) salarioMaximo, min(sal) salarioMinimo, sum(sal) salarioTotal
	FROM emp
	GROUP BY deptno; 

-- 2. 
	SELECT count(distinct sal) quantidadeSalario 
	FROM emp;

-- 3.
	SELECT deptno, COUNT(*) quantidade_funcionarios
	FROM emp
	GROUP BY deptno;

-- 4. 
	SELECT deptno, COUNT(*) quantidade_funcionarios, SUM(sal) salarioTotal
	FROM emp
	GROUP BY deptno;


-- 5.
	SELECT (max(sal) - min(sal)) diferenca_MAX_MIM
	FROM EMP;

-- 6. 
	select dname, count(empno) 
	from emp natural join dept
	GROUP BY dname
	Having count(deptno) = (
	select max(quantidade_emp) quantidade_maxima
		from (
			select deptno, count(empno) quantidade_emp
			from emp
			GROUP BY deptno
		)
	);

-- 7.
	SELECT dname, max(sal) salarioMaximo
	FROM emp natural join dept 
	GROUP BY dname
	HAVING max(sal) > 2000;

-- 8.
	SELECT dname, avg(sal) salarioMedio
	FROM emp natural join dept 
	GROUP BY dname;

-- 9.
	SELECT max(salarioMedio)

			
		SELECT dname, avg(sal) salarioMedio
		FROM emp natural join dept 
		GROUP BY dname;

SELECT *from emp where (sal*12) > 35000;

-- 2.


select sal+1, (select *from emp) from emp;


SELECT nome, hiredate, loc from emp e left join dept d on e.empno=d.deptno;

select *from emp where to_Char(hiredate, 'YYYY') = 1981;

SELECT ename comm, nvl2(sal, sal+(sal*0.15), sal+(sal*0.2)) as novoSalario from emp;



-- Parte 2

-- 1. 
select job_title, avg(salary) salarioMedio
from employees natural join jobs
GROUP BY job_title
Having avg(salary) > 1000;

select job_title, (min_salary+max_salary)/2  salarioMedio
from jobs;


-- 2.
SELECT department_name, employee_id, first_name
FROM employees e inner JOIN departments d
ON e.employee_id = d.manager_id;

-- 3. 
select last_name, department_name, job_title, TO_NUMBER(TO_CHAR(start_date, 'YYYY')) dataInicio
FROM employees emp 
	INNER JOIN departments dept ON emp.department_id = dept.department_id
	INNER JOIN job_history jh ON emp.employee_id = jh.employee_id
	Inner Join jobs j ON jh.job_id = j.job_id
WHERE TO_NUMBER(TO_CHAR(start_date, 'YYYY')) BETWEEN 2002 AND 2005;


-- 4.
	SELECT job_title, avg(salary) salario_medio
	FROM jobs natural JOIN employees emp
	WHERE employee_id 
	IN (
			SELECT employee_id FROM job_history where TO_CHAR(end_date) is not null
		)
	GROUP BY job_title;


-- 5
SELECT * 
FROM jobs
WHERE job_id =  (
	SELECT emp.job_id
	FROM employees emp 
		INNER JOIN job_history jh ON emp.employee_id = jh.employee_id
		INNER JOIN jobs j ON jh.job_id = j.job_id
	WHERE TO_CHAR(end_date) IS NOT NULL AND job_title = 'Programmer'
);

select *
FROM jobs natural JOIN employees
where employees.employee_id 
IN(
	SELECT distinct employee_id 
	FROM job_history JOIN JOBS USING(job_id)
	WHERE job_title = 'Programmer'
);

-- 6.
select *
FROM departments where department_id 
 IN(
	SELECT department_id 
	FROM employees 
	GROUP BY department_id
	HAVING MAX(salary) > 1000
);

select manager_id, count(employee_id)
from employees
GROUP by manager_id
having count(employee_id) > 5;




SELECT city from locations
where location_id = 
	(SELECT location_id from departments 
	 where department_id = 
	 	(SELECT department_id from employees where employee_id = 105) 
	 );
	