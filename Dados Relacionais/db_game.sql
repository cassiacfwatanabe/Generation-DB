create database db_generation_game_online;
use  db_generation_game_online;

create table tb_classe(
id bigint(8) auto_increment,
classe varchar(50),
nivel bigint(4),
ativo boolean,
primary key (id)
);

create table tb_personagem(
	idPersonagem bigint auto_increment primary key ,
    nome varchar(30),
    coruniforme varchar(30) not null, 
    velocidade int not null,
    ataque int not null,
    defesa int not null,
    id_classeFK bigint,
	foreign key (id_classeFK) references tb_classe (id)
);

-- Populando a Tabela Classe
insert into tb_classe (classe, nivel, ativo) VALUES ("Arqueire",15, false);
INSERT INTO tb_classe (classe, nivel, ativo) VALUES ("Vigie",4, true); 
INSERT INTO tb_classe (classe, nivel, ativo) VALUES ("Cavaleire",7, false);
INSERT INTO tb_classe (classe, nivel, ativo) VALUES ("Profete",10, true);
INSERT INTO tb_classe (classe, nivel, ativo) VALUES ("Curandeire",12, true);

select * from tb_classe;

-- Populando a Tabela Personagem
INSERT INTO tb_personagem(nome, coruniforme, velocidade, ataque, defesa, id_classeFK) VALUES ("Dorelen","Verde", 20, 1000, 500, 2);
INSERT INTO tb_personagem(nome, coruniforme, velocidade, ataque, defesa, id_classeFK) VALUES ("Elenlia","Roxo", 50, 2400, 1000, 1);
INSERT INTO tb_personagem(nome, coruniforme, velocidade, ataque, defesa, id_classeFK) VALUES ("Mekror ","Lilás", 13, 500, 300, 4);
INSERT INTO tb_personagem(nome, coruniforme, velocidade, ataque, defesa, id_classeFK) VALUES ("Rarglak","Azul", 29, 1000, 700, 3);
INSERT INTO tb_personagem(nome, coruniforme, velocidade, ataque, defesa, id_classeFK) VALUES ("Renwise","Preto", 100, 7700, 9000, 3);
INSERT INTO tb_personagem(nome, coruniforme, velocidade, ataque, defesa, id_classeFK) VALUES ("Markeli","Cinza", 97, 3000, 3000, 5);
INSERT INTO tb_personagem(nome, coruniforme, velocidade, ataque, defesa, id_classeFK) VALUES ("Vime","Branco", 1, 200, 150, 1);
INSERT INTO tb_personagem(nome, coruniforme, velocidade, ataque, defesa, id_classeFK) VALUES ("Lasle","Amarelo", 88, 10000, 4500, 2);

SELECT * FROM tb_personagem where ataque > 2000; 
SELECT * FROM tb_personagem WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagem where nome like "%R%"; -- Buscando os Personagens com a letra R

SELECT * FROM tb_classe INNER JOIN tb_personagem ON tb_classe.id=tb_personagem.id_classeFK; -- Mostrando as duas tabelas na Tela
SELECT * FROM tb_personagem INNER JOIN tb_classe ON tb_classe.id = tb_personagem.id_classeFK where id_classeFK = 1;


