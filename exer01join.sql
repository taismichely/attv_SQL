# ATIVIDADE 01

CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    habilidade VARCHAR(255) NOT NULL
);

INSERT INTO tb_classes(habilidade) VALUES ("Bárbaros");
INSERT INTO tb_classes(habilidade) VALUES ("Guerreiro");
INSERT INTO tb_classes(habilidade) VALUES ("Mago");
INSERT INTO tb_classes(habilidade) VALUES ("Feiticeiro");
INSERT INTO tb_classes(habilidade) VALUES ("Atirador");

CREATE TABLE tb_personagens(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    descricao VARCHAR(255),
    ataque INT,
    defesa INT,
    PRIMARY KEY (id)
);

ALTER TABLE tb_personagens ADD habilidadeId BIGINT;

INSERT INTO tb_personagens(nome, descricao, ataque, defesa)
VALUES ("Thrael", "Roupa vermelha", 5000, 2000);

INSERT INTO tb_personagens(nome, descricao, ataque, defesa)
VALUES ("Adric", "Roupa azul", 1000, 5000);

INSERT INTO tb_personagens(nome, descricao, ataque, defesa)
VALUES ("Oriseus", "Roupa verde", 4000, 4000);

INSERT INTO tb_personagens(nome, descricao, ataque, defesa)
VALUES ("Hardalis", "Roupa amarela", 2000, 6000);

INSERT INTO tb_personagens(nome, descricao, ataque, defesa)
VALUES ("Shandra", "Roupa branca", 7500, 1500);

INSERT INTO tb_personagens(nome, descricao, ataque, defesa)
VALUES ("Artorius", "Roupa preta", 1000, 3000);

INSERT INTO tb_personagens(nome, descricao, ataque, defesa)
VALUES ("Bolthorn", "Roupa laranja", 2000, 2000);

INSERT INTO tb_personagens(nome, descricao, ataque, defesa)
VALUES ("Franmar", "Roupa rosa", 7000, 3000);

-- Relacionando chaves entre bancos
ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_habilidade
FOREIGN KEY (habilidadeId) REFERENCES tb_classes (id);

-- Atualizando dados das tabelas
UPDATE tb_personagens SET habilidadeId = 1 WHERE id = 1;
UPDATE tb_personagens SET habilidadeId = 2 WHERE id = 2;
UPDATE tb_personagens SET habilidadeId = 3 WHERE id = 3;
UPDATE tb_personagens SET habilidadeId = 4 WHERE id = 4;
UPDATE tb_personagens SET habilidadeId = 5 WHERE id = 5;
UPDATE tb_personagens SET habilidadeId = 1 WHERE id = 6;
UPDATE tb_personagens SET habilidadeId = 2 WHERE id = 7;
UPDATE tb_personagens SET habilidadeId = 3 WHERE id = 8;

-- Ataque maior que 2000
select * from tb_personagens where ataque > 2000;

-- Defesa entre 1000 e 2000
SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

-- Select com nome de personagem com letra C
SELECT * FROM tb_personagens WHERE nome LIKE '%c%';

-- Inner join
SELECT nome, descricao, ataque, defesa, tb_classes.habilidade
FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.habilidadeId = tb_classes.id;

SELECT nome, descricao, ataque, defesa, tb_classes.habilidade
FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.habilidadeId = tb_classes.id
WHERE tb_classes.habilidade = 'Mago';

#SELECT * FROM tb_personagens;

#SELECT * FROM tb_classes;


