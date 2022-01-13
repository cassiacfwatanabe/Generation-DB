-- Atividade 2
-- Crie um banco de dados para um e commerce, onde o sistema trabalhará com as informações dos produtos deste ecommerce. 
create database db_ecommerce;
-- Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos relevantes dos produtos para se trabalhar com o serviço deste ecommerce.
use db_ecommerce;
create table tb_produtos(
id bigint(8) auto_increment,
nome varchar(100) not null,
marca varchar(40),
valor decimal,
tamanho varchar(20),
ativo boolean,
primary key (id)
);
-- Popule esta tabela com até 8 dados;
insert into tb_produtos (nome, marca, valor ,tamanho ,ativo) values ("camiseta", "polo",90.00, "médio", true);
insert into tb_produtos (nome, marca, valor ,tamanho ,ativo) values ("blusa de frio", "lacoste",600.00, "grande", true);
insert into tb_produtos (nome, marca, valor ,tamanho ,ativo) values ("vestido", "zoomp",700.00, "médio", false);
insert into tb_produtos (nome, marca, valor ,tamanho ,ativo) values ("camiseta", "hering",40.00, "pequeno", true);
insert into tb_produtos (nome, marca, valor ,tamanho ,ativo) values ("calça", "zoomp",590.00, "médio", true);
insert into tb_produtos (nome, marca, valor ,tamanho ,ativo) values ("camiseta", "hering",50.00, "grande", true);
insert into tb_produtos (nome, marca, valor ,tamanho ,ativo) values ("camiseta", "marisa",30.00, "grande", true);
insert into tb_produtos (nome, marca, valor ,tamanho ,ativo) values ("camiseta", "polo",90.00, "pequeno", true);
-- Faça um select que retorne os produtos com o valor maior do que 500.
select * from tb_produtos where valor > 500;
-- Faça um select que retorne os produtos com o valor menor do que 500.
select * from tb_produtos where valor < 500;
-- Ao término atualize um dado desta tabela através de uma query de atualização.
update tb_produtos set ativo = false where id=2;
