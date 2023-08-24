CREATE DATABASE cidade_dos_vegetais;
USE cidade_dos_vegetais;

CREATE TABLE tb_categorias(
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    tipo VARCHAR(255) NOT NULL,
    tamanho VARCHAR(255) NOT NULL
);

CREATE TABLE tb_produtos (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    categorias_id BIGINT,
    nome VARCHAR(255) NOT NULL,
    preco FLOAT NOT NULL,
    quantidade INT NOT NULL,
    FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (tipo, tamanho) VALUES ("Verduras", "Grande");
INSERT INTO tb_categorias (tipo, tamanho) VALUES ("Frutas", "Grande");
INSERT INTO tb_categorias (tipo, tamanho) VALUES ("Legumes", "Pequena");
INSERT INTO tb_categorias (tipo, tamanho) VALUES ("Especiais", "Pequena");

INSERT INTO tb_produtos (nome, preco, quantidade, categorias_id) VALUES ("Alface Crespa", 59.90, 50, 1);
INSERT INTO tb_produtos (nome, preco, quantidade, categorias_id) VALUES ("Maçã Gala", 20.75, 30, 2);
INSERT INTO tb_produtos (nome, preco, quantidade, categorias_id) VALUES ("Cenoura", 30.0, 75, 3);
INSERT INTO tb_produtos (nome, preco, quantidade, categorias_id) VALUES ("Melancia", 60.25, 5, 2);
INSERT INTO tb_produtos (nome, preco, quantidade, categorias_id) VALUES ("Tomate", 15.49, 40, 1);
INSERT INTO tb_produtos (nome, preco, quantidade, categorias_id) VALUES ("Abobrinha", 80.0, 20, 3);
INSERT INTO tb_produtos (nome, preco, quantidade, categorias_id) VALUES ("Uva Thompson", 24.99, 15, 2);
INSERT INTO tb_produtos (nome, preco, quantidade, categorias_id) VALUES ("Brócolis", 32.75, 30, 1);

SELECT * FROM tb_produtos WHERE preco > 50;
SELECT * FROM tb_produtos WHERE preco BETWEEN 50 AND 150;
SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT tb_produtos.id, nome, preco, quantidade, tipo, tamanho
FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categorias_id = tb_categorias.id;

SELECT tb_produtos.id, nome, preco, quantidade, tipo, tamanho
FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categorias_id = tb_categorias.id WHERE tb_categorias.id = 1;