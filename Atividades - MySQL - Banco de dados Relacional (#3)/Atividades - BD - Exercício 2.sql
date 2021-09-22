create database db_loja;

use db_loja;

create table tb_produtos (
	id int auto_increment,
    nome varchar (100) not null,
    qtde int not null,
    preco decimal (8,2) not null,
    entrega_imediata boolean,
    primary key (id)
);

insert into tb_produtos (nome, qtde, preco, entrega_imediata) values ("Garrafa d'agua", 50, 15.99, true);
insert into tb_produtos (nome, qtde, preco, entrega_imediata) values ("Celular", 15, 3999.99, true);
insert into tb_produtos (nome, qtde, preco, entrega_imediata) values ("Sofá", 10, 1499.90, false);
insert into tb_produtos (nome, qtde, preco, entrega_imediata) values ("Ventilador", 30, 220.00, true);
insert into tb_produtos (nome, qtde, preco, entrega_imediata) values ("TV", 20, 999.99, true);
insert into tb_produtos (nome, qtde, preco, entrega_imediata) values ("Livro", 5, 99.90, false);
insert into tb_produtos (nome, qtde, preco, entrega_imediata) values ("Ferro de passar", 20, 60.00, true);
insert into tb_produtos (nome, qtde, preco, entrega_imediata) values ("Vaso", 100, 9.99, true);

select nome from tb_produtos where preco > 500;

select nome from tb_produtos where preco < 500;

update tb_produtos set qtde = 45 where id = 1;

select * from tb_produtos;