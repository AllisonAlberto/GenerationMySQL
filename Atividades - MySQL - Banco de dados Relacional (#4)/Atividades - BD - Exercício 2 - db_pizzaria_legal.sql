-- drop database db_pizzaria_legal;
 
create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria (
	id int auto_increment,
	nome varchar (100) not null,
	tipo varchar (100) not null,
	tamanho varchar (100)not null,
	primary key (id)
	);

insert into tb_categoria (nome, tipo, tamanho) values ("Salgada P", "Salgada", "Pequena");
insert into tb_categoria (nome, tipo, tamanho) values ("Salgada M", "Salgada", "Média");
insert into tb_categoria (nome, tipo, tamanho) values ("Salgada G", "Salgada", "Grande");
insert into tb_categoria (nome, tipo, tamanho) values ("Doce M", "Doce", "Média");
insert into tb_categoria (nome, tipo, tamanho) values ("Doce G", "Doce", "Grande");

create table tb_pizza (
	id int auto_increment,
	nome varchar (100) not null,
    sabor varchar (100) not null,
    tempo_preparacao varchar (100) not null,
    preco decimal (5,2) not null,
    disponivel boolean not null,
    categoria_id int not null,
    primary key (id),
    foreign key (categoria_id) references tb_categoria (id)
    );

insert into tb_pizza (nome, sabor, tempo_preparacao, preco, disponivel, categoria_id) values ("Muçarela", "Queijo", "50 min", 35.90, true, 1); 
insert into tb_pizza (nome, sabor, tempo_preparacao, preco, disponivel, categoria_id) values ("Bacon", "Queijo e Bacon", "50 min", 39.90, true, 2);
insert into tb_pizza (nome, sabor, tempo_preparacao, preco, disponivel, categoria_id) values ("Brocoles", "Queijo e Brocoles", "50 min", 36.90, false, 3);
insert into tb_pizza (nome, sabor, tempo_preparacao, preco, disponivel, categoria_id) values ("Frango c/ Catupiry", "Frango c/ Catupir", "50 min", 39.90, true, 3);
insert into tb_pizza (nome, sabor, tempo_preparacao, preco, disponivel, categoria_id) values ("Chocolate", "Chocolate", "40 min", 42.00, true, 5); 
insert into tb_pizza (nome, sabor, tempo_preparacao, preco, disponivel, categoria_id) values ("Beijinho", "Beijinho", "40 min", 42.00, true, 5); 
insert into tb_pizza (nome, sabor, tempo_preparacao, preco, disponivel, categoria_id) values ("Romeu e Julieta", "Goiaba e Queijo", "40 min", 46.00, false, 4); 
insert into tb_pizza (nome, sabor, tempo_preparacao, preco, disponivel, categoria_id) values ("Brigadeiro", "Brigadeiro", "40 min", 42.00, true, 4); 

select * from tb_categoria;

select * from tb_pizza;

select * from tb_pizza where preco > 45;

select * from tb_pizza where preco between 29 and 60;

select * from tb_pizza where nome like "%c%";

select * from tb_pizza inner join tb_categoria on tb_pizza.categoria_id = tb_categoria.id;

select * from tb_pizza where categoria_id in (4, 5);