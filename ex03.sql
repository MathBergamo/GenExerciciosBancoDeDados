CREATE DATABASE escola;
USE escola;

CREATE TABLE estudantes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255),
    idade INT,
    genero VARCHAR(20),
    nota FLOAT,
    email VARCHAR(255)
);

INSERT INTO estudantes(nome, idade, genero, nota, email) VALUE ('Ana Silva', 18, 'Feminino', 8.5, 'ana@example.com');
INSERT INTO estudantes(nome, idade, genero, nota, email) VALUE ('João Santos', 20, 'Masculino', 6.3, 'joao@example.com');
INSERT INTO estudantes(nome, idade, genero, nota, email) VALUE ('Maria Oliveira', 19, 'Feminino', 9.2, 'maria@example.com');
INSERT INTO estudantes(nome, idade, genero, nota, email) VALUE ('Pedro Costa', 21, 'Masculino', 7.8, 'pedro@example.com');
INSERT INTO estudantes(nome, idade, genero, nota, email) VALUE ('Mariana Rodrigues', 22, 'Feminino', 5.9, 'mariana@example.com');
INSERT INTO estudantes(nome, idade, genero, nota, email) VALUE ('Lucas Almeida', 20, 'Masculino', 8.7, 'lucas@example.com');
INSERT INTO estudantes(nome, idade, genero, nota, email) VALUE ('Carla Souza', 18, 'Feminino', 6.1, 'carla@example.com');
INSERT INTO estudantes(nome, idade, genero, nota, email) VALUE ('Rafael Pereira', 19, 'Masculino', 8.9, 'rafael@example.com');

SELECT * FROM estudantes WHERE nota > 7.0;

SELECT * FROM estudantes WHERE nota < 7.0;

UPDATE estudantes SET nota = 7.5 WHERE id = 2;