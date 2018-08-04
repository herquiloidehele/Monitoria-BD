-- Cricao de Indices


create index nota_idx on NOTAS(nota);

create or replace view Dados_Aluno_View 
	as (select Num_Mat as Numero_Matricula, Nome as NomeEst, Telefone from Alunos);

create sequence AlunoSeq
	START WITH 400
	INCREMENT BY 10
	NOMAXVALUE
	MINVALUE 0
	NOCICLE;