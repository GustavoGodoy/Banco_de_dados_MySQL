create database db_generation_game_online;
use db_generation_game_online;

create table tb_classe(
id_classe int PRIMARY KEY AUTO_INCREMENT,
nome_classe varchar(55),
tipo_classe varchar(55)
);

create table tb_personagem(
id_personagem int PRIMARY KEY AUTO_INCREMENT,
nome_personagem varchar(255),
ataque_personagem int,
mana_personagem int,
defesa_personagem int,
fk_id_classe int,
CONSTRAINT fk_classe FOREIGN KEY (fk_id_classe) REFERENCES  tb_classe(id_classe)

);


INSERT INTO tb_classe(nome_classe, tipo_classe) VALUES 
('Mago','Magia'),
('Guerreiro','Corpo-a-Corpo'),
('Necromante','Suporte'),
('Atirador','Longo-Alcance'),
('Bardo','Suporte');

INSERT INTO tb_personagem(nome_personagem,ataque_personagem,mana_personagem,defesa_personagem,fk_id_classe) VALUES
('xXJoaoXx',3500,100,1890,2),
('CletinOMaisBrabo',2800,2000,1800,1),
('ReCoN_MasTER',2500,200,1000,4),
('Ceifador3023',1300,2000,3200,3),
('JogaYToca',1900,1900,2200,5),
('20matar70correr',2800,2000,1800,1),
('eduardo',3500,100,1890,2),
('vitinho2007',3500,100,1890,2);

SELECT * FROM tb_personagem;
SELECT * FROM tb_personagem WHERE ataque_personagem > 2000;
SELECT * FROM tb_personagem WHERE defesa_personagem BETWEEN 1000 and 2000;
SELECT * FROM tb_personagem WHERE nome_personagem LIKE 'c%';
SELECT * FROM tb_personagem INNER JOIN tb_classe ON fk_id_classe = id_classe;

