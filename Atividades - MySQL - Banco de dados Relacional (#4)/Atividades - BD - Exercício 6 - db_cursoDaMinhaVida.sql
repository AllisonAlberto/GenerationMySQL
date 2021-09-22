create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria (
	id bigint auto_increment,
    nome varchar (100) not null,
    tipo varchar (100) not null,
    tempo varchar (100) not null,
    primary key (id)
);

insert into tb_categoria (nome, tipo, tempo) values ("Curso A", "Presencial", "1 mês");
insert into tb_categoria (nome, tipo, tempo) values ("Curso B", "EAD", "3 semanas");
insert into tb_categoria (nome, tipo, tempo) values ("Curso C", "EAD", "6 meses");
insert into tb_categoria (nome, tipo, tempo) values ("Curso D", "Presencial ", "2 meses");
insert into tb_categoria (nome, tipo, tempo) values ("Curso E", "Presencial", "2 semanas");

create table tb_produto (
	id bigint auto_increment,
	nome varchar (100) not null,
    idade int not null,
    preco decimal (5,2) not null,
    turma varchar (100) not null,
    disponibilidade boolean not null,
    categoria_id bigint not null,
    primary key (id),
	foreign key (categoria_id) references tb_categoria (id)
);
    
insert into tb_produto (nome, idade, preco, turma, disponibilidade, categoria_id)
values ("Aluno 1", 20, 80, "Turma 3", true, 1),
	   ("Aluno 2", 19, 60, "Turma 1", true, 2),
	   ("Aluno 3", 30, 60, "Turma 1", true, 2),
	   ("Aluno 4", 25, 300, "Turma 1", true, 3),       
 	   ("Aluno 5", 18, 100, "Turma 3", true, 4),
	   ("Aluno 6", 21, 100, "Turma 2", false, 4),       
	   ("Aluno 7", 22, 50, "Turma 3", true, 5),
	   ("Aluno 8", 27, 50, "Turma 1", true, 5);
       
select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3 and 60;

select * from tb_produto where nome like "%j%";

select * from tb_produto inner join tb_categoria on tb_produto.categoria_id = tb_categoria.id;

select * from tb_produto where categoria_id in (1);