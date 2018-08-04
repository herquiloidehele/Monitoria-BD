CREATE TABLE PROJECTOS (
	Numero number (2),
	Titulo varchar2 (50),
	Orcamento number (4),
	Data_termino Date DEFAULT SYSDATE,
	Data_inicio Date DEFAULT SYSDATE,
	CONSTRAINT projectos_numero_pk PRIMARY KEY (Numero), 
	CONSTRAINT projectos_titulo_nn CHECK (Titulo IS NOT NULL),
	CONSTRAINT projectos_orcamento_ck CHECK (Orcamento < 1000) 
);


CREATE TABLE EMPREGADOS (
	Numero number (3),
	Nome varchar2(50),
	Morada varchar2(20),
	Sexo Char(1),
	CONSTRAINT empregados_Numero_pk PRIMARY KEY (Numero),
	CONSTRAINT empregados_morada_nn CHECK (Morada is NOT NULL),
	CONSTRAINT empregados_sexo_nn CHECK (Sexo is NOT NULL),
	CONSTRAINT empregados_nome_ck CHECK (LENGTH(NOME) BETWEEN 3 AND 50)
);


CREATE TABLE PROJECTOS_EMPREGADOS (
	Numero_Projectos number (2),
	Numero_Empregados number(3),
	Horas number (3),
	CONSTRAINT proj_emp_numero_pk PRIMARY KEY (Numero_Empregados, Numero_Projectos),
	CONSTRAINT proj_emp_projecto_fk FOREIGN KEY (Numero_Projectos) REFERENCES PROJECTOS (Numero),
	CONSTRAINT proj_emp_empregados_fk FOREIGN kEY (Numero_Empregados) REFERENCES EMPREGADOS (Numero) 
);

CREATE TABLE RELATORIOS (
	id number (3),
	Numero_Projectos number(2),
	Numero_Empregados number(3),
	CONSTRAINT relatorios_id_pk PRIMARY kEY (id),
	CONSTRAINT relatorios_emp_proj_fk FOREIGN kEY (Numero_Empregados, Numero_Projectos) REFERENCES PROJECTOS_EMPREGADOS (Numero_Empregados, Numero_Projectos)
);
