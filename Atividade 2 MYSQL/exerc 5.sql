create  database db_construindo_a_nossa_vida ;

use db_construindo_a_nossa_vida;

create  table  tb_categoria (
id bigint auto_increment,
material varchar (255) not null,
ativo boolean ,
primary key (id)
);

insert tb_categoria (material, ativo) values ( "Cimento " , true);
insert tb_categoria (material, ativo) values ( " Mosaico " , true);
insert tb_categoria (material, Ativo) values ( " Janela " , true);
insert tb_categoria (material, ativo) values ( " Piso " , true);
insert tb_categoria (material, ativo) values ( " Ralo " , true);

select * from tb_categoria;

create  table  tb_produto (
id bigint auto_increment,
nome varchar ( 255 ),
descricao varchar ( 255 ),
quantidade int ,
preco decimal ,
categoria_id bigint ,
 primary key (id),
 foreign key (categoria_id) references tb_categoria(id)
);

insert tb_produto (nome, descricao, quantidade, preco, categoria_id) values ( " Azulejo " , " boa qualidade " , 300.00 , 30 , 1 );
insert tb_produto (nome, descricao, quantidade, preco, categoria_id) values ( " Piso de madeira " , " boa qualidade " , 80.00 , 270 , 2 );
insert tb_produto (nome, descricao, Quantidade, preco, categoria_id) values ( " Tinta verniz " , " brilhante " , 150 , 90.00 , 3 );
insert tb_produto (nome, descricao, quantidade, preco, categoria_id) values ( " Cano " , " Eficiente " , 15.00 , 2 , 1 );
insert tb_produto (nome, descricao, quantidade, preco, categoria_id) values ( " Tinta acrílica " , " brilho " , 25.00 , 50 , 5 );
insert tb_produto (nome, descricao, Quantidade, preco, categoria_id) values ( " Janela de vidro ", "estetica " , 50.00 , 30 , 2 );
insert tb_produto (nome, descricao, quantidade, preco, categoria_id) values ( " Piso de porcelanato " , " resistente " , 200.00 , 60 , 4 );
insert tb_produto (nome, descricao, quantidade, preco, categoria_id) values ( " Janela de madeira " , " resistente " , 50.00 , 233 , 1 );


select  *  from tb_produto;

select  * from  tb_produto where preco >  50 ;

select  * from tb_produto where preco between 3  and  60 ;

select  * from tb_produto where nome like  " % C% " ;

select  * from tb_produto inner join tb_categoria on tb_categoria . id  =  tb_produto.id ;

select  *  from tb_produto inner join tb_categoria on tb_categoria .id  =  tb_produto.id where tb_categoria.id = 1 ;