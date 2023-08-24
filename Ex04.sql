CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes(
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
    especializacao VARCHAR(255) NOT NULL,
    nivel VARCHAR(255) NOT NULL
);

CREATE TABLE tb_personagens(
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
    classes_id BIGINT,
    nome VARCHAR(255) NOT NULL,
	defesa INT NOT NULL,
	ataque INT NOT NULL,
    tendencia VARCHAR(255) NOT NULL,
    FOREIGN KEY (classes_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (especializacao, nivel) VALUES ("Lutador",3);
INSERT INTO tb_classes (especializacao, nivel) VALUES ("Ladino", 2);
INSERT INTO tb_classes (especializacao, nivel) VALUES ("Bruxo", 4);
INSERT INTO tb_classes (especializacao, nivel) VALUES ("Monge", 2);
INSERT INTO tb_classes (especializacao, nivel) VALUES ("Bardo", 1);

INSERT INTO tb_personagens (nome, defesa, ataque, tendencia, classes_id) VALUES ("Andrew Konan", 2, 4, "Leal-bom", 1);
INSERT INTO tb_personagens (nome, defesa, ataque, tendencia, classes_id) VALUES ("Lietch Johan", 4, 1, "Caotico-neutro",3);
INSERT INTO tb_personagens (nome, defesa, ataque, tendencia, classes_id) VALUES ("Aric Shadowblade", 2, 3, "Caotico-mal",5);
INSERT INTO tb_personagens (nome, defesa, ataque, tendencia, classes_id) VALUES ("Elara Stormborn", 1, 3, "Leal-neutro",4);
INSERT INTO tb_personagens (nome, defesa, ataque, tendencia, classes_id) VALUES ("Gromm Ironheart", 3, 2, "Caotico-bom",5);
INSERT INTO tb_personagens (nome, defesa, ataque, tendencia, classes_id) VALUES ("Lyria Nightshade", 2, 4, "Neutro",2);
INSERT INTO tb_personagens (nome, defesa, ataque, tendencia, classes_id) VALUES ("Isolde Moonshadow", 4, 3, "Leal-mal",1);
INSERT INTO tb_personagens (nome, defesa, ataque, tendencia, classes_id) VALUES ("Kaldor Fireforge", 2, 3, "Caotico-mal",3);

SELECT * FROM tb_personagens WHERE ataque > 2;
SELECT * FROM tb_personagens WHERE defesa IN (1,2);
SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT tb_personagens.id, nome, defesa, ataque, tendencia, especializacao, nivel
FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classes_id = tb_classes.id;

SELECT tb_personagens.id, tb_personagens.nome, tb_personagens.defesa, tb_personagens.ataque, tb_personagens.tendencia, tb_classes.especializacao, tb_classes.nivel
FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classes_id = tb_classes.id WHERE tb_classes.id = 3;
