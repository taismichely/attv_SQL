# ATIVIDADE 06

CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    linguagem VARCHAR(255) NOT NULL
);

INSERT INTO tb_categorias(linguagem) VALUES ("Java");
INSERT INTO tb_categorias(linguagem) VALUES ("Javascript");
INSERT INTO tb_categorias(linguagem) VALUES ("Python");
INSERT INTO tb_categorias(linguagem) VALUES ("Ruby");
INSERT INTO tb_categorias(linguagem) VALUES ("C++");

CREATE TABLE tb_cursos(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    descricao VARCHAR(255),
    valor DECIMAL(6,2),
    certificado VARCHAR(255),
    PRIMARY KEY (id)
);

ALTER TABLE tb_cursos ADD categoriasid BIGINT;

INSERT INTO tb_cursos(nome, descricao, valor, certificado)
VALUES ("Javascript básico", "Conceitos básicos", 300.00, "Não");

INSERT INTO tb_cursos(nome, descricao, valor, certificado)
VALUES ("Java com POO", "POO", 500.00, "Sim");

INSERT INTO tb_cursos(nome, descricao, valor, certificado)
VALUES ("Ruby completo", "Conceitos completos", 500.00, "Sim");

INSERT INTO tb_cursos(nome, descricao, valor, certificado)
VALUES ("Python avançado", "Criação de projetos", 600.00, "Não");

INSERT INTO tb_cursos(nome, descricao, valor, certificado)
VALUES ("C++ coom projetos", "Projetos para portifolio", 600.00, "Sim");

INSERT INTO tb_cursos(nome, descricao, valor, certificado)
VALUES ("Javascript completo", "Base bem estruturada", 500.00, "Sim");

INSERT INTO tb_cursos(nome, descricao, valor, certificado)
VALUES ("Python com conceitos aplicados", "Aplicações", 700.00, "Sim");

INSERT INTO tb_cursos(nome, descricao, valor, certificado)
VALUES ("Java e MVC", "Arquitetura MVC ", 800.00, "Sim");

-- Relacionando chaves entre bancos
ALTER TABLE tb_cursos ADD CONSTRAINT fk_cursos_linguagem
FOREIGN KEY (categoriasid) REFERENCES tb_categorias (id);

UPDATE tb_cursos SET categoriasid = 2 WHERE id = 1;
UPDATE tb_cursos SET categoriasid = 1 WHERE id = 2;
UPDATE tb_cursos SET categoriasid = 4 WHERE id = 3;
UPDATE tb_cursos SET categoriasid = 3 WHERE id = 4;
UPDATE tb_cursos SET categoriasid = 5 WHERE id = 5;
UPDATE tb_cursos SET categoriasid = 2 WHERE id = 6;
UPDATE tb_cursos SET categoriasid = 3 WHERE id = 7;
UPDATE tb_cursos SET categoriasid = 1 WHERE id = 8;

SELECT * FROM tb_categorias;
SELECT * FROM tb_cursos;

# Valores de cursos maiores que 500
SELECT * FROM tb_cursos WHERE valor > 500;

# Valores de cursos entre 600 e 1000 reais
SELECT * FROM tb_cursos WHERE valor BETWEEN 600 AND 1000;

# Nomes de cursos com letra J
SELECT * FROM tb_cursos WHERE nome LIKE '%j%';

# INNER JOIN
SELECT nome, descricao, valor, certificado, tb_categorias.linguagem
FROM tb_cursos INNER JOIN tb_categorias 
ON tb_cursos.categoriasid = tb_categorias.id;

# INNER JOIN com categoria
SELECT nome, descricao, valor, certificado, tb_categorias.linguagem
FROM tb_cursos INNER JOIN tb_categorias 
ON tb_cursos.categoriasid = tb_categorias.id
WHERE tb_categorias.linguagem = 'Java';