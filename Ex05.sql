CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
    tipo VARCHAR(255) NOT NULL,
    tamanho VARCHAR(255) NOT NULL
);

CREATE TABLE tb_pizzas(
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
	FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id),
    nome VARCHAR(255) NOT NULL,
    preco FLOAT NOT NULL,
    sabor VARCHAR(255) NOT NULL,
    quantidade INT NOT NULL,
	categorias_id BIGINT
);

INSERT INTO tb_categorias (tipo, tamanho) VALUES ("Salgada","Grande");
INSERT INTO tb_categorias (tipo, tamanho) VALUES ("Doce","Grande");
INSERT INTO tb_categorias (tipo, tamanho) VALUES ("Salgada","Pequena");
INSERT INTO tb_categorias (tipo, tamanho) VALUES ("Doce","Pequena");
INSERT INTO tb_categorias (tipo, tamanho) VALUES ("Especial","Grande");

INSERT INTO tb_pizzas (nome, preco, sabor, quantidade, categorias_id) VALUES ("Da casa", 50, "Marguerita", 2, 1);
INSERT INTO tb_pizzas (nome, preco, sabor, quantidade, categorias_id) VALUES ("Pepperoni Suprema", 42.99, "Pepperoni e Queijo", 3, 1);
INSERT INTO tb_pizzas (nome, preco, sabor, quantidade, categorias_id) VALUES ("Veggie Delight", 30.50, "Vegetais Frescos", 2, 3);
INSERT INTO tb_pizzas (nome, preco, sabor, quantidade, categorias_id) VALUES ("Especial do Chef", 55.75, "Diversos Ingredientes Especiais", 1, 5);
INSERT INTO tb_pizzas (nome, preco, sabor, quantidade, categorias_id) VALUES ("Frango com Catupiry", 43.25, "Frango Desfiado e Catupiry", 4, 1);
INSERT INTO tb_pizzas (nome, preco, sabor, quantidade, categorias_id) VALUES ("Morango Chocolate Supreme", 60.75, "Morango, Chocolate e Confeitos", 3, 2);
INSERT INTO tb_pizzas (nome, preco, sabor, quantidade, categorias_id) VALUES ("Banana Canela Delícia", 79.50, "Banana, Canela e Cobertura Doce", 4, 2);
INSERT INTO tb_pizzas (nome, preco, sabor, quantidade, categorias_id) VALUES ("Chocolate Lover's", 48.99, "Chocolate, Marshmallows e Castanhas", 3, 4);

SELECT * FROM tb_pizzas WHERE preco > 45;
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;
SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";

SELECT tb_pizzas.id, nome, preco, sabor, quantidade, tipo, tamanho
FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categorias_id = tb_categorias.id;

SELECT tb_pizzas.id, nome, preco, sabor, quantidade, tipo, tamanho
FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categorias_id = tb_categorias.id WHERE tb_categorias.id = 1;