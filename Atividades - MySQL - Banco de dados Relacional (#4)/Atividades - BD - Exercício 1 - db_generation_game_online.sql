-- drop database db_generation_game_online;
 
create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe (
	id int auto_increment,
	nome varchar (100) not null,
	arma varchar (100) not null,
	skill varchar (100)not null,
	primary key (id)
	);

insert into tb_classe (nome, arma, skill) values ("Guerreiro", "Espada Longa", "Investida");
insert into tb_classe (nome, arma, skill) values ("Mago", "Cajado", "Bola de Fogo");
insert into tb_classe (nome, arma, skill) values ("Arqueiro", "Arco", "Chuva de Flechas");
insert into tb_classe (nome, arma, skill) values ("Curandeiro", "Cetro", "Restauração");
insert into tb_classe (nome, arma, skill) values ("Paladino", "Espada e Esculdo", "Defesa Divina");

create table tb_personagem (
	id int auto_increment,
    nome varchar (100) not null,
    raca varchar (100) not null,
    atributo varchar (100) not null,
    ataque int not null,
    defesa int not null,
    classe_id int not null,
    primary key (id),
    foreign key (classe_id) references tb_classe (id)
    );

insert into tb_personagem (nome, raca, atributo, ataque, defesa, classe_id) values ("Bot 1", "Humano", "Força", 4000, 3000, 1);
insert into tb_personagem (nome, raca, atributo, ataque, defesa, classe_id) values ("Bot 2", "Elf", "Inteligencia", 4500, 1500, 2);
insert into tb_personagem (nome, raca, atributo, ataque, defesa, classe_id) values ("Bot 3", "Anão", "Dextreza", 4000, 2000, 3);
insert into tb_personagem (nome, raca, atributo, ataque, defesa, classe_id) values ("Bot 4", "Humano", "Inteligencia", 1900, 2000, 4);
insert into tb_personagem (nome, raca, atributo, ataque, defesa, classe_id) values ("Bot 5", "Elf", "Constituição", 3000, 3000, 5);
insert into tb_personagem (nome, raca, atributo, ataque, defesa, classe_id) values ("Bot 6", "Anão", "Dextreza", 1500, 1000, 3);
insert into tb_personagem (nome, raca, atributo, ataque, defesa, classe_id) values ("Bot 7", "Humano", "Força", 6000, 1500, 1);
insert into tb_personagem (nome, raca, atributo, ataque, defesa, classe_id) values ("Bot 8", "Elf", "Dextreza ", 5000, 1500, 3);

select * from tb_classe;

select * from tb_personagem;

select * from tb_personagem where ataque > 2000;

select * from tb_personagem where defesa between 1000 and 2000;

select * from tb_personagem where nome like "%c%";

select * from tb_personagem inner join tb_classe on tb_personagem.classe_id = tb_classe.id;

select * from tb_personagem where classe_id = 1;