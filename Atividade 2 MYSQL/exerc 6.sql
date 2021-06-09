create database  db_cursoDaMinhaVida ;
use db_cursoDaMinhaVida;

create  table  tb_categoria (
id bigint auto_increment,
descricao varchar ( 200 ),
ativo boolean ,
primary key (id)
);

insert tb_categoria (descricao, ativo) values ( " Humanas " , true);
insert tb_categoria (descricao, ativo) values ( " Tecnologia " , true);
insert tb_categoria (descricao, ativo) values ( " Saude " , true);
insert tb_categoria (descricao, ativo) values ( " Financas " , true);
insert tb_categoria (descricao, ativo) values ( " Beleza " , true);

select * from  tb_categoria;

create  table  tb_produto (
id bigint auto_increment,
nome varchar (255),
preco decimal ,
duracao varchar (255),
hora int ,
categoria_id bigint ,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
 );

insert tb_produto (nome, preco, duracao, hora, categoria_id) values ( " Medicina " , 9000 , " seis anos " , 10000 , 1 );
insert tb_produto (nome, preco, duracao, hora, categoria_id) values ( " Sistemas de informacao ", 2000, "quatro anos" ,  5000, 2 );
insert tb_produto (nome, preco, duracao, hora, categoria_id) values ( " Historia " , 1200 , " dois anos " , 2500 , 5 );
insert tb_produto (nome, preco, duracao, hora, categoria_id) values ( " Odontologia ", 4000 , "cinco anos" , 8000, 4 );
insert tb_produto (nome, preco, duracao, hora, categoria_id) values ( " Contabilidade ", 1500 , " quatro anos" , 4800 , 5 );
insert tb_produto (nome, preco, duracao, hora, categoria_id) values ( " Manicure " , 40 , " 4 meses " , 800 , 2 );
insert tb_produto (nome, preco, duracao, hora, categoria_id) values ( " Jogos digitaais " , 50 , " seis meses " , 1000 , 1 );
insert tb_produto (nome, preco, duracao, hora, categoria_id) values ( " Jornalismo " , 1800 , " trez anos " , 2000 , 3 );

select  *  from tb_produto;

select  *  from tb_produto where preco > 50 ;

select  *  from tb_produto where preco between 3  and  60 ;

select  *  from tb_produto where nome like " % J% " ;

select  *  from tb_produto inner join tb_categoria on  tb_categoria . id  =  tb_produto.id;

select  *  from tb_produto inner join tb_categoria on  tb_categoria . id  =  tb_produto.id where  tb_categoria.id =  1 ;