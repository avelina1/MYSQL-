create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create  table  tb_categoria (
id bigint auto_increment,
descricao varchar (255) not null ,
ativo boolean  not null ,
primary key (id)
);

insert tb_categoria (descricao, ativo) values ( " Aves " , true);
insert tb_categoria (descricao, ativo) values ( " Suino " , true);
insert tb_categoria (descricao, ativo) values ( " Bovino " , true);
insert tb_categoria (descricao, ativo) values ( " pertence feijoada " , true);
insert tb_categoria (descricao, ativo) values ( " imbutidos " , true);

select * from tb_categoria;

create  table  tb_produtos (
id bigint auto_increment,
nome varchar (255 ) not null,
preco decimal ,
quantidade int ,
categoria_id bigint ,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

insert tb_produtos (nome, preco, quantidade, categoria_id) values   ( " ASA " , 40.00 , 30 , 1 );
insert tb_produtos (nome, preco, quantidade, categoria_id) values   ( " Picanha " , 80.00 , 30 , 2 );
insert tb_produtos (nome, preco, quantidade, categoria_id) values   ( " Coxa de Frango " , 12.00 , 32 , 3 );
insert tb_produtos (nome, preco, quantidade, categoria_id) values   ( " Bucho " , 15.00 , 22 , 4 );
insert tb_produtos (nome, preco, quantidade, categoria_id) values   ( " Peito de Frango " , 25 , 30 , 5 );
insert tb_produtos (nome, preco, quantidade, categoria_id) values   ( " Orelha de Porco " , 50 , 28 , 1 );
insert tb_produtos (nome, preco, Quantidade, categoria_id) values   ( " Salame " , 2.00, 40, 5);
insert tb_produtos (nome, preco, quantidade, categoria_id) values   ( "Chuleta " , 60 , 30 , 2 );


select * from tb_produtos;

select * from tb_produtos where preco > 50;

select  * from tb_produtos where preco between 3 and 60;

select  * from tb_produtos where nome like " % C% " ;

select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.id;

select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.id where tb_categoria.id = 1;
