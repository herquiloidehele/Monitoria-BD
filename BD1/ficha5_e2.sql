-- CREATE TABLE ESTUDANTES(
-- 	Num_Insc NUMBER(2) PRIMARY KEY,
-- 	Nome VARCHAR2(30),
-- 	Aplido VARCHAR2(30),
-- 	Email VARCHAR2(30) CONSTRAINT estudantes_email_uk UNIQUE,
-- 	Telefone VARCHAR2(30)
-- );

-- ALTER TABLE ESTUDANTES RENAME COLUMN Aplido to Apelido;

-- CREATE TABLE DISCIPLINAS (
-- 	Cod_disciplina NUMBER(2) PRIMARY KEY,
-- 	Nome VARCHAR2(30),
-- 	Peso_disc NUMBER(2),
-- 	CONSTRAINT disciplinas_Peso_disc_nn check (Peso_disc IS NOT NULL),
-- 	CONSTRAINT disciplinas_Peso_disc_between check (Peso_disc  between 1 and 5),
-- 	CONSTRAINT disciplinas_nome_ck_length check(LENGTH(Nome) <= 30)
-- );

CREATE TABLE INSCRICAO(
	Num_Insc NUMBER(2),
	Cod_disciplina NUMBER(2),
	Data Date DEFAULT SYSDATE,
	CONSTRAINT inscricao_est_disc_pk PRIMARY key (Num_Insc, Cod_disciplina),
	CONSTRAINT inscricao_estudante_fk FOREIGN KEY (Num_Insc) references ESTUDANTES(Num_Insc),
	CONSTRAINT inscricao_disciplina_fk FOREIGN KEY (Cod_disciplina) references DISCIPLINAS(Cod_disciplina)
);