create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
primary key (id)
);

insert tb_categoria (descricao, ativo) values ("Analgesico", true);
insert tb_categoria (descricao, ativo) values ("Relxante muscular", true);
insert tb_categoria (descricao, ativo) values ("Pasta de dente", true);
insert tb_categoria (descricao, ativo) values ("Anti-inflamatorio", true);
insert tb_categoria (descricao, ativo) values ("Antibiotico", true);

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
nome varchar(255) not null,
preco decimal not null,
quantidade int not null,
validade date,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert tb_produto (nome, preco, quantidade, validade, categoria_id) values ("Dipirona", 4.00, 30, "2024-02-10", 1);
insert tb_produto (nome, preco, quantidade, validade, categoria_id) values ("Colgate", 25.00, 10, "2022/03/11", 2);
insert tb_produto (nome, preco, quantidade, validade, categoria_id) values ("Dorflex", 3.00, 12, "2021/04/12", 3);
insert tb_produto (nome, preco, quantidade, validade, categoria_id) values ("Bactrim", 35.00, 8, "2023/05/9", 4);
insert tb_produto (nome, preco, quantidade, validade, categoria_id) values ("Nimesulida", 14.00, 4, "2024/06/5", 5);
insert tb_produto (nome, preco, quantidade, validade, categoria_id) values ("Oral B", 70.00, 2, "2024/01/30", 1);
insert tb_produto (nome, preco, quantidade, validade, categoria_id) values ("Buscopam", 45.00, 6, "2022/07/22", 2);
insert tb_produto (nome, preco, quantidade, validade, categoria_id) values ("Rexona", 55.00, 5, "2023/09/26", 3);

select * from tb_produto;

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3 and 60;

select * from tb_produto where nome like "%B%";

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.id;

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.id where tb_categoria.id = 1;


