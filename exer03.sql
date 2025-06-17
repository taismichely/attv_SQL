CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes(
	id BIGINT AUTO_INCREMENT,
    idade INT,
    nome VARCHAR(255),
    materia VARCHAR(255),
    nota DECiMAL(6,2),
    PRIMARY KEY (id)
);

INSERT INTO tb_estudantes(idade, nome, materia, nota)
VALUES(13, "Jorge", "Geografia", 9.5);

INSERT INTO tb_estudantes(idade, nome, materia, nota)
VALUES(13, "Maria", "Geografia", 7.2);

INSERT INTO tb_estudantes(idade, nome, materia, nota)
VALUES(12, "Pedro", "Geografia", 6);

INSERT INTO tb_estudantes(idade, nome, materia, nota)
VALUES(13, "Giovanna", "Matematica", 9.5);

INSERT INTO tb_estudantes(idade, nome, materia, nota)
VALUES(13, "Gisele", "Geografia", 5);

INSERT INTO tb_estudantes(idade, nome, materia, nota)
VALUES(13, "Lucas", "Portugues", 9);

INSERT INTO tb_estudantes(idade, nome, materia, nota)
VALUES(13, "Mariana", "Filosofia", 7);

INSERT INTO tb_estudantes(idade, nome, materia, nota)
VALUES(13, "Gabriel", "Artes", 10);

SELECT * FROM tb_estudantes WHERE nota > 7;
SELECT * FROM tb_estudantes WHERE nota < 7;

UPDATE tb_estudantes SET nota = 8 WHERE id = 3;

SELECT * FROM tb_estudantes;