CREATE TABLE emp_backup (
	employee_id NUMBER(6),
	first_name VARCHAR2(30),
	salary NUMBER(8,2),
	email VARCHAR2(25),
	department_name VARCHAR2(50),
	CONSTRAINT employee_id_pk PRIMARY KEY (employee_id),
	CONSTRAINT first_name_ck_nn CHECK (first_name IS NOT NULL),
	CONSTRAINT first_name_ck_length CHECK (length(first_name) >= 3),
	CONSTRAINT salary_ck_nn CHECK (salary IS NOT NULL),
	CONSTRAINT salary_ck_min CHECK (salary > 100),
	CONSTRAINT email_uniq UNIQUE (employee_id, email),
	CONSTRAINT department_name_ck_nn CHECK (department_name IS NOT NULL)
);