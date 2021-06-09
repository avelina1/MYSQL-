create database db_escola;

use db_escola;
drop table db_alunos;
create table tb_alunos(
id bigint auto_increment,
nome varchar(255) not null,
nota decimal not null,
curso varchar(255) not null,
turma varchar(255) not null,
media decimal not null,
primary key (id)
);

insert into tb_alunos(nome, nota, curso, turma, media) values ("Marcos", 10, "Matematica", "12", 8.0);
insert into tb_alunos(nome, nota, curso, turma, media) values ("Joana", 8, "Matematica", "10", 6.0);
insert into tb_alunos(nome, nota, curso, turma, media) values ("Felipe", 9, "Teologia", "6", 7.0);
insert into tb_alunos(nome, nota, curso, turma, media) values ("Joao", 7, "Informatica", "15", 5.0);
insert into tb_alunos(nome, nota, curso, turma, media) values ("Jorge", 8, "TI", "14", 7.0);

Select * from tb_alunos;
Select * from tb_alunos where nota>7.0;
Select * from tb_alunos where nota<7.0;

update tb_alunos set nome="Maria" where id=5;


