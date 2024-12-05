create database if not exists db_lojaLojas;

use db_lojaLojas;

create table tb_cliente(
id_cliente int auto_increment primary key,
nome varchar(100) not null,
cpf varchar(11) not null unique,
rg varchar(11) not null unique,
dt_nascimento date not null,
email varchar(100) not null unique
);

create table tb_produto(
id_produto int auto_increment primary key,
nome_prod varchar(100) not null,
preco decimal (10,2) not null,
tipo varchar(100) not null,
dt_venda date not null,
CLIENTE_id_cliente int,
foreign key (CLIENTE_id_cliente) 
references tb_cliente(id_cliente)
);


