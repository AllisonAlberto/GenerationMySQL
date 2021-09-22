-- drop database db_farmacia_do_bem;
 
create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria (
	id int auto_increment,
	nome varchar (100) not null,
	tipo varchar (100) not null,
	tamanho varchar (100),
	primary key (id)
	);

insert into tb_categoria (nome, tipo, tamanho) values ("Remédio", "Para dor de Cabeça", "Infantil");
insert into tb_categoria (nome, tipo, tamanho) values ("Remédio", "Para dor de Cabeça", "Adulto");
insert into tb_categoria (nome, tipo, tamanho) values ("Vitamina", "Omega", "Adulto");
insert into tb_categoria (nome, tipo, tamanho) values ("Vitamina", "C", "Infantil");
insert into tb_categoria (nome, tipo, tamanho) values ("Higiene", "Banho", null);

create table tb_produto (
	id int auto_increment,
	nome varchar (100) not null,
    qtde varchar (100) not null,
    validade varchar (100) not null,
    preco decimal (5,2) not null,
    disponivel boolean not null,
    categoria_id int not null,
    primary key (id),
    foreign key (categoria_id) references tb_categoria (id)
    );

insert into tb_produto (nome, qtde, validade, preco, disponivel, categoria_id) values ("Remeédio A", "10ml", "15-05-2022", 35.90, true, 1); 
insert into tb_produto (nome, qtde, validade, preco, disponivel, categoria_id) values ("Remeédio B", "15ml", "18-05-2022", 25.90, false, 2); 
insert into tb_produto (nome, qtde, validade, preco, disponivel, categoria_id) values ("Remeédio C", "30ml", "07-08-2022", 86.00, true, 2); 
insert into tb_produto (nome, qtde, validade, preco, disponivel, categoria_id) values ("Vitamina A", "30 Capsula", "25-02-2022", 50.90, false, 3);
insert into tb_produto (nome, qtde, validade, preco, disponivel, categoria_id) values ("Vitamina B", "30 Capsula", "07-05-2022", 120.00, true, 3);
insert into tb_produto (nome, qtde, validade, preco, disponivel, categoria_id) values ("Vitamina C", "30 Capsula", "07-12-2022", 250.90, true, 4);
insert into tb_produto (nome, qtde, validade, preco, disponivel, categoria_id) values ("Sabonete A", "1 Unidade", "25-02-2023", 6.50, true, 5);
insert into tb_produto (nome, qtde, validade, preco, disponivel, categoria_id) values ("Sabonete b", "1 Unidade", "25-02-2022", 7.90, true, 5);

select * from tb_categoria;

select * from tb_produto;

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3 and 60;

select * from tb_produto where nome like "%b%";

select * from tb_produto inner join tb_categoria on tb_produto.categoria_id = tb_categoria.id;

select * from tb_produto where categoria_id = 5;