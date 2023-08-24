CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
    tipo VARCHAR(255) NOT NULL,
    tamanho VARCHAR(255) NOT NULL
);

CREATE TABLE tb_produtos (
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
	FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id),
    nome VARCHAR(255) NOT NULL,
    preco FLOAT NOT NULL,
    quantidade INT NOT NULL,
	categorias_id BIGINT
);

INSERT INTO tb_categorias (tipo, tamanho) VALUES ("Medicamentos", "Grande");
INSERT INTO tb_categorias (tipo, tamanho) VALUES ("Cuidados Pessoais", "Grande");
INSERT INTO tb_categorias (tipo, tamanho) VALUES ("Primeiros Socorros", "Pequena");
INSERT INTO tb_categorias (tipo, tamanho) VALUES ("Higiene Bucal", "Pequena");

INSERT INTO tb_produtos (nome, preco, quantidade, categorias_id) VALUES ("Analgésico Gripal", 10.99, 20, 1);
INSERT INTO tb_produtos (nome, preco, quantidade, categorias_id) VALUES ("Kit Primeiros Socorros", 25.50, 10, 3);
INSERT INTO tb_produtos (nome, preco, quantidade, categorias_id) VALUES ("Vitamix Plus", 60.75, 30, 2);
INSERT INTO tb_produtos (nome, preco, quantidade, categorias_id) VALUES ("Hidratante Profundo", 15.25, 15, 2);
INSERT INTO tb_produtos (nome, preco, quantidade, categorias_id) VALUES ("Limpador Bucal Total", 8.99, 50, 4);
INSERT INTO tb_produtos (nome, preco, quantidade, categorias_id) VALUES ("Curativo Estéril Multiuso", 5.75, 100, 3);
INSERT INTO tb_produtos (nome, preco, quantidade, categorias_id) VALUES ("Protetor Solar SPF 50", 20.50, 25, 2);
INSERT INTO tb_produtos (nome, preco, quantidade, categorias_id) VALUES ("DorRelief Forte", 12.99, 50, 1);

SELECT * FROM tb_produtos WHERE preco > 50;
SELECT * FROM tb_produtos WHERE preco BETWEEN 5 AND 60;
SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT tb_produtos.id, nome, preco, quantidade, tipo, tamanho
FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categorias_id = tb_categorias.id;

SELECT tb_produtos.id, nome, preco, quantidade, tipo, tamanho
FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categorias_id = tb_categorias.id WHERE tb_categorias.id = 1;