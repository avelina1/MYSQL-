create database db_generetion_game_online;

use db_generetion_game_online;

create table tb_classe(
id bigint auto_increment,
nome varchar(255),
hablidade varchar (255),
primary key (id)
);

insert tb_classe (nome, hablidade) values ("Espadachim", "Usa espada");
insert tb_classe (nome, hablidade) values ("Feiticeiro", "Magico");
insert tb_classe (nome, hablidade) values ("Ninja", "Ataque silcencioso");
insert tb_classe (nome, hablidade) values ("Cavaleiro", "Cavalgar");
insert tb_classe (nome, hablidade) values ("Arqueira", "Usar arco e flecha");

select * from tb_classe;

create table tb_personagem(
id bigint auto_increment,
nome varchar(255),
biografia varchar (200),
defesa bigint,
ataque bigint,
classe_id bigint,
primary key (id),
foreign key (classe_id) references tb_classe (id)
);

insert tb_personagem(nome, biografia, defesa, ataque, classe_id) values ("Hokag", "Lider", 3500, 2200,1);
insert tb_personagem(nome, biografia, defesa, ataque, classe_id) values ("Kiximoto", "Sabio", 5500, 1200, 2);
insert tb_personagem(nome, biografia, defesa, ataque, classe_id) values ("Sensem", "Centrado", 1400, 2000, 3);
insert tb_personagem(nome, biografia, defesa, ataque, classe_id) values ("Jongin", "Estrela", 1500, 1300, 4);
insert tb_personagem(nome, biografia, defesa, ataque, classe_id) values ("Chanyol", "Alegre", 3000, 1100, 5);
insert tb_personagem(nome, biografia, defesa, ataque, classe_id) values ("Jondae", "Protetor", 4500, 2100, 1);
insert tb_personagem(nome, biografia, defesa, ataque, classe_id) values ("Sehun", "Aprendiz", 3600, 2200, 2);
insert tb_personagem(nome, biografia, defesa, ataque, classe_id) values ("chanyeol", "Animado", 2400, 2500, 3);

select * from tb_personagem;

select * from tb_personagem where ataque > 2000 ;

select * from tb_personagem where defesa between 1000 and 2000;

select * from tb_personagem where nome like "%C%";

select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.id;

select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.id where tb_classe.id = 1;



 
