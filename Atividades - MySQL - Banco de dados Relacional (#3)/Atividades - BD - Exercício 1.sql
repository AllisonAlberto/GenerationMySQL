create database db_rh;

use db_rh;

create table tb_funcionarios (
	id bigint auto_increment,
    nome varchar (100) not null,
    cargo varchar (50) not null,
    salario decimal (8,2) not null,
    ativo boolean,
    primary key (id)
);
insert into tb_funcionarios(nome, cargo, salario, ativo) values ("Allison", "Dev Java Jr.", 1999.99, true);
insert into tb_funcionarios(nome, cargo, salario, ativo) values ("Luís", "Dev full stack", 13999.99, true);
insert into tb_funcionarios(nome, cargo, salario, ativo) values ("Yuri", "Professor", 15999.90, true);
insert into tb_funcionarios(nome, cargo, salario, ativo) values ("Rafael", "Back-end", 12999.99, true);
insert into tb_funcionarios(nome, cargo, salario, ativo) values ("Samantha", "Dev Java Jr.", 1999.99, true);

select * from tb_funcionarios;

select nome from tb_funcionarios where salario > 2000.00;

select nome from tb_funcionarios where salario < 2000.00;

update tb_funcionarios set cargo = "Dev full stack" where id = 5;

select * from tb_funcionarios;