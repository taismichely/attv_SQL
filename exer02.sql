-- ATIVIDADE 02 BANCO DE DADOS DE UM TIPO DE E-COMMERCE
CREATE DATABASE db_mercado;
USE db_mercado;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255),
    valor DECIMAL(6,2) NOT NULL,
    quantidade INT,
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos(nome, descricao, valor, quantidade)
VALUES("Farinha de Trigo", "grão fino", 7, 50);

INSERT INTO tb_produtos(nome, descricao, valor, quantidade)
VALUES("Açucar", "Refinado", 8, 42);

INSERT INTO tb_produtos(nome, descricao, valor, quantidade)
VALUES("Macarrão", "parafuso", 6, 20);

INSERT INTO tb_produtos(nome, descricao, valor, quantidade)
VALUES("Arroz", "Tipo 1", 27, 15);

INSERT INTO tb_produtos(nome, descricao, valor, quantidade)
VALUES("Oléo", "Vegetal", 9, 30);

INSERT INTO tb_produtos(nome, descricao, valor, quantidade)
VALUES("Café", "Extraforte", 5, 46);

INSERT INTO tb_produtos(nome, descricao, valor, quantidade)
VALUES("Papel Higienico", "4 rolos", 10, 15);

INSERT INTO tb_produtos(nome, descricao, valor, quantidade)
VALUES("Bolacha", "Sabor morango", 4, 35);

SELECT * FROM tb_produtos WHERE valor > 500;
SELECT * FROM tb_produtos WHERE valor < 500;

UPDATE tb_produtos SET valor = 5 WHERE id = 1;

-- Update
select * from tb_produtos

