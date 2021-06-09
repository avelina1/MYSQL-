create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
primary key (id)
);

insert tb_categoria (descricao, ativo) values ("pizza doce", true);
insert tb_categoria (descricao, ativo) values ("pizza salgada", true);
insert tb_categoria (descricao, ativo) values ("pizza vegana", true);
insert tb_categoria (descricao, ativo) values ("pizza de queijos", true);
insert tb_categoria (descricao, ativo) values ("pizza de mariscos", true);

select * from tb_categoria;

create table tb_pizza(
id bigint auto_increment,
nome varchar(255) not null,
preco decimal not null,
quantidade int not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert tb_pizza (nome, preco, quantidade, categoria_id) values ("Calabresa", 28.00, 2, 1);
insert tb_pizza (nome, preco, quantidade, categoria_id) values ("Napolitana", 27.00, 1, 2);
insert tb_pizza (nome, preco, quantidade, categoria_id) values ("Banana", 50.00, 1, 3);
insert tb_pizza (nome, preco, quantidade, categoria_id) values ("Camarao", 75.00, 1, 4);
insert tb_pizza (nome, preco, quantidade, categoria_id) values ("Vegetariana", 36.00, 1, 1);
insert tb_pizza (nome, preco, quantidade, categoria_id) values ("Quatro queijo", 58.00, 1, 1);
insert tb_pizza (nome, preco, quantidade, categoria_id) values ("Chocolate", 25.00, 1, 1);
insert tb_pizza (nome, preco, quantidade, categoria_id) values ("Toscana", 28.00, 1, 1);

select * from tb_pizza;

select * from tb_pizza where preco > 45;

select * from tb_pizza where preco between 29 and 60;

select * from tb_pizza where nome like "%C%";

select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.id;

select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.id where tb_categoria.id = 1;



