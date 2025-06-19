# ATIVIDADE 02

CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(255) NOT NULL
);

INSERT INTO tb_categorias(tipo) VALUES ("Salgado");
INSERT INTO tb_categorias(tipo) VALUES ("Doce");
INSERT INTO tb_categorias(tipo) VALUES ("Vegetal");
INSERT INTO tb_categorias(tipo) VALUES ("Inovador");
INSERT INTO tb_categorias(tipo) VALUES ("Premmium");

CREATE TABLE tb_pizzas(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    descricao VARCHAR(255),
    valor DECIMAL(6,2),
    borda VARCHAR(255),
    PRIMARY KEY (id)
);

ALTER TABLE tb_pizzas ADD categoriasid BIGINT;

INSERT INTO tb_pizzas(nome, descricao, valor, borda)
VALUES ("Mussarela", "Queijo", 60.00, "Sim");

INSERT INTO tb_pizzas(nome, descricao, valor, borda)
VALUES ("Calabresa", "Acebolado", 60.00, "Sim");

INSERT INTO tb_pizzas(nome, descricao, valor, borda)
VALUES ("Brigadeiro", "Chocolate e morangos", 90.00, "Não");

INSERT INTO tb_pizzas(nome, descricao, valor, borda)
VALUES ("Romeu e Julieta", "Queijo minas e goiabada", 90.00, "Não");

INSERT INTO tb_pizzas(nome, descricao, valor, borda)
VALUES ("Nutella com frutas", "Nutella com morangos", 110.00, "Não");

INSERT INTO tb_pizzas(nome, descricao, valor, borda)
VALUES ("Prestigio", "Chocolate", 120.00, "Não");

INSERT INTO tb_pizzas(nome, descricao, valor, borda)
VALUES ("Milho verde", "Milho verde e amarelo", 85.00, "Sim");

INSERT INTO tb_pizzas(nome, descricao, valor, borda)
VALUES ("Brócolis com Catupiry", "Catupiry", 80.00, "Sim");

-- Relacionando chaves entre bancos
ALTER TABLE tb_pizzas ADD CONSTRAINT fk_pizzas_tipo
FOREIGN KEY (categoriasid) REFERENCES tb_categorias (id);


UPDATE tb_pizzas SET categoriasid = 1 WHERE id = 1;
UPDATE tb_pizzas SET categoriasid = 1 WHERE id = 2;
UPDATE tb_pizzas SET categoriasid = 2 WHERE id = 3;
UPDATE tb_pizzas SET categoriasid = 2 WHERE id = 4;
UPDATE tb_pizzas SET categoriasid = 5 WHERE id = 5;
UPDATE tb_pizzas SET categoriasid = 4 WHERE id = 6;
UPDATE tb_pizzas SET categoriasid = 3 WHERE id = 7;
UPDATE tb_pizzas SET categoriasid = 3 WHERE id = 8;

# SELECT * FROM tb_pizzas;

# Valores de pizzas maiores que 45 reais
SELECT * FROM tb_pizzas WHERE valor > 45.00;

# Valores de pizzas entre 50 e 100 reais
SELECT * FROM tb_pizzas WHERE valor BETWEEN 50 AND 100;

# Nomes de pizzas que tenham a letra M
SELECT * FROM tb_pizzas WHERE nome LIKE '%m%';

# INNER JOIN
SELECT nome, descricao, valor, borda, tb_categorias.tipo
FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.categoriasid = tb_categorias.id;

# INNER JOIN com categoria
SELECT nome, descricao, valor, borda, tb_categorias.tipo
FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.categoriasid = tb_categorias.id
WHERE tb_categorias.tipo = 'Doce';
