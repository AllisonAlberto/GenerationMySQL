create database db_escola;

use db_escola;

create table tb_alunos (
	id int auto_increment,
    nome varchar (100) not null,
    turma varchar (50) not null,
    nota1 decimal (4,2),
    nota2 decimal (4,2),
    primary key (id)
);

insert into tb_alunos (nome, turma, nota1, nota2) values ("Allison", "Turma 32", 6.00, 8.00);
insert into tb_alunos (nome, turma, nota1, nota2) values ("Márcio", "Turma 32", 6.00, 8.00);
insert into tb_alunos (nome, turma, nota1, nota2) values ("Caique", "Turma 32", 6.00, 8.00);
insert into tb_alunos (nome, turma, nota1, nota2) values ("João", "Turma 32", 6.00, 8.00);
insert into tb_alunos (nome, turma, nota1, nota2) values ("Yuri", "Turma 32", 6.00, 8.00);
insert into tb_alunos (nome, turma, nota1, nota2) values ("Julia", "Turma 32", 6.00, 8.00);
insert into tb_alunos (nome, turma, nota1, nota2) values ("André", "Turma 32", 6.00, 8.00);
insert into tb_alunos (nome, turma, nota1, nota2) values ("João", "Turma 32", 6.00, 8.00);

select nome from tb_alunos where nota1 > 7;

select nome from tb_alunos where nota1 < 7;

update tb_alunos set nota2 = 9.00 where id = 3;

select * from tb_alunos;