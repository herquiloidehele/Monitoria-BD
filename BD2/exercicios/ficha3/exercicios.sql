Diferenca entre sys e system
	Sys pode executar todas as funcoes administrativas 
	Todas as tabelas base e cruciais para o funcionamento base de dados estao armazenada
	no schema do sys.
	As tabelas do schema sys so podem ser manipuladas pela propria base de dados.

1. A autenticacao com Sys é obrigatoria que seja com o previlegio de Sysdba, o que lhe permite
   fazer as operacoes de mais alto nivel na base de dados (backup e recovry).

2. Número de objectos de cada um: sys tem 4000 e system tem 100.
3. SYS pode executar as terefas de adminstracao de mais alto nivel: backup e recovery 
   enqunto que o System nao.
4. SYSDBA 

SysOper e SysDBA - Ambos sao dois previlegios que permitem fazer fazer accoes administrativas (como shutdown and startup).
com o diferencial de que o Sysoper nao tem acesso aos dados de nenuma tabela;
O numero de tabelas é diferente.




create user Abel identified by 123;
create user Maria identified by 123;
create User Joana identified by 123;
create user Ana identified by 123;
create user Mateus identified by 123;


grant connect to joana;

grant create view TO Abel;

grant create session to Mateus;
grant select any table to Mateus;
grant connect to Mateus;



-- Ver alista de previlegios e roles afectes aos users
select *from dba_role_privs;






