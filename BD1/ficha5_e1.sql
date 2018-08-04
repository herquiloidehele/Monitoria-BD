-- CREATE TABLE ALUNOS(
-- 	Num_Mat number(4) primary key,
-- 	Nome varchar2(50) CONSTRAINT alunos_nome_nn NOT NULL,
-- 	Apelido varchar2(50) CONSTRAINT alunos_apelido_nn NOT NULL,
-- 	email varchar2(50) CONSTRAINT alunos_email_uk UNIQUE,
-- 	Domicilio varchar2(50),
-- 	Telefone varchar2(50)
-- );

CREATE TABLE DISCIPLINAS(
	Cod_Disc number(2),
	Nome varchar2(20),
	Peso_Disciplina number(1),
	CONSTRAINT disciplinas_Cod_disc_pk primary key(Cod_Disc),
	CONSTRAINT disciplinas_Nome_nn CHECK (Nome is Not Null),
	CONSTRAINT disciplinas_Peso_Disciplina_nn CHECK(Peso_Disciplina is Not Null),
	CONSTRAINT disciplinas_Peso_disciplina_ck CHECK (Peso_Disciplina in between 1 and 5)
);

CREATE TABLE NOTAS(
	Num_Mat number(4),
	Cod_Disc number(2),
	Data DATE DEFAULT SYSDATE,
	NOTA number(2) CONSTRAINT notas_nota_ck CHECK(NOTA between 0 and 10),
	CONSTRAINT notas_Num_Mat_Cod_Disc_pk primary key(Num_Mat, Cod_Disc),
	CONSTRAINT notas_Num_Mat_fk FOREIGN KEY(Num_Mat) REFERENCES ALUNOS(Num_Mat),
	CONSTRAINT notas_Cod_Disc_fk FOREIGN KEY(Cod_Disc) REFERENCES DISCIPLINAS(Cod_Disc)	
);

INSERT INTO ALUNOS VALUES (0338, 'Ana', 'Gomes', 'agomes@gmail.com', 'Rua A, 28', '112233');
INSERT INTO ALUNOS VALUES (0254, 'Rosa', 'Lopes','rlopes@gmail.com', 'Av. k, 23', '112244');
INSERT INTO ALUNOS VALUES (0168, 'Juan', 'Gracia', 'jgracia@gmail.com', 'Rua G, 11', '112255');

INSERT INTO DISCIPLINAS VALUES(1, 'Programacao 2', 4);
INSERT INTO DISCIPLINAS VALUES(2, 'Base de Dados 1', 5);
INSERT INTO DISCIPLINAS VALUES(3, 'Ingles 1', 2);

INSERT INTO NOTAS VALUES (0338, 1, TO_DATE('02-02', 'mm dd'), 8);
INSERT INTO NOTAS VALUES (0254, 2, TO_DATE('02-02', 'mm dd'), 5);
INSERT INTO NOTAS VALUES (0168, 2, TO_DATE('02-02', 'mm dd'), 3);
INSERT INTO NOTAS VALUES (0338, 2, TO_DATE('02-02', 'mm dd'), 5);
INSERT INTO NOTAS VALUES (0338, 3, TO_DATE('02-02', 'mm dd'), 7);
INSERT INTO NOTAS VALUES (0254, 1, TO_DATE('02-02', 'mm dd'), 6);
INSERT INTO NOTAS VALUES (0168, 1, TO_DATE('02-02', 'mm dd'), 9);
INSERT INTO NOTAS VALUES (0168, 3, TO_DATE('02-02', 'mm dd'), 5);


CREATE table curso
(id number(6) primary KEY,
Nome varchar2(40)
);

CREATE table estudante(
id number(6) primary key,
nomeEst varchar2(50),
id_curso REFERENCES curso(id)
);

INSERT INTO curso VALUES ( 1,'Mat');
INSERT INTO curso VALUES ( 2,'Bio');
INSERT INTO curso VALUES ( 3,'Fio');

INSERT INTO estudante VALUES ( 1,'Joao', 1);
INSERT INTO estudante VALUES ( 2,'Manuel', 2);
INSERT INTO estudante VALUES ( 3,'Mateus', 2);


select * from curso c left join estudante e on c.id = e.id_curso;




select d.department_name, e.first_name 
from departments d inner join Locations l on 
l.location_id=d.location_id inner join 
employees e on e.employee_id= d.manager_id where l.city ='Toronto';

























