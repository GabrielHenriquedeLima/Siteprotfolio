create database escola;
use escola;
create table Turma(
id_turma int not null auto_increment primary key,
sigla char(1) not null,
professor varchar(50) not null
);
create table Alunos(
id_aluno int not null auto_increment primary key,
nome_aluno varchar(45) not null,
matricula varchar(8) not null,
endereco varchar(100) not null,
idTurmaAluno int null,
foreign key(idTurmaAluno) references Turma(id_turma)
);
alter table Alunos add notas int not null;

update Alunos set notas = 12 where id_aluno = 1;
update Alunos set notas = 10 where id_aluno = 2;
update Alunos set notas = 2 where id_aluno = 3;
update Alunos set notas = 8 where id_aluno = 4;
update Alunos set notas = 9 where id_aluno = 5;

insert into Turma (id_turma, sigla,professor) values 
(1,'A','Ione'),
(2,'B','David'),
(3,'C','Conceicao');
-- Questão 1
select count(id_aluno) as quantidade_alunos ,idTurmaAluno as numero_turma from Alunos where idTurmaAluno = idTurmaAluno group by idTurmaAluno;
-- Questão 2
select count(id_aluno) as quantidade_alunos ,idTurmaAluno as numero_turma from Alunos where idTurmaAluno = idTurmaAluno group by idTurmaAluno asc;
-- Questão 3
select avg(notas) from Alunos  group by idTurmaAluno;
-- Questão 4
select  avg(notas)  from Alunos group by idTurmaAluno  order by avg(notas) desc;
-- Questão 5
select avg(notas)
from Alunos where notas  > 70 group by idTurmaAluno;
-- Questão 6
select matricula, notas, idTurmaAluno from Alunos where notas between 40 and 60 group by idTurmaAluno;
-- Questão 7
select matricula, notas, idTurmaAluno, nome_aluno, endereco from Alunos where notas = null;
-- Questão 8
alter table alunos add faltas int not null;
update Alunos set faltas = 12 where id_aluno = 1;
update Alunos set faltas = 60 where id_aluno = 2;
update Alunos set faltas = 20 where id_aluno = 3;
update Alunos set faltas = 18 where id_aluno = 4;
update Alunos set faltas = 0 where id_aluno = 5;

-- Questão 9
select matricula, notas, idTurmaAluno, nome_aluno, endereco, faltas from Alunos where faltas != 50 or faltas != null;
-- Questão 10
select matricula, notas, idTurmaAluno, nome_aluno, endereco, faltas from Alunos where faltas = 0;
-- Questão 11
alter table Turma  add quantidade_de_alunos int not null;
update Turma set quantidade_de_alunos = 12 where id_turma = 1;
update Turma set quantidade_de_alunos = 60 where id_turma = 2;
update Turma set quantidade_de_alunos = 20 where id_turma = 3;
select avg(notas) from Alunos, Turma where quantidade_de_alunos > 20 group by idTurmaAluno = id_turma;
select * from Alunos;


