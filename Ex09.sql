CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias(
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    tipo VARCHAR(255) NOT NULL,
    tamanho VARCHAR(255) NOT NULL
);

CREATE TABLE tb_cursos (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    categorias_id BIGINT,
    nome VARCHAR(255) NOT NULL,
    preco FLOAT NOT NULL,
    quantidade INT NOT NULL,
    FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (tipo, tamanho) VALUES ("Tecnologia", "Grande");
INSERT INTO tb_categorias (tipo, tamanho) VALUES ("Negócios", "Grande");
INSERT INTO tb_categorias (tipo, tamanho) VALUES ("Arte e Design", "Pequena");
INSERT INTO tb_categorias (tipo, tamanho) VALUES ("Saúde e Bem-estar", "Pequena");

INSERT INTO tb_cursos (nome, preco, quantidade, categorias_id) VALUES ("Introdução à Programação", 550.90, 100, 1);
INSERT INTO tb_cursos (nome, preco, quantidade, categorias_id) VALUES ("Gestão Financeira", 120.75, 20, 2);
INSERT INTO tb_cursos (nome, preco, quantidade, categorias_id) VALUES ("Design Gráfico Fundamentos", 750.0, 500, 3);
INSERT INTO tb_cursos (nome, preco, quantidade, categorias_id) VALUES ("Yoga e Meditação", 330.25, 50, 4);
INSERT INTO tb_cursos (nome, preco, quantidade, categorias_id) VALUES ("Desenvolvimento Web Avançado", 250.99, 80, 1);
INSERT INTO tb_cursos (nome, preco, quantidade, categorias_id) VALUES ("Empreendedorismo Digital", 580.0, 30, 2);
INSERT INTO tb_cursos (nome, preco, quantidade, categorias_id) VALUES ("Pintura a Óleo", 75.25, 340, 3);
INSERT INTO tb_cursos (nome, preco, quantidade, categorias_id) VALUES ("Mindfulness e Redução de Estresse", 245.99, 70, 4);

SELECT * FROM tb_cursos WHERE preco > 100;
SELECT * FROM tb_cursos WHERE preco BETWEEN 600 AND 1000;
SELECT * FROM tb_cursos WHERE nome LIKE "%j%";

SELECT tb_cursos.id, nome, preco, quantidade, tipo, tamanho
FROM tb_cursos INNER JOIN tb_categorias ON tb_cursos.categorias_id = tb_categorias.id;

SELECT tb_cursos.id, nome, preco, quantidade, tipo, tamanho
FROM tb_cursos INNER JOIN tb_categorias ON tb_cursos.categorias_id = tb_categorias.id WHERE tb_categorias.id = 1;