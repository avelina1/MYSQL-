create database db_comerce;
use db_comerce;

create table tb_produtos (id bigint(5) auto_increment,
nome varchar (255) not null,
codigo int not null,
segmento varchar (255) not null,
preco decimal not null,
primary key (id)
);

insert into tb_produtos (nome, codigo, segmento, preco) values ("Celular", 2212, "Electronicos", 1000.00);
insert into tb_produtos (nome, codigo, segmento, preco) values ("Tablet", 2213, "Electronicos", 800.00);
insert into tb_produtos (nome, codigo, segmento, preco) values ("Fogao", 2243, "Electrodomestico", 500.00);
insert into tb_produtos (nome, codigo, segmento, preco) values ("Geladeira", 2512, "Electrodomestico", 1500.00);
insert into tb_produtos (nome, codigo, segmento, preco) values ("Cama", 2231, "Electrodomestico", 700.00);
insert into tb_produtos (nome, codigo, segmento, preco) values ("Mesa", 2232, "Electrodomestico", 900.00);
insert into tb_produtos (nome, codigo, segmento, preco) values ("Armario", 2233, "Electrodomestico", 400.00);
insert into tb_produtos (nome, codigo, segmento, preco) values ("Raque", 2212, "Electrodomestico", 200.00);

select * from tb_produtos;
select * from tb_produtos where preco> 500;
select * from tb_produtos where preco< 500;

update tb_produtos set preco = 600 where id = 7;





