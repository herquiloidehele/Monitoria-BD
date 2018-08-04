-- 1

SELECT EMPLOYEE_ID FROM JOB_HISTORY GROUP BY EMPLOYEE_ID HAVING COUNT(*) > 1

-- 2
SELECT DEPARTMENT_ID FROM EMPLOYEES 
WHERE COMMISSION_PCT IS NOT NULL
GROUP BY DEPARTMENT_ID 
HAVING COUNT(COMMISSION_PCT)>5


-- 3
SELECT TO_CHAR(hire_date, 'YYYY'), COUNT(employee_id)
	FROM employees 
	GROUP BY TO_CHAR(hire_date, 'YYYY')
	HAVING COUNT(employee_id) IN (
		SELECT max(quant_emp) quantidade_empregados
			FROM (
			SELECT COUNT(employee_id) quant_emp
			FROM employees
			GROUP BY TO_CHAR(hire_date, 'YYYY')
		)
	);