CREATE DATABASE ecommerce;
USE ecommerce;

CREATE TABLE produtos (
    id bigint primary key auto_increment,
    nome VARCHAR(255),
    descricao VARCHAR(255),
    cor VARCHAR(255),
    categoria VARCHAR(255),
    preco FLOAT,
    estoque INT
);

INSERT INTO produtos(nome, descricao, cor, categoria, preco, estoque) VALUES ('Produto A', 'Descrição do Produto A', 'Azul', 'Eletrônicos', 800.00, 10);
INSERT INTO produtos(nome, descricao, cor, categoria, preco, estoque) VALUES ('Produto B', 'Descrição do Produto B', 'Vermelho', 'Roupas', 250.00, 15);
INSERT INTO produtos(nome, descricao, cor, categoria, preco, estoque) VALUES ('Produto C', 'Descrição do Produto C', 'Verde', 'Acessórios', 120.00, 30);
INSERT INTO produtos(nome, descricao, cor, categoria, preco, estoque) VALUES ('Produto D', 'Descrição do Produto D', 'Preto', 'Eletrônicos', 600.00, 5);

SELECT * FROM produtos WHERE preco > 500;
SELECT * FROM produtos WHERE preco < 500;

UPDATE produtos SET estoque = 3 WHERE id = 2;