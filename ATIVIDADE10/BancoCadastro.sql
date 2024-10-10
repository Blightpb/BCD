-- criando Banco De Dados 
CREATE DATABASE db_cadastro;
 
 USE db_cadastro;
 
 -- criando Tabela
 CREATE TABLE pessoas (
 nome varchar (45),
 idade int,
 sexo char(1),
 peso float,
 altura float,
 nacionalidade varchar (20)
 );
 
 -- alterando Tabela
 ALTER TABLE pessoas
 ADD COLUMN profissao varchar (10);

SELECT * FROM pessoas;

ALTER TABLE pessoas
 ADD COLUMN cpf varchar (11)
 AFTER nome;
 
 ALTER TABLE pessoas
 ADD COLUMN id_pessoas int
 FIRST;
 
 ALTER TABLE pessoas
 DROP COLUMN profissao; 
 
 ALTER TABLE pessoas
 MODIFY COLUMN cpf int NOT NULL;
 
 ALTER TABLE pessoas
 CHANGE COLUMN cpf rg varchar (11);
 
 DESC pessoas; 

ALTER TABLE pessoas
RENAME TO alunos;

SHOW TABLES;

CREATE TABLE IF NOT EXISTS tb_curso (
id_curso int NOT NULL AUTO_INCREMENT,
nome varchar (45) NOT NULL UNIQUE,
descricao text,
carga int UNSIGNED,
ano year DEFAULT '2024',
PRIMARY KEY (id_curso)
)DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS professor (
id_professor int primary key not null auto_increment,
nome varchar(45) not null,
nascimento date,
sexo enum('M', 'F'),
peso decimal(5,2),
altura decimal(3,2),
nacionalidade varchar (10) default 'Brasileira',
CURSO_id_curso int,
foreign key (CURSO_id_curso) references tb_curso(id_curso)
)default charset=utf8;

CREATE TABLE IF NOT EXISTS tb_alunos (
id_alunos int not null,
nome varchar(45) not null,
nascimento date,
sexo enum('M', 'F'),
peso decimal(5,2),
altura decimal(3,2),
nacionalidade varchar (10) default 'Brasileira'
)default charset=utf8;

drop table tb_professor;

ALTER TABLE professor
RENAME TO tb_professor;

alter table tb_alunos
modify column id_alunos int primary key 
not null auto_increment;

alter table tb_alunos
drop column CURSO_id_curso;

desc tb_alunos;

alter table tb_alunos
add foreign key (CURSO_id_curso)
references tb_curso(id_curso);


