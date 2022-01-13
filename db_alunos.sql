-- Atividade 3
-- Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as informações dos estudantes deste registro dessa escola. 
create database db_alunos;
-- Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos relevantes dos estudantes para se trabalhar com o serviço dessa escola.
use db_alunos;
create table tb_alunos(
id bigint(8) auto_increment,
nome varchar(100) not null,
turma bigint(3),
materia varchar(20),
nota decimal,
ativo boolean,
primary key (id)
);
-- Popule esta tabela com até 8 dados;
insert into tb_alunos (nome, turma, materia ,nota ,ativo) values ("Albertina", 1,"história", 8.00, true);
insert into tb_alunos (nome, turma, materia ,nota ,ativo) values ("Nazaré", 1,"história", 6.00, true);
insert into tb_alunos (nome, turma, materia ,nota ,ativo) values ("Tomás", 1,"história", 4.00, true);
insert into tb_alunos (nome, turma, materia ,nota ,ativo) values ("Alfredo", 1,"história", 8.00, true);
insert into tb_alunos (nome, turma, materia ,nota ,ativo) values ("Astolfo", 1,"história", 7.00, true);
insert into tb_alunos (nome, turma, materia ,nota ,ativo) values ("Aparecida", 1,"história", 9.00, true);
insert into tb_alunos (nome, turma, materia ,nota ,ativo) values ("Sandra", 1,"história", 8.00, true);
insert into tb_alunos (nome, turma, materia ,nota ,ativo) values ("Manuel", 1,"história", 8.00, true);
-- Faça um select que retorne o/as estudantes  com a nota maior do que 7.
select * from tb_alunos where nota > 7.00;
-- Faça um select que retorne o/as estudantes  com a nota menor do que 7.
select * from tb_alunos where nota < 7.00;
-- Ao término atualize um dado desta tabela através de uma query de atualização.
update tb_alunos set nota= 9.00 where id=8;