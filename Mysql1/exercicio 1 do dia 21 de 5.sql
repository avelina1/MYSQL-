create database db_rh;
-- Verificar tabela 
use db_rh;


create table tb_funcionarios(
id bigint auto_increment,
nome varchar(255) not null,
cargo varchar (255) not null,
salario decimal not null,
primary key (id)
);

-- Inserir dados 
insert into tb_funcionarios (nome, cargo, salario) values ("Joao", "assistente", "2000.00");
insert into tb_funcionarios (nome, cargo, salario) values ("Joana", "assistente", "4000.00");
insert into tb_funcionarios (nome, cargo, salario) values ("Daniel", "assistente", "1500.00");
insert into tb_funcionarios (nome, cargo, salario) values ("Joyce", "assistente", "1800.00");

-- Visualizar dados 
select * from tb_funcionarios;
select * from tb_funcionarios where salario > 2000.00;
select * from tb_funcionarios where salario <2000.00;
update tb_funcionarios set nome= "joaquim" where id=6; 