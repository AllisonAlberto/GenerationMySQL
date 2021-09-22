-- drop database db_cidade_das_frutas;
 
create database db_cidade_das_frutas;

use db_cidade_das_frutas;

create table tb_categoria (
	id int auto_increment,
	nome varchar (100) not null,
	tipo varchar (100) not null,
	origem varchar (100) not null,
	primary key (id)
	);

insert into tb_categoria (nome, tipo, origem) values ("Banana", "Ouro", "Canada");
insert into tb_categoria (nome, tipo, origem) values ("Banana", "Maçã", "Inglaterra");
insert into tb_categoria (nome, tipo, origem) values ("Maçã", "Argentina", "Brasil");
insert into tb_categoria (nome, tipo, origem) values ("Maçã", "Gala", "Russia");
insert into tb_categoria (nome, tipo, origem) values ("Pêssego", "Aurora", "Chile");

create table tb_produto (
	id int auto_increment,
	nome varchar (100) not null,
    qtde int not null,
    preco decimal (5,2) not null,
    estoque varchar (100) not null,
    disponibilidade boolean not null,
    categoria_id int not null,
    primary key (id),
    foreign key (categoria_id) references tb_categoria (id)
    );

insert into tb_produto (nome, qtde, preco, estoque, disponibilidade, categoria_id) values ("Produto 1", 150, 15.90, "Estoque 1", true, 1); 
insert into tb_produto (nome, qtde, preco, estoque, disponibilidade, categoria_id) values ("Produto 2", 200, 12.90, "Estoque 2", true, 2);
insert into tb_produto (nome, qtde, preco, estoque, disponibilidade, categoria_id) values ("Produto 3", 300, 9.90, "Estoque 1", false, 3);
insert into tb_produto (nome, qtde, preco, estoque, disponibilidade, categoria_id) values ("Produto 4", 250, 8.90, "Estoque 3", true, 3);
insert into tb_produto (nome, qtde, preco, estoque, disponibilidade, categoria_id) values ("Produto 5", 350, 18.00, "Estoque 1", true, 5); 
insert into tb_produto (nome, qtde, preco, estoque, disponibilidade, categoria_id) values ("Produto 6", 400, 20.00, "Estoque 2", true, 5); 
insert into tb_produto (nome, qtde, preco, estoque, disponibilidade, categoria_id) values ("Produto 7", 200, 52.90, "Estoque 2", false, 4); 
insert into tb_produto (nome, qtde, preco, estoque, disponibilidade, categoria_id) values ("Produto 8", 400, 30.00, "Estoque 3", true, 4); 

select * from tb_categoria;

select * from tb_produto;

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3 and 60;

select * from tb_produto where nome like "%c%";

select * from tb_produto inner join tb_categoria on tb_produto.categoria_id = tb_categoria.id;

select * from tb_produto where categoria_id in (3);