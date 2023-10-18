#Criar a base de dados
create database etec;

#apagar a base de dados
drop database etec;

#Selecionar base de dados
use etec;

#Criar tabela
create table aluno(
   rm int primary key,
   nome varchar(30),
   datanasc date
);

#Apagar tabela
drop table aluno;

#Inserir dados na tabela
insert into aluno (rm, nome, datanasc)
values (123, 'MARCOS COSTA', '2015-07-06');

insert into aluno (rm, nome, datanasc)
values (133, 'ANINOADO CRESPÂNCIO', '200-05-01');

insert into aluno (rm, nome, datanasc)
values (113, 'ZIZUNDA UMIGUINDA', '2010-02-27');

#Consultar dados na tabela
select * from aluno
where rm = 123;

select * from aluno
where datanasc = '2015-07-06';

select * from aluno
where datanasc between '2010-01-01' and '2023-10-11';

select * from aluno
where datanasc between '2010-01-01' and '2023-10-11'
     and nome = "MARCOS";
     
select * from aluno
where datanasc between '2010-01-01' and '2023-10-11'
     and nome like "MARCOS%";
     
update aluno set nome = "MARCOS COSTA DE SOUSA"
where rm = 123;

delete from aluno
where rm = 123;
