-- ATIVIDADE 01
CREATE DATABASE db_recursos_humanos;
USE db_recursos_humanos;

CREATE TABLE tb_colaboradores (
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    sobrenome VARCHAR(255) NOT NULL,
	cargo VARCHAR(225) NOT NULL,
    salario DECIMAL (10,2) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores(nome, sobrenome, cargo, salario) VALUE
("Jorge", "Menezes", "Auxilixar", 1800);

INSERT INTO tb_colaboradores(nome, sobrenome, cargo, salario) VALUE
("Lucia", "Camargo", "Contadora", 3000);

INSERT INTO tb_colaboradores(nome, sobrenome, cargo, salario) VALUE
("Renan", "Silva", "Auxiliar", 2800);

INSERT INTO tb_colaboradores(nome, sobrenome, cargo, salario) VALUE
("Davi", "Cleber", "Secretario", 3100);

INSERT INTO tb_colaboradores(nome, sobrenome, cargo, salario) VALUE
("Vini", "Borges", "Contador", 3500);

SELECT * FROM tb_colaboradores WHERE salario > 2000;
SELECT * FROM tb_colaboradores WHERE salario < 2000;