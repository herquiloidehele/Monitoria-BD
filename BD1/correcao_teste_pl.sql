CREATE TABLE DEPARTAMENTO(
	Codigo number(3),
	Nome varchar2(50),
	Localizacao varchar2(50),
	Data_Criacao Date,
	CONSTRAINT departamento_codigo_pk PRIMARY KEY(Codigo),
	CONSTRAINT departamento_localizacao_ck CHECK (LENGTH(Localizacao) BETWEEN 5 AND 50),
	CONSTRAINT departamento_nome_nn CHECK (Nome is NOT NULL)
);


CREATE TABLE EMPREGADO(
	Codigo number(3),
	Nome varchar2(50),
	sexo varchar2 (20),
	Data_admissao DATE DEFAULT SYSDATE,
	chefe number(3),
	departamento_id number (3),
	CONSTRAINT empregado_Codigo_pk PRIMARY KEY (Codigo),
	CONSTRAINT empregado_Nome_nn CHECK (Nome is NOT NULL),
	CONSTRAINT empregado_sexo_nn CHECK (sexo IS NOT NULL),
	CONSTRAINT empregado_data_admissao_nn CHECK (Data_admissao is NOT NULL),
	CONSTRAINT empregado_sexo_ck CHECK (sexo in ('Masculino', 'Feminino', 'Outros')),
	CONSTRAINT empregado_chefe_fk FOREIGN KEY(chefe) REFERENCES EMPREGADO(Codigo),
	CONSTRAINT empregado_departmento_id_fk FOREIGN key(departamento_id) REFERENCES DEPARTAMENTO(Codigo) 
);