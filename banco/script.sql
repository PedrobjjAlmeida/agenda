/**
* Agenda de contatos
* @author Pedro Noga
*/

/* Banco de dados */
-- Exibir banco de dados disponíveis
show databases;
-- Criar um banco de dados
create database dbagenda;
-- Selecionar o banco de dados
use dbagenda;

/* Tabelas */
-- Exibir tabelas
show tables;
-- Criar uma tabela
create table contatos( 
	idcon int primary key auto_increment,
    nome varchar(50) not null,
    fone varchar(15) not null,
    email varchar(50)
);
-- Descrever a estrutara da tabela
describe contatos;

/* CRUD (Create Read Update Delete) */
-- CRUD Create
insert into contatos(nome,fone,email) 
values('Andreia','96667-5588', 'acds@gmail.com');
insert into contatos(nome,fone) 
values('Julya','98855-4848');
insert into contatos(nome,fone,email) 
values('Pedro','98756-6633','pnc@gmail.com');
insert into contatos(nome,fone,email) 
values('Bruno','98656-3366','brun@gmail.com');

-- CRUD Read 
select * from contatos;
select * from contatos order by nome;
select * from contatos where idcon = 2;

-- CRUD Update
update contatos set email='juh@yahoo.com' where idcon = 2;
update contatos set nome='Andreia Gomes',fone='95487-6589',
email='acads@gmail.com' where idcon = 1;

-- CRUD Delete
delete from contatos where idcon = 4;
