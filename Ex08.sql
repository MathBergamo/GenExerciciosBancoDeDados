CREATE DATABASE db_construindo_vidas;
USE db_construindo_vidas;

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

INSERT INTO tb_categorias (tipo, tamanho) VALUES ("Materiais de Construção", "Grande");
INSERT INTO tb_categorias (tipo, tamanho) VALUES ("Ferramentas", "Grande");
INSERT INTO tb_categorias (tipo, tamanho) VALUES ("Peças e Acessórios", "Pequena");
INSERT INTO tb_categorias (tipo, tamanho) VALUES ("Equipamentos de Segurança", "Pequena");

INSERT INTO tb_produtos (nome, preco, quantidade, categorias_id) VALUES ("Cimento Portland", 15.90, 100, 1);
INSERT INTO tb_produtos (nome, preco, quantidade, categorias_id) VALUES ("Furadeira de Impacto", 120.75, 20, 2);
INSERT INTO tb_produtos (nome, preco, quantidade, categorias_id) VALUES ("Parafuso Sextavado 5/16", 0.50, 500, 3);
INSERT INTO tb_produtos (nome, preco, quantidade, categorias_id) VALUES ("Capacete de Segurança", 20.25, 50, 4);
INSERT INTO tb_produtos (nome, preco, quantidade, categorias_id) VALUES ("Tijolo Cerâmico", 1.49, 800, 1);
INSERT INTO tb_produtos (nome, preco, quantidade, categorias_id) VALUES ("Martelo de Carpinteiro", 15.0, 30, 2);
INSERT INTO tb_produtos (nome, preco, quantidade, categorias_id) VALUES ("Porca M6", 0.25, 1000, 3);
INSERT INTO tb_produtos (nome, preco, quantidade, categorias_id) VALUES ("Óculos de Proteção", 10.99, 70, 4);

SELECT * FROM tb_produtos WHERE preco > 100;
SELECT * FROM tb_produtos WHERE preco BETWEEN 70 AND 150;
SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT tb_produtos.id, nome, preco, quantidade, tipo, tamanho
FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categorias_id = tb_categorias.id;

SELECT tb_produtos.id, nome, preco, quantidade, tipo, tamanho
FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categorias_id = tb_categorias.id WHERE tb_categorias.id = 1;