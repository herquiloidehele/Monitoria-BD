
-- 1.
SELECT EMPLOYEE_ID, JOB_TITLE, END_DATE-START_DATE DAYS 
FROM JOB_HISTORY NATURAL JOIN JOBS 
WHERE DEPARTMENT_ID=30

-- 2.
SELECT DEPARTMENT_NAME, FIRST_NAME, SALARY 
FROM DEPARTMENTS D JOIN EMPLOYEES E 
ON (D.MANAGER_ID=E.EMPLOYEE_ID) 
WHERE to_char(SYSDATE, 'YYYY') - to_char(hire_date, 'YYYY') > 14;


SELECT * FROM DEPARTMENTS
WHERE DEPARTMENT_ID IN 
(SELECT DEPARTMENT_ID FROM EMPLOYEES 
 WHERE EMPLOYEE_ID IN (SELECT EMPLOYEE_ID FROM JOB_HISTORY) 
 GROUP BY DEPARTMENT_ID
 HAVING MAX(SALARY) >10000)
