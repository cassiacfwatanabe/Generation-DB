-- Atividade 1
-- Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema trabalhará com as informações dos funcionaries desta empresa. 
create database db_rh;

-- Crie uma tabela de funcionaries e utilizando a habilidade de abstração e determine 5 atributos relevantes dos funcionaries para se trabalhar com o serviço deste rh.
use db_rh;
create table tb_funcionaries(
id bigint(5) auto_increment,
nome varchar(100) not null,
cargo varchar(40),
salario decimal,
setor varchar(40),
ativo boolean,
primary key (id)
);
-- Popule esta tabela com até 5 dados
insert into tb_funcionaries (nome, cargo, salario,setor,ativo) values ("Cássia", "dev junior",1000.00, "TI", true);
insert into tb_funcionaries (nome, cargo, salario,setor,ativo) values ("Pedro", "dev junior",1000.00, "TI", true);
insert into tb_funcionaries (nome, cargo, salario,setor,ativo) values ("Roberta", "dev pleno",5000.00, "TI", true);
insert into tb_funcionaries (nome, cargo, salario,setor,ativo) values ("Arthur", "dev pleno",5000.00, "TI", true);
insert into tb_funcionaries (nome, cargo, salario,setor,ativo) values ("Aparecida", "dev senior",8000.00, "TI", true);

-- Faça um select que retorne os funcionaries com o salário maior do que 2000.
select * from tb_funcionaries where salario > 2000;
-- Faça um select que retorne os funcionaries com o salário menor do que 2000.
select * from tb_funcionaries where salario < 2000;
-- Ao término atualize um dado desta tabela através de uma query de atualização.
update tb_funcionaries set cargo = "dev senior" where id=3;
 

