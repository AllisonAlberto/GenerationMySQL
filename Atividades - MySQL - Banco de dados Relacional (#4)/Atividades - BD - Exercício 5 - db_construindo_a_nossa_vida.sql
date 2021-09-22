create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

-- Criando a tabela tb_categoria
-- Começamos pela tb_categoria, porque ela vai se relacioar com a tb_produto. A tb_produto possui uma chave estrangeira.
create table tb_categoria (
	id bigint auto_increment,
    nome varchar (100) not null, -- not null quer dizer que esse campo é obrigatório
    tipo varchar (100) not null,
    material varchar (100) not null,
    primary key (id)
);

-- Insirir dados na tabela tb_categoria
insert into tb_categoria (nome, tipo, material) values ("Porta A", "Porta", "Madeira");
insert into tb_categoria (nome, tipo, material) values ("Porta B", "Porta", "Plastico");
insert into tb_categoria (nome, tipo, material) values ("Cano A", "Cano", "PVC");
insert into tb_categoria (nome, tipo, material) values ("Cano B", "Cano ", "PEX");
insert into tb_categoria (nome, tipo, material) values ("Torneira", "torneira", "Metal");

-- Criando a tabela tb_produto
create table tb_produto (
	id bigint auto_increment,
	nome varchar (100) not null,
    qtde int not null,
    preco decimal (5,2) not null,
    estoque varchar (100) not null,
    disponibilidade boolean not null, -- Boolean tem apenas dois valores true (verdadeiro) e false (falso) e eke é apresentado com 1 e 0 
    categoria_id bigint not null,
    primary key (id),
	foreign key (categoria_id) references tb_categoria (id)
);
    
-- Insirir dados na tabela tb_produto
insert into tb_produto (nome, qtde, preco, estoque, disponibilidade, categoria_id)
values ("Produto 1", 500, 100, "Loja 3", true, 1),
	   ("Produto 2", 250, 60, "Loja 1", true, 2),
	   ("Produto 3", 50, 60, "Loja 1", true, 2),
	   ("Produto 4", 300, 10, "Loja 1", true, 3),       
 	   ("Produto 5", 100, 25, "Loja 3", true, 4),
	   ("Produto 6", 150, 30, "Loja 2", false, 4),       
	   ("Produto 7", 200, 8, "Loja 3", true, 5),
	   ("Produto 8", 350, 5, "Loja 1", true, 5);
       
insert into tb_produto (nome, qtde, preco, estoque, disponibilidade, categoria_id)
values ("Produto 5 e 9", 500, 100, "Loja 3", true, 1);

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3 and 60;

select * from tb_produto where nome like "%c%";

select * from tb_produto inner join tb_categoria on tb_produto.categoria_id = tb_categoria.id;

select * from tb_produto where categoria_id in (1);